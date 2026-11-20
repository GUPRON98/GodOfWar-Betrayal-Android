package org.libsdl.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class GowCheatManager {

    private static final String SAVE_PATH = "/sdcard/GOW-Betra/saves/rec2.bin";

    public static byte[] readSave() {
        try {
            File f = new File(SAVE_PATH);
            if (!f.exists() || f.length() < 76) {
                f.getParentFile().mkdirs();
                byte[] init = new byte[76];
                writeIntBE(init, 8, 3);  // bladesComboLength
                writeIntBE(init, 12, 2); // magicAComboLength
                FileOutputStream fos = new FileOutputStream(f);
                fos.write(init);
                fos.close();
                return init;
            }
            byte[] data = new byte[(int) f.length()];
            FileInputStream fis = new FileInputStream(f);
            fis.read(data);
            fis.close();
            return data;
        } catch (Throwable t) {
            t.printStackTrace();
            return new byte[76];
        }
    }

    public static boolean writeSave(byte[] data) {
        try {
            File f = new File(SAVE_PATH);
            f.getParentFile().mkdirs();
            FileOutputStream fos = new FileOutputStream(f);
            fos.write(data);
            fos.flush();
            fos.close();
            return true;
        } catch (Throwable t) {
            t.printStackTrace();
            return false;
        }
    }

    public static int readIntBE(byte[] b, int offset) {
        if (offset + 4 > b.length) return 0;
        return ((b[offset] & 0xFF) << 24) |
               ((b[offset + 1] & 0xFF) << 16) |
               ((b[offset + 2] & 0xFF) << 8) |
               (b[offset + 3] & 0xFF);
    }

    public static void writeIntBE(byte[] b, int offset, int val) {
        if (offset + 4 > b.length) return;
        b[offset] = (byte) ((val >> 24) & 0xFF);
        b[offset + 1] = (byte) ((val >> 16) & 0xFF);
        b[offset + 2] = (byte) ((val >> 8) & 0xFF);
        b[offset + 3] = (byte) (val & 0xFF);
    }

    public static void showCheatDialog(final Context context) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                try {
                    final byte[] save = readSave();
                    final int currentOrbs = readIntBE(save, 32);
                    final int currentBlades = readIntBE(save, 0);
                    final int currentLevel = readIntBE(save, 52);

                    AlertDialog.Builder builder = new AlertDialog.Builder(context, AlertDialog.THEME_HOLO_DARK);

                    // Root container
                    LinearLayout root = new LinearLayout(context);
                    root.setOrientation(LinearLayout.VERTICAL);
                    root.setPadding(35, 25, 35, 25);
                    root.setBackgroundColor(Color.parseColor("#120D0A")); // Dark Obsidian Greek Bronze

                    // Title
                    TextView title = new TextView(context);
                    title.setText("⚔️ GOD OF WAR: BETRAYAL\n⚡ CHEAT & CURRENCY ENGINE ⚡");
                    title.setTextColor(Color.parseColor("#FFD700")); // Spartan Gold
                    title.setTextSize(17);
                    title.setTypeface(null, Typeface.BOLD);
                    title.setGravity(Gravity.CENTER);
                    title.setPadding(0, 0, 0, 20);
                    root.addView(title);

                    ScrollView scroll = new ScrollView(context);
                    LinearLayout content = new LinearLayout(context);
                    content.setOrientation(LinearLayout.VERTICAL);

                    // Currency Section
                    TextView orbsLabel = new TextView(context);
                    orbsLabel.setText("💰 RED ORBS (CURRENCY):");
                    orbsLabel.setTextColor(Color.parseColor("#FF4422")); // Blood Crimson
                    orbsLabel.setTextSize(14);
                    orbsLabel.setTypeface(null, Typeface.BOLD);
                    content.addView(orbsLabel);

                    final EditText orbsInput = new EditText(context);
                    orbsInput.setInputType(InputType.TYPE_CLASS_NUMBER);
                    orbsInput.setText(String.valueOf(currentOrbs));
                    orbsInput.setTextColor(Color.WHITE);
                    orbsInput.setTextSize(18);
                    orbsInput.setBackgroundColor(Color.parseColor("#261712"));
                    orbsInput.setPadding(20, 15, 20, 15);
                    content.addView(orbsInput);

                    // Quick Add Buttons Row
                    LinearLayout quickRow = new LinearLayout(context);
                    quickRow.setOrientation(LinearLayout.HORIZONTAL);
                    quickRow.setGravity(Gravity.CENTER);
                    quickRow.setPadding(0, 15, 0, 20);

                    final int[] quickVals = {5000, 20000, 50000, 999999};
                    final String[] quickNames = {"+5K", "+20K", "+50K", "MAX 999K"};

                    for (int i = 0; i < quickVals.length; i++) {
                        final int addVal = quickVals[i];
                        Button qb = new Button(context);
                        qb.setText(quickNames[i]);
                        qb.setTextSize(12);
                        qb.setTextColor(Color.parseColor("#FFD700"));
                        qb.setBackgroundColor(Color.parseColor("#3D1F17"));
                        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
                        lp.setMargins(5, 0, 5, 0);
                        qb.setLayoutParams(lp);
                        qb.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                int cur = 0;
                                try {
                                    cur = Integer.parseInt(orbsInput.getText().toString());
                                } catch (Throwable ignored) {}
                                if (addVal == 999999) {
                                    orbsInput.setText("999999");
                                } else {
                                    orbsInput.setText(String.valueOf(Math.min(999999, cur + addVal)));
                                }
                            }
                        });
                        quickRow.addView(qb);
                    }
                    content.addView(quickRow);

                    // Quick Cheats Section
                    TextView cheatsHeader = new TextView(context);
                    cheatsHeader.setText("⚡ FITUR CHEAT SPARTAN:");
                    cheatsHeader.setTextColor(Color.parseColor("#E2AE82"));
                    cheatsHeader.setTextSize(14);
                    cheatsHeader.setTypeface(null, Typeface.BOLD);
                    cheatsHeader.setPadding(0, 10, 0, 10);
                    content.addView(cheatsHeader);

                    // Helper for Action Buttons
                    String[] cheatTitles = {
                        "❤️ Max Health (Gorgon Eyes)",
                        "⚡ Max Magic (Phoenix Feathers)",
                        "⚔️ Max Blades & Combos (Lv. 3)",
                        "🐍 Max Medusa & Spells (Lv. 3)",
                        "🗺️ Unlock All 10 Stages",
                        "💀 Best Kill Count (9999)",
                        "🔥 AKTIFKAN SEMUA CHEAT (ALL-IN-ONE)"
                    };

                    for (int i = 0; i < cheatTitles.length; i++) {
                        final int cheatIndex = i;
                        Button cb = new Button(context);
                        cb.setText(cheatTitles[i]);
                        cb.setTextSize(13);
                        cb.setTextColor(i == 6 ? Color.parseColor("#FFD700") : Color.WHITE);
                        cb.setBackgroundColor(i == 6 ? Color.parseColor("#661408") : Color.parseColor("#261712"));
                        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                        clp.setMargins(0, 5, 0, 5);
                        cb.setLayoutParams(clp);

                        cb.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                switch (cheatIndex) {
                                    case 0: // Max Health
                                        writeIntBE(save, 24, 6); // healthChestsFound
                                        writeSave(save);
                                        Toast.makeText(context, "❤️ Max Health Diaktifkan!", Toast.LENGTH_SHORT).show();
                                        break;
                                    case 1: // Max Magic
                                        writeIntBE(save, 28, 6); // magicChestsFound
                                        writeSave(save);
                                        Toast.makeText(context, "⚡ Max Magic Diaktifkan!", Toast.LENGTH_SHORT).show();
                                        break;
                                    case 2: // Max Blades
                                        writeIntBE(save, 0, 3); // bladesLevel
                                        writeIntBE(save, 8, 5); // bladesComboLength
                                        writeSave(save);
                                        Toast.makeText(context, "⚔️ Blades of Chaos Max Level 3!", Toast.LENGTH_SHORT).show();
                                        break;
                                    case 3: // Max Spells
                                        writeIntBE(save, 4, 3);  // magicALevel
                                        writeIntBE(save, 12, 4); // magicAComboLength
                                        writeIntBE(save, 16, 3); // magicBLevel
                                        writeIntBE(save, 20, 3); // magicCLevel
                                        writeSave(save);
                                        Toast.makeText(context, "🐍 Medusa & All Spells Max!", Toast.LENGTH_SHORT).show();
                                        break;
                                    case 4: // Unlock Stages
                                        writeIntBE(save, 52, 9); // furthestLevel = 9 (Stage 1-10)
                                        writeSave(save);
                                        Toast.makeText(context, "🗺️ Semua Stage 1-10 Terbuka!", Toast.LENGTH_SHORT).show();
                                        break;
                                    case 5: // Kill Count
                                        writeIntBE(save, 68, 9999);
                                        writeSave(save);
                                        Toast.makeText(context, "💀 Kill Count 9999!", Toast.LENGTH_SHORT).show();
                                        break;
                                    case 6: // ALL-IN-ONE
                                        writeIntBE(save, 0, 3);
                                        writeIntBE(save, 4, 3);
                                        writeIntBE(save, 8, 5);
                                        writeIntBE(save, 12, 4);
                                        writeIntBE(save, 16, 3);
                                        writeIntBE(save, 20, 3);
                                        writeIntBE(save, 24, 6);
                                        writeIntBE(save, 28, 6);
                                        writeIntBE(save, 32, 999999);
                                        writeIntBE(save, 52, 9);
                                        writeIntBE(save, 56, 999999);
                                        writeIntBE(save, 68, 9999);
                                        orbsInput.setText("999999");
                                        writeSave(save);
                                        Toast.makeText(context, "🔥 SEMUA CHEAT BERHASIL DIAKTIFKAN!", Toast.LENGTH_LONG).show();
                                        break;
                                }
                            }
                        });
                        content.addView(cb);
                    }

                    scroll.addView(content);
                    root.addView(scroll);
                    builder.setView(root);

                    builder.setPositiveButton("💾 SIMPAN CURRENCY", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            try {
                                int val = Integer.parseInt(orbsInput.getText().toString());
                                writeIntBE(save, 32, val);
                                writeIntBE(save, 56, Math.max(readIntBE(save, 56), val));
                                writeSave(save);
                                Toast.makeText(context, "✅ Red Orbs Berhasil Disimpan: " + val, Toast.LENGTH_LONG).show();
                            } catch (Throwable t) {
                                Toast.makeText(context, "❌ Format angka salah!", Toast.LENGTH_SHORT).show();
                            }
                        }
                    });

                    builder.setNegativeButton("TUTUP", null);

                    AlertDialog dlg = builder.create();
                    dlg.show();

                } catch (Throwable t) {
                    t.printStackTrace();
                    Toast.makeText(context, "Error: " + t.getMessage(), Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}
