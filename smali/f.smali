.class public final Lf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Ld;

.field private volatile c:Z

.field private d:Ljavax/microedition/media/Player;


# direct methods
.method public constructor <init>(Ld;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lf;->a:Z

    iput-object p1, p0, Lf;->b:Ld;

    iput-object p0, p1, Ld;->f:Lf;

    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf;->d:Ljavax/microedition/media/Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lf;->d:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lf;->d:Ljavax/microedition/media/Player;

    invoke-interface {v0}, Ljavax/microedition/media/Player;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf;->d:Ljavax/microedition/media/Player;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf;->c:Z

    invoke-direct {p0}, Lf;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lf;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lf;->a:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lf;->d:Ljavax/microedition/media/Player;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lf;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lf;->b:Ld;

    invoke-virtual {p1, p2}, Ld;->c(I)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lf;->b:Ld;

    iget-object p1, p1, Ld;->h:[B

    and-int/lit16 p2, p2, 0x3ff

    aget-byte p1, p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "audio/x-wav"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string p1, "audio/mpeg"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const-string p1, "audio/amr"

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const-string p1, "audio/aac"

    goto :goto_0

    :cond_4
    const-string p1, "audio/midi"

    :goto_0
    invoke-static {v0, p1}, Ljavax/microedition/media/Manager;->createPlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;

    move-result-object p1

    iput-object p1, p0, Lf;->d:Ljavax/microedition/media/Player;

    iget-object p1, p0, Lf;->d:Ljavax/microedition/media/Player;

    invoke-interface {p1}, Ljavax/microedition/media/Player;->realize()V

    iget-object p1, p0, Lf;->d:Ljavax/microedition/media/Player;

    invoke-interface {p1}, Ljavax/microedition/media/Player;->prefetch()V

    iget-object p1, p0, Lf;->d:Ljavax/microedition/media/Player;

    const-string v0, "VolumeControl"

    invoke-interface {p1, v0}, Ljavax/microedition/media/Controllable;->getControl(Ljava/lang/String;)Ljavax/microedition/media/Control;

    move-result-object p1

    check-cast p1, Ljavax/microedition/media/control/VolumeControl;

    if-eqz p1, :cond_5

    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Ljavax/microedition/media/control/VolumeControl;->setLevel(I)I

    :cond_5
    iget-object p1, p0, Lf;->d:Ljavax/microedition/media/Player;

    invoke-interface {p1, p2}, Ljavax/microedition/media/Player;->setLoopCount(I)V

    iget-object p1, p0, Lf;->d:Ljavax/microedition/media/Player;

    invoke-interface {p1}, Ljavax/microedition/media/Player;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :cond_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lf;->a:Z

    invoke-virtual {p0}, Lf;->b()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lf;->a(I)V

    iget-object v0, p0, Lf;->b:Ld;

    iput-boolean p1, v0, Ld;->g:Z

    iget-object p1, p0, Lf;->b:Ld;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ld;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lf;->b:Ld;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld;->a(Z)V

    iget-boolean v0, p0, Lf;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lf;->b:Ld;

    iget-boolean v0, v0, Ld;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final declared-synchronized run()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
