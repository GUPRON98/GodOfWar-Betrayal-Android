.class public Lcom/glu/godofwar/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/godofwar/MainActivity$GameView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GodOfWar"


# instance fields
.field private gameView:Lcom/glu/godofwar/MainActivity$GameView;

.field private midlet:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method static bridge synthetic -$$Nest$fgetmidlet(Lcom/glu/godofwar/MainActivity;)Ljavax/microedition/midlet/MIDlet;
    .locals 0

    iget-object p0, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmidlet(Lcom/glu/godofwar/MainActivity;Ljavax/microedition/midlet/MIDlet;)V
    .locals 0

    iput-object p1, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hideSystemUI()V
    .locals 2

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method

.method private mapPhysicalKey(I)I
    .locals 2

    .line 157
    const/16 v0, 0x35

    const/16 v1, 0x32

    sparse-switch p1, :sswitch_data_0

    .line 196
    const/4 p1, 0x0

    return p1

    .line 194
    :sswitch_0
    const/4 p1, -0x6

    return p1

    .line 178
    :sswitch_1
    return v1

    .line 184
    :sswitch_2
    const/16 p1, 0x39

    return p1

    .line 181
    :sswitch_3
    const/16 p1, 0x2a

    return p1

    .line 175
    :sswitch_4
    const/16 p1, 0x37

    return p1

    .line 172
    :sswitch_5
    return v0

    .line 186
    :sswitch_6
    const/16 p1, 0x23

    return p1

    .line 189
    :sswitch_7
    return v0

    .line 169
    :sswitch_8
    const/16 p1, 0x36

    return p1

    .line 166
    :sswitch_9
    const/16 p1, 0x34

    return p1

    .line 163
    :sswitch_a
    const/16 p1, 0x38

    return p1

    .line 160
    :sswitch_b
    return v1

    .line 192
    :sswitch_c
    const/4 p1, -0x7

    return p1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_a
        0x15 -> :sswitch_9
        0x16 -> :sswitch_8
        0x17 -> :sswitch_7
        0x1d -> :sswitch_9
        0x20 -> :sswitch_8
        0x25 -> :sswitch_6
        0x26 -> :sswitch_5
        0x27 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2f -> :sswitch_a
        0x31 -> :sswitch_2
        0x33 -> :sswitch_b
        0x3e -> :sswitch_1
        0x42 -> :sswitch_7
        0x52 -> :sswitch_0
        0x60 -> :sswitch_1
        0x61 -> :sswitch_3
        0x63 -> :sswitch_5
        0x64 -> :sswitch_4
        0x67 -> :sswitch_2
        0x6f -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/glu/godofwar/MainActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/glu/godofwar/MainActivity;->hideSystemUI()V

    .line 51
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Ljavax/microedition/lcdui/ResourceLoader;->appContext:Landroid/content/Context;

    .line 55
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "rms"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 60
    new-instance v3, Ljava/io/File;

    const-string v4, "1.rec"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    :cond_2
    nop

    .line 69
    new-instance p1, Lcom/glu/godofwar/MainActivity$GameView;

    invoke-direct {p1, p0}, Lcom/glu/godofwar/MainActivity$GameView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/glu/godofwar/MainActivity;->gameView:Lcom/glu/godofwar/MainActivity$GameView;

    .line 70
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity;->gameView:Lcom/glu/godofwar/MainActivity$GameView;

    invoke-virtual {p0, p1}, Lcom/glu/godofwar/MainActivity;->setContentView(Landroid/view/View;)V

    .line 73
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/glu/godofwar/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/glu/godofwar/MainActivity$1;-><init>(Lcom/glu/godofwar/MainActivity;)V

    const-string v1, "GOWInitThread"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/microedition/midlet/MIDlet;->destroyApp(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 134
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/glu/godofwar/MainActivity;->mapPhysicalKey(I)I

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    sget-object p1, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    .line 138
    const/4 p1, 0x1

    return p1

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 146
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/glu/godofwar/MainActivity;->mapPhysicalKey(I)I

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    sget-object p1, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    .line 150
    const/4 p1, 0x1

    return p1

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->pauseApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    invoke-direct {p0}, Lcom/glu/godofwar/MainActivity;->hideSystemUI()V

    .line 119
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->startApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    :cond_0
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 104
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/glu/godofwar/MainActivity;->hideSystemUI()V

    .line 105
    :cond_0
    return-void
.end method
