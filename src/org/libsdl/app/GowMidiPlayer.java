package org.libsdl.app;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class GowMidiPlayer {
    private static final String TAG = "GowMidi";

    // Cache des fichiers extraits et des MediaPlayer pré-initialisés (préchauffés au démarrage)
    private static final HashMap<Integer, File> sFiles = new HashMap<>();
    private static final HashMap<Integer, MediaPlayer> sPlayers = new HashMap<>();

    private static MediaPlayer sCurrentPlayer = null;
    private static int sCurrentId = -1;

    // État atomique/volatile lu sans blocage ni IPC Binder par le thread du jeu (Player::getState)
    private static volatile int sPlayingId = -1;

    // Thread dédié en arrière-plan pour que les appels IPC Android MediaPlayer ne bloquent jamais le jeu
    private static final ExecutorService sAudioExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() {
        @Override
        public Thread newThread(Runnable r) {
            Thread t = new Thread(r, "GowAudioThread");
            t.setPriority(Thread.NORM_PRIORITY);
            t.setDaemon(true);
            return t;
        }
    });

    private static MediaPlayer createAndPreparePlayer(final int id, File f) {
        if (f == null || !f.exists()) return null;
        try {
            final MediaPlayer mp = new MediaPlayer();
            try (FileInputStream fis = new FileInputStream(f)) {
                mp.setDataSource(fis.getFD());
                mp.prepare();
            }
            mp.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override
                public void onCompletion(MediaPlayer player) {
                    if (sPlayingId == id) {
                        sPlayingId = -1;
                    }
                    sAudioExecutor.execute(new Runnable() {
                        @Override
                        public void run() {
                            if (sCurrentPlayer == player) {
                                sCurrentPlayer = null;
                                sCurrentId = -1;
                            }
                        }
                    });
                }
            });
            sPlayers.put(id, mp);
            return mp;
        } catch (Exception e) {
            Log.e(TAG, "createAndPreparePlayer failed for id=" + id, e);
            return null;
        }
    }

    /**
     * Appelé une seule fois par son au chargement (bootStep 4).
     * Écrit le fichier en cache si nécessaire et préchauffe (prepare) le MediaPlayer en tâche de fond.
     */
    public static void prefetch(final int id, final byte[] data, final boolean isMidi) {
        if (data == null || data.length == 0) return;
        sAudioExecutor.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    File f = sFiles.get(id);
                    if (f == null || !f.exists() || f.length() != data.length) {
                        Context ctx = SDLActivity.getContext();
                        File dir = (ctx != null) ? ctx.getCacheDir() : new File("/data/local/tmp");
                        String ext = isMidi ? ".mid" : ".wav";
                        f = new File(dir, "gow_snd_" + id + ext);
                        if (!f.exists() || f.length() != data.length) {
                            try (FileOutputStream fos = new FileOutputStream(f)) {
                                fos.write(data);
                            }
                        }
                        sFiles.put(id, f);
                    }
                    if (!sPlayers.containsKey(id)) {
                        createAndPreparePlayer(id, f);
                    }
                } catch (Exception e) {
                    Log.e(TAG, "prefetch failed for id=" + id, e);
                }
            }
        });
    }

    /**
     * Déclenche la lecture immédiatement sans bloquer le thread C++ du jeu et sans réallouer de MediaPlayer.
     */
    public static void start(final int id, final int loops) {
        sPlayingId = id;
        sAudioExecutor.execute(new Runnable() {
            @Override
            public void run() {
                // Met en pause le lecteur précédent sans le détruire (reste prêt dans sPlayers)
                if (sCurrentPlayer != null && sCurrentId != id) {
                    try {
                        if (sCurrentPlayer.isPlaying()) {
                            sCurrentPlayer.pause();
                        }
                        sCurrentPlayer.seekTo(0);
                    } catch (Exception ignored) {}
                    sCurrentPlayer = null;
                    sCurrentId = -1;
                }

                MediaPlayer mp = sPlayers.get(id);
                if (mp == null) {
                    mp = createAndPreparePlayer(id, sFiles.get(id));
                }
                if (mp == null) {
                    if (sPlayingId == id) sPlayingId = -1;
                    return;
                }

                try {
                    if (mp.isPlaying()) {
                        mp.pause();
                    }
                    mp.setLooping(loops < 0);
                    mp.seekTo(0);
                    mp.start();
                    sCurrentPlayer = mp;
                    sCurrentId = id;
                } catch (Exception e) {
                    // En cas d'état invalide du MediaPlayer, on le recrée proprement en arrière-plan
                    try {
                        mp.release();
                    } catch (Exception ignored) {}
                    sPlayers.remove(id);
                    MediaPlayer fresh = createAndPreparePlayer(id, sFiles.get(id));
                    if (fresh != null) {
                        try {
                            fresh.setLooping(loops < 0);
                            fresh.start();
                            sCurrentPlayer = fresh;
                            sCurrentId = id;
                        } catch (Exception ex) {
                            if (sPlayingId == id) sPlayingId = -1;
                        }
                    } else if (sPlayingId == id) {
                        sPlayingId = -1;
                    }
                }
            }
        });
    }

    public static void stop(final int id) {
        if (sPlayingId == id) {
            sPlayingId = -1;
        }
        sAudioExecutor.execute(new Runnable() {
            @Override
            public void run() {
                if (sCurrentId == id && sCurrentPlayer != null) {
                    try {
                        if (sCurrentPlayer.isPlaying()) {
                            sCurrentPlayer.pause();
                        }
                        sCurrentPlayer.seekTo(0);
                    } catch (Exception ignored) {}
                    sCurrentPlayer = null;
                    sCurrentId = -1;
                }
            }
        });
    }

    public static boolean isPlaying(int id) {
        return sPlayingId == id;
    }

    // =========================================================================
    // Gestion des permissions de stockage (GOW-Betra) et informations système
    // =========================================================================

    public static String getExternalStorageRoot() {
        try {
            File ext = Environment.getExternalStorageDirectory();
            if (ext != null) {
                String p = ext.getAbsolutePath();
                if (p != null && !p.isEmpty()) return p;
            }
        } catch (Throwable ignored) {}
        return "/storage/emulated/0";
    }

    public static boolean hasStoragePermission() {
        return true;
    }

    public static String getPermissionStateDescription() {
        return "GRANTED";
    }

    public static String getDeviceHeaderInfo() {
        return "God of War: Betrayal";
    }

    public static void openStoragePermissionSettings() {
        // Izin file dimatikan agar tidak mengganggu pengguna
    }
}
