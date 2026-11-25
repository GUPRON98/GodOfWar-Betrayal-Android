.class public Ljavax/microedition/media/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Ljavax/microedition/media/Player;
.implements Ljavax/microedition/media/control/VolumeControl;


# static fields
.field private static activeMp:Landroid/media/MediaPlayer;

.field private static activeOwner:Ljavax/microedition/media/BasePlayer;

.field private static tempMidiFile:Ljava/io/File;


# instance fields
.field private data:[B

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/microedition/media/PlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private loopCount:I

.field private mediaTime:J

.field private state:I

.field private volume:I


# direct methods
.method static bridge synthetic -$$Nest$fgetlisteners(Ljavax/microedition/media/BasePlayer;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputstate(Ljavax/microedition/media/BasePlayer;I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/media/BasePlayer;->state:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetactiveOwner()Ljavax/microedition/media/BasePlayer;
    .locals 1

    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    return-object v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 p2, 0x64

    iput p2, p0, Ljavax/microedition/media/BasePlayer;->volume:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Ljavax/microedition/media/BasePlayer;->loopCount:I

    .line 17
    iput p2, p0, Ljavax/microedition/media/BasePlayer;->state:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/microedition/media/BasePlayer;->mediaTime:J

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 30
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 31
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Ljavax/microedition/media/BasePlayer;->data:[B

    .line 34
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 35
    iput p2, p0, Ljavax/microedition/media/BasePlayer;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-array p1, v0, [B

    iput-object p1, p0, Ljavax/microedition/media/BasePlayer;->data:[B

    .line 39
    :goto_1
    return-void
.end method

.method private static declared-synchronized stopActive()V
    .locals 2

    const-class v0, Ljavax/microedition/media/BasePlayer;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 136
    :try_start_1
    sget-object v1, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 139
    :try_start_2
    sget-object v1, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 140
    :catch_1
    move-exception v1

    :goto_1
    nop

    .line 141
    const/4 v1, 0x0

    :try_start_3
    sput-object v1, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    .line 142
    sput-object v1, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :cond_0
    monitor-exit v0

    return-void

    .line 133
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 1

    .line 189
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    if-ne v0, p0, :cond_0

    .line 149
    invoke-static {}, Ljavax/microedition/media/BasePlayer;->stopActive()V

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/media/BasePlayer;->state:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/media/BasePlayer;->data:[B

    .line 153
    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized deallocate()V
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljavax/microedition/media/BasePlayer;->stop()V

    .line 63
    iget v0, p0, Ljavax/microedition/media/BasePlayer;->state:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 64
    const/16 v0, 0xc8

    iput v0, p0, Ljavax/microedition/media/BasePlayer;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getControl(Ljava/lang/String;)Ljavax/microedition/media/control/Control;
    .locals 1

    .line 203
    const-string v0, "VolumeControl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    return-object p0

    .line 206
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getControls()[Ljavax/microedition/media/control/Control;
    .locals 2

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/microedition/media/control/Control;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 217
    iget v0, p0, Ljavax/microedition/media/BasePlayer;->volume:I

    return v0
.end method

.method public getMediaTime()J
    .locals 4

    .line 179
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    if-ne v0, p0, :cond_0

    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    :cond_0
    iget-wide v0, p0, Ljavax/microedition/media/BasePlayer;->mediaTime:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 57
    iget v0, p0, Ljavax/microedition/media/BasePlayer;->state:I

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 234
    iget v0, p0, Ljavax/microedition/media/BasePlayer;->volume:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prefetch()V
    .locals 2

    .line 50
    iget v0, p0, Ljavax/microedition/media/BasePlayer;->state:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 51
    iput v1, p0, Ljavax/microedition/media/BasePlayer;->state:I

    .line 53
    :cond_0
    return-void
.end method

.method public realize()V
    .locals 2

    .line 43
    iget v0, p0, Ljavax/microedition/media/BasePlayer;->state:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 44
    iput v1, p0, Ljavax/microedition/media/BasePlayer;->state:I

    .line 46
    :cond_0
    return-void
.end method

.method public removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 1

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    return-void
.end method

.method public setLevel(I)I
    .locals 1

    .line 222
    iput p1, p0, Ljavax/microedition/media/BasePlayer;->volume:I

    .line 223
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    if-ne v0, p0, :cond_0

    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 224
    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 226
    :try_start_0
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 229
    :cond_0
    iget p1, p0, Ljavax/microedition/media/BasePlayer;->volume:I

    return p1
.end method

.method public setLoopCount(I)V
    .locals 2

    .line 158
    iput p1, p0, Ljavax/microedition/media/BasePlayer;->loopCount:I

    .line 159
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    if-ne v0, p0, :cond_1

    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 161
    :try_start_0
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 162
    :catch_0
    move-exception p1

    :goto_1
    nop

    .line 164
    :cond_1
    return-void
.end method

.method public setMediaTime(J)J
    .locals 3

    .line 168
    iput-wide p1, p0, Ljavax/microedition/media/BasePlayer;->mediaTime:J

    .line 169
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    if-ne v0, p0, :cond_0

    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 174
    :cond_0
    return-wide p1
.end method

.method public setMute(Z)V
    .locals 1

    .line 239
    if-eqz p1, :cond_0

    .line 240
    sget-object p1, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    if-ne p1, p0, :cond_1

    sget-object p1, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 242
    :try_start_0
    sget-object p1, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception p1

    :goto_0
    goto :goto_1

    .line 246
    :cond_0
    iget p1, p0, Ljavax/microedition/media/BasePlayer;->volume:I

    invoke-virtual {p0, p1}, Ljavax/microedition/media/BasePlayer;->setLevel(I)I

    .line 248
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->data:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->data:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 72
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/microedition/media/BasePlayer;->stopActive()V

    .line 75
    sget-object v0, Ljavax/microedition/lcdui/ResourceLoader;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Ljavax/microedition/lcdui/ResourceLoader;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/ai/cache"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    sget-object v1, Ljavax/microedition/media/BasePlayer;->tempMidiFile:Ljava/io/File;

    if-nez v1, :cond_2

    .line 83
    new-instance v1, Ljava/io/File;

    const-string v2, "current_audio.mid"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Ljavax/microedition/media/BasePlayer;->tempMidiFile:Ljava/io/File;

    .line 85
    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Ljavax/microedition/media/BasePlayer;->tempMidiFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 86
    iget-object v1, p0, Ljavax/microedition/media/BasePlayer;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 87
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 89
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    .line 90
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    sget-object v1, Ljavax/microedition/media/BasePlayer;->tempMidiFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 91
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    iget v1, p0, Ljavax/microedition/media/BasePlayer;->loopCount:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 92
    iget v0, p0, Ljavax/microedition/media/BasePlayer;->volume:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 93
    sget-object v1, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 94
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    new-instance v1, Ljavax/microedition/media/BasePlayer$1;

    invoke-direct {v1, p0}, Ljavax/microedition/media/BasePlayer$1;-><init>(Ljavax/microedition/media/BasePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 106
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 107
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 108
    sput-object p0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    .line 109
    const/16 v0, 0x190

    iput v0, p0, Ljavax/microedition/media/BasePlayer;->state:I

    .line 111
    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/media/PlayerListener;

    .line 112
    const-string v2, "started"

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    :cond_4
    nop

    .line 115
    monitor-exit p0

    return-void

    .line 70
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    .line 119
    :try_start_0
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeOwner:Ljavax/microedition/media/BasePlayer;

    const/16 v1, 0x12c

    if-ne v0, p0, :cond_1

    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 121
    :try_start_1
    sget-object v0, Ljavax/microedition/media/BasePlayer;->activeMp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 122
    iput v1, p0, Ljavax/microedition/media/BasePlayer;->state:I

    .line 123
    iget-object v0, p0, Ljavax/microedition/media/BasePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/media/PlayerListener;

    .line 124
    const-string v2, "stopped"

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 127
    :try_start_2
    invoke-static {}, Ljavax/microedition/media/BasePlayer;->stopActive()V

    goto :goto_1

    .line 129
    :cond_1
    iput v1, p0, Ljavax/microedition/media/BasePlayer;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :goto_1
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
