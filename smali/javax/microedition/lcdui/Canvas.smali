.class public abstract Ljavax/microedition/lcdui/Canvas;
.super Ljavax/microedition/lcdui/Displayable;
.source "Canvas.java"


# static fields
.field public static final DOWN:I = 0x6

.field public static final FIRE:I = 0x8

.field public static final GAME_A:I = 0x9

.field public static final GAME_B:I = 0xa

.field public static final GAME_C:I = 0xb

.field public static final GAME_D:I = 0xc

.field public static final KEY_NUM0:I = 0x30

.field public static final KEY_NUM1:I = 0x31

.field public static final KEY_NUM2:I = 0x32

.field public static final KEY_NUM3:I = 0x33

.field public static final KEY_NUM4:I = 0x34

.field public static final KEY_NUM5:I = 0x35

.field public static final KEY_NUM6:I = 0x36

.field public static final KEY_NUM7:I = 0x37

.field public static final KEY_NUM8:I = 0x38

.field public static final KEY_NUM9:I = 0x39

.field public static final KEY_POUND:I = 0x23

.field public static final KEY_STAR:I = 0x2a

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x5

.field public static final UP:I = 0x1

.field public static volatile currentInstance:Ljavax/microedition/lcdui/Canvas;

.field public static volatile displayBitmap:Landroid/graphics/Bitmap;

.field public static volatile frameReady:Z

.field public static final renderLock:Ljava/lang/Object;


# instance fields
.field protected backBufferImage:Ljavax/microedition/lcdui/Image;

.field protected bufferGraphics:Ljavax/microedition/lcdui/Graphics;

.field protected frontBitmap:Landroid/graphics/Bitmap;

.field protected frontCanvas:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/microedition/lcdui/Canvas;->frameReady:Z

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Canvas;->renderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljavax/microedition/lcdui/Displayable;-><init>()V

    .line 41
    sput-object p0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 43
    const/16 v0, 0x1e0

    const/16 v1, 0x320

    :try_start_0
    invoke-static {v1, v0}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    iput-object v2, p0, Ljavax/microedition/lcdui/Canvas;->backBufferImage:Ljavax/microedition/lcdui/Image;

    .line 44
    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->backBufferImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    iput-object v2, p0, Ljavax/microedition/lcdui/Canvas;->bufferGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 46
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Canvas;->frontBitmap:Landroid/graphics/Bitmap;

    .line 47
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->frontBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Canvas;->frontCanvas:Landroid/graphics/Canvas;

    .line 49
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->frontBitmap:Landroid/graphics/Bitmap;

    sput-object v0, Ljavax/microedition/lcdui/Canvas;->displayBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 51
    return-void
.end method


# virtual methods
.method public getGameAction(I)I
    .locals 0

    .line 106
    sparse-switch p1, :sswitch_data_0

    .line 116
    const/4 p1, 0x0

    return p1

    .line 113
    :sswitch_0
    const/16 p1, 0xa

    return p1

    .line 108
    :sswitch_1
    const/4 p1, 0x6

    return p1

    .line 112
    :sswitch_2
    const/16 p1, 0x9

    return p1

    .line 110
    :sswitch_3
    const/4 p1, 0x5

    return p1

    .line 111
    :sswitch_4
    const/16 p1, 0x8

    return p1

    .line 109
    :sswitch_5
    const/4 p1, 0x2

    return p1

    .line 107
    :sswitch_6
    const/4 p1, 0x1

    return p1

    .line 114
    :sswitch_7
    const/16 p1, 0xb

    return p1

    .line 115
    :sswitch_8
    const/16 p1, 0xc

    return p1

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x34 -> :sswitch_5
        0x35 -> :sswitch_4
        0x36 -> :sswitch_3
        0x37 -> :sswitch_2
        0x38 -> :sswitch_1
        0x39 -> :sswitch_0
    .end sparse-switch
.end method

.method public getHeight()I
    .locals 1

    .line 58
    const/16 v0, 0x1e0

    return v0
.end method

.method public getKeyCode(I)I
    .locals 0

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 131
    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 130
    :pswitch_1
    const/16 p1, 0x23

    return p1

    .line 129
    :pswitch_2
    const/16 p1, 0x2a

    return p1

    .line 128
    :pswitch_3
    const/16 p1, 0x39

    return p1

    .line 127
    :pswitch_4
    const/16 p1, 0x37

    return p1

    .line 126
    :pswitch_5
    const/16 p1, 0x35

    return p1

    .line 123
    :pswitch_6
    const/16 p1, 0x38

    return p1

    .line 125
    :pswitch_7
    const/16 p1, 0x36

    return p1

    .line 124
    :pswitch_8
    const/16 p1, 0x34

    return p1

    .line 122
    :pswitch_9
    const/16 p1, 0x32

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getKeyName(I)Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    .line 54
    const/16 v0, 0x320

    return v0
.end method

.method public hasPointerEvents()Z
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public hasPointerMotionEvents()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public hideNotify()V
    .locals 0

    .line 140
    return-void
.end method

.method public keyPressed(I)V
    .locals 0

    .line 97
    return-void
.end method

.method public keyReleased(I)V
    .locals 0

    .line 98
    return-void
.end method

.method public keyRepeated(I)V
    .locals 0

    .line 99
    return-void
.end method

.method public abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public pointerDragged(II)V
    .locals 0

    .line 103
    return-void
.end method

.method public pointerPressed(II)V
    .locals 0

    .line 101
    return-void
.end method

.method public pointerReleased(II)V
    .locals 0

    .line 102
    return-void
.end method

.method public repaint()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->serviceRepaints()V

    .line 73
    return-void
.end method

.method public repaint(IIII)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->serviceRepaints()V

    .line 77
    return-void
.end method

.method public serviceRepaints()V
    .locals 5

    .line 80
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->bufferGraphics:Ljavax/microedition/lcdui/Graphics;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->bufferGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Canvas;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 82
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->renderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->backBufferImage:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->frontCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->backBufferImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->frontCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->frontBitmap:Landroid/graphics/Bitmap;

    sput-object v1, Ljavax/microedition/lcdui/Canvas;->displayBitmap:Landroid/graphics/Bitmap;

    .line 88
    const/4 v1, 0x1

    sput-boolean v1, Ljavax/microedition/lcdui/Canvas;->frameReady:Z

    .line 91
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 0

    .line 69
    return-void
.end method

.method public showNotify()V
    .locals 0

    .line 139
    return-void
.end method
