.class public Lcom/glu/godofwar/MainActivity$GameView;
.super Landroid/view/SurfaceView;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/godofwar/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameView"
.end annotation


# instance fields
.field private bitmapPaint:Landroid/graphics/Paint;

.field private blackPaint:Landroid/graphics/Paint;

.field private cheatBtnBorderPaint:Landroid/graphics/Paint;

.field private cheatBtnPaint:Landroid/graphics/Paint;

.field private cheatBtnTextPaint:Landroid/graphics/Paint;

.field private cheatNotification:Ljava/lang/String;

.field private cheatNotificationTime:J

.field private ctrlBgPaint:Landroid/graphics/Paint;

.field private ctrlBorderPaint:Landroid/graphics/Paint;

.field private ctrlPressedPaint:Landroid/graphics/Paint;

.field private ctrlTextPaint:Landroid/graphics/Paint;

.field private godmodeActive:Z

.field private holder:Landroid/view/SurfaceHolder;

.field private modalBgPaint:Landroid/graphics/Paint;

.field private modalBorderPaint:Landroid/graphics/Paint;

.field private modalBoxPaint:Landroid/graphics/Paint;

.field private modalItemActivePaint:Landroid/graphics/Paint;

.field private modalItemBorderPaint:Landroid/graphics/Paint;

.field private modalItemPaint:Landroid/graphics/Paint;

.field private modalItemTextPaint:Landroid/graphics/Paint;

.field private modalTitlePaint:Landroid/graphics/Paint;

.field private final pointerKeys:[I

.field private rectBtnHeavy:Landroid/graphics/RectF;

.field private rectBtnJump:Landroid/graphics/RectF;

.field private rectBtnLight:Landroid/graphics/RectF;

.field private rectBtnMagic:Landroid/graphics/RectF;

.field private rectBtnRoll:Landroid/graphics/RectF;

.field private rectBtnSub:Landroid/graphics/RectF;

.field private rectCheatBtn:Landroid/graphics/RectF;

.field private rectCheatClose:Landroid/graphics/RectF;

.field private rectCheatGodmode:Landroid/graphics/RectF;

.field private rectCheatHeal:Landroid/graphics/RectF;

.field private rectCheatLevels:Landroid/graphics/RectF;

.field private rectCheatMagic:Landroid/graphics/RectF;

.field private rectCheatModalBox:Landroid/graphics/RectF;

.field private rectCheatOneHit:Landroid/graphics/RectF;

.field private rectCheatOrbs:Landroid/graphics/RectF;

.field private rectCheatWeapons:Landroid/graphics/RectF;

.field private rectDpadCenter:Landroid/graphics/RectF;

.field private rectDpadDown:Landroid/graphics/RectF;

.field private rectDpadLeft:Landroid/graphics/RectF;

.field private rectDpadRight:Landroid/graphics/RectF;

.field private rectDpadUp:Landroid/graphics/RectF;

.field private rectGame:Landroid/graphics/RectF;

.field private rectSoftLeft:Landroid/graphics/RectF;

.field private rectSoftRight:Landroid/graphics/RectF;

.field private renderThread:Ljava/lang/Thread;

.field private volatile running:Z

.field private showCheatModal:Z

.field private toastBgPaint:Landroid/graphics/Paint;

.field private toastTextPaint:Landroid/graphics/Paint;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 269
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->running:Z

    .line 207
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    .line 211
    iput-boolean v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->showCheatModal:Z

    .line 212
    iput-boolean v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatNotification:Ljava/lang/String;

    .line 214
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatNotificationTime:J

    .line 216
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatBtn:Landroid/graphics/RectF;

    .line 217
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatModalBox:Landroid/graphics/RectF;

    .line 218
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatGodmode:Landroid/graphics/RectF;

    .line 219
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatHeal:Landroid/graphics/RectF;

    .line 220
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatMagic:Landroid/graphics/RectF;

    .line 221
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOrbs:Landroid/graphics/RectF;

    .line 222
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatWeapons:Landroid/graphics/RectF;

    .line 223
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatLevels:Landroid/graphics/RectF;

    .line 224
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOneHit:Landroid/graphics/RectF;

    .line 225
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatClose:Landroid/graphics/RectF;

    .line 228
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadUp:Landroid/graphics/RectF;

    .line 229
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadDown:Landroid/graphics/RectF;

    .line 230
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadLeft:Landroid/graphics/RectF;

    .line 231
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadRight:Landroid/graphics/RectF;

    .line 232
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadCenter:Landroid/graphics/RectF;

    .line 234
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnLight:Landroid/graphics/RectF;

    .line 235
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnHeavy:Landroid/graphics/RectF;

    .line 236
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnJump:Landroid/graphics/RectF;

    .line 237
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnRoll:Landroid/graphics/RectF;

    .line 238
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnMagic:Landroid/graphics/RectF;

    .line 239
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnSub:Landroid/graphics/RectF;

    .line 241
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftLeft:Landroid/graphics/RectF;

    .line 242
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftRight:Landroid/graphics/RectF;

    .line 245
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    .line 270
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity$GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->holder:Landroid/view/SurfaceHolder;

    .line 271
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 273
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->bitmapPaint:Landroid/graphics/Paint;

    .line 274
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 275
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 277
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->blackPaint:Landroid/graphics/Paint;

    .line 278
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->blackPaint:Landroid/graphics/Paint;

    const v2, -0xf5f5f2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->vibrator:Landroid/os/Vibrator;

    .line 281
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 283
    invoke-direct {p0}, Lcom/glu/godofwar/MainActivity$GameView;->initPaints()V

    .line 284
    return-void
.end method

.method private drawCheatButton(Landroid/graphics/Canvas;)V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatBtn:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 595
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatBtn:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 596
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 597
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatBtn:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 598
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatBtn:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    const-string v3, "\u26a1 CHEAT"

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 599
    return-void
.end method

.method private drawCheatModal(Landroid/graphics/Canvas;)V
    .locals 7

    .line 602
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity$GameView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity$GameView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 603
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatModalBox:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBoxPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 604
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatModalBox:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 606
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalTitlePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 607
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatModalBox:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatModalBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x42340000    # 45.0f

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalTitlePaint:Landroid/graphics/Paint;

    const-string v3, "\u26a1 GOD OF WAR CHEAT ENGINE \u26a1"

    invoke-virtual {v1, v3, p1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 609
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatGodmode:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    if-eqz v0, :cond_0

    const-string v0, "\ud83d\udee1\ufe0f GODMODE: [AKTIF]"

    goto :goto_0

    :cond_0
    const-string v0, "\ud83d\udee1\ufe0f GODMODE: [NONAKTIF]"

    :goto_0
    iget-boolean v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 610
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatHeal:Landroid/graphics/RectF;

    const-string v0, "\ud83d\udc96 DARAH PENUH (MAX HP)"

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 611
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatMagic:Landroid/graphics/RectF;

    const-string v0, "\u26a1 SIHIR PENUH (MAX MAGIC)"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 612
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOrbs:Landroid/graphics/RectF;

    const-string v0, "\ud83d\udd34 999.999 RED ORBS"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 613
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatWeapons:Landroid/graphics/RectF;

    const-string v0, "\u2694\ufe0f MAX STAT & SENJATA DEWA"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 614
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatLevels:Landroid/graphics/RectF;

    const-string v0, "\ud83d\uddfa\ufe0f BUKA SEMUA STAGE (STAGE 1-10)"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 615
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOneHit:Landroid/graphics/RectF;

    const-string v0, "\ud83d\udc80 ONE HIT KILL / BUNUH SEMUA MUSUH"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 616
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatClose:Landroid/graphics/RectF;

    const-string v0, "\u2716 TUTUP CHEAT MENU"

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V

    .line 617
    return-void
.end method

.method private drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V
    .locals 1

    .line 565
    invoke-direct {p0, p4}, Lcom/glu/godofwar/MainActivity$GameView;->isKeyPressed(I)Z

    move-result p4

    .line 566
    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlPressedPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBgPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, p2, p5, p5, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 567
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p5, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 569
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p5

    const v0, 0x3ea8f5c3    # 0.33f

    mul-float p5, p5, v0

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 570
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    iget-object p5, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result p5

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    add-float/2addr p5, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    sub-float/2addr p4, p5

    .line 571
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p5, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    return-void
.end method

.method private drawModalItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;Z)V
    .locals 2

    .line 620
    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemActivePaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemPaint:Landroid/graphics/Paint;

    :goto_0
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v0, v0, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 621
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 622
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 623
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p4, v0

    .line 624
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 625
    return-void
.end method

.method private drawNotificationToast(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 628
    int-to-float p2, p2

    const v0, 0x3f59999a    # 0.85f

    mul-float v0, v0, p2

    const/high16 v1, 0x44020000    # 520.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 629
    nop

    .line 630
    sub-float/2addr p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    .line 631
    int-to-float p3, p3

    const/high16 v2, 0x42600000    # 56.0f

    sub-float/2addr p3, v2

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr p3, v3

    .line 632
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v0, p2

    add-float/2addr v2, p3

    invoke-direct {v3, p2, p3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 634
    iget-object p2, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastBgPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p1, v3, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 635
    iget-object p2, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 636
    iget-object p2, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x41b00000    # 22.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 637
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget-object p3, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->descent()F

    move-result p3

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    add-float/2addr p3, v0

    div-float/2addr p3, v1

    sub-float/2addr p2, p3

    .line 638
    iget-object p3, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatNotification:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 639
    return-void
.end method

.method private drawRoundButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)V
    .locals 5

    .line 575
    invoke-direct {p0, p4}, Lcom/glu/godofwar/MainActivity$GameView;->isKeyPressed(I)Z

    move-result p4

    .line 576
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 577
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlPressedPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBgPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v2, v3, v0, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 578
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 580
    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    const v2, 0x3ed70a3d    # 0.42f

    mul-float v0, v0, v2

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 581
    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 582
    array-length p4, p3

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    .line 583
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr p4, v2

    .line 584
    aget-object p3, p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 585
    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr p4, v3

    .line 587
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 588
    aget-object v0, p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p4, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 589
    aget-object p3, p3, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p4, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 591
    :goto_1
    return-void
.end method

.method private drawVirtualControls(Landroid/graphics/Canvas;)V
    .locals 6

    .line 533
    nop

    .line 536
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadUp:Landroid/graphics/RectF;

    const-string v3, "\u25b2"

    const/16 v4, 0x32

    const/high16 v5, 0x41800000    # 16.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 537
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadDown:Landroid/graphics/RectF;

    const-string v3, "\u25bc"

    const/16 v4, 0x38

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 538
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadLeft:Landroid/graphics/RectF;

    const-string v3, "\u25c0"

    const/16 v4, 0x34

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 539
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadRight:Landroid/graphics/RectF;

    const-string v3, "\u25b6"

    const/16 v4, 0x36

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 540
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadCenter:Landroid/graphics/RectF;

    const-string v3, "\u03a9"

    const/16 v4, 0x35

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 543
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnLight:Landroid/graphics/RectF;

    const-string v3, "\u2694\nATK"

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/glu/godofwar/MainActivity$GameView;->drawRoundButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)V

    .line 544
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnHeavy:Landroid/graphics/RectF;

    const-string v3, "\ud83d\udd25\nPWR"

    const/16 v4, 0x37

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/glu/godofwar/MainActivity$GameView;->drawRoundButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)V

    .line 545
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnJump:Landroid/graphics/RectF;

    const-string v3, "\u23eb\nJUMP"

    const/16 v4, 0x32

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/glu/godofwar/MainActivity$GameView;->drawRoundButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)V

    .line 546
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnRoll:Landroid/graphics/RectF;

    const-string v3, "\u21bb\nROLL"

    const/16 v4, 0x2a

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/glu/godofwar/MainActivity$GameView;->drawRoundButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;I)V

    .line 549
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnMagic:Landroid/graphics/RectF;

    const/16 v4, 0x39

    const/high16 v5, 0x41400000    # 12.0f

    const-string v3, "\ud83d\udd31 MAGIC"

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 550
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnSub:Landroid/graphics/RectF;

    const/16 v4, 0x23

    const-string v3, "\u2699 SUB"

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 553
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftLeft:Landroid/graphics/RectF;

    const/4 v4, -0x6

    const/high16 v5, 0x41200000    # 10.0f

    const-string v3, "\u2630 MENU"

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 554
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftRight:Landroid/graphics/RectF;

    const/4 v4, -0x7

    const-string v3, "\u21a9 BACK"

    invoke-direct/range {v0 .. v5}, Lcom/glu/godofwar/MainActivity$GameView;->drawCtrlButton(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/String;IF)V

    .line 555
    return-void
.end method

.method private getVirtualKeyAt(FF)I
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadUp:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_0

    return v1

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadDown:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x38

    return p1

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadLeft:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x34

    return p1

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadRight:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x36

    return p1

    .line 788
    :cond_3
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadCenter:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/16 v2, 0x35

    if-eqz v0, :cond_4

    return v2

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnLight:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 791
    :cond_5
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnHeavy:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x37

    return p1

    .line 792
    :cond_6
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnJump:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 793
    :cond_7
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnRoll:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x2a

    return p1

    .line 794
    :cond_8
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnMagic:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x39

    return p1

    .line 795
    :cond_9
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnSub:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0x23

    return p1

    .line 797
    :cond_a
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftLeft:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, -0x6

    return p1

    .line 798
    :cond_b
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftRight:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, -0x7

    return p1

    .line 800
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private initPaints()V
    .locals 6

    .line 288
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBgPaint:Landroid/graphics/Paint;

    .line 289
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBgPaint:Landroid/graphics/Paint;

    const v1, -0x77e3f8f8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlPressedPaint:Landroid/graphics/Paint;

    .line 293
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlPressedPaint:Landroid/graphics/Paint;

    const v1, -0x3366e4e5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlPressedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBorderPaint:Landroid/graphics/Paint;

    .line 297
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBorderPaint:Landroid/graphics/Paint;

    const v1, -0x2688fa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 299
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 301
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    .line 302
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 304
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->ctrlTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnPaint:Landroid/graphics/Paint;

    .line 308
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x55750000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnBorderPaint:Landroid/graphics/Paint;

    .line 312
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnBorderPaint:Landroid/graphics/Paint;

    const/16 v3, -0x2900

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnBorderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnBorderPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    .line 317
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 319
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatBtnTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 321
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBgPaint:Landroid/graphics/Paint;

    .line 322
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBgPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x23000000

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBoxPaint:Landroid/graphics/Paint;

    .line 325
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBoxPaint:Landroid/graphics/Paint;

    const v5, -0xebf5f6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBoxPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBorderPaint:Landroid/graphics/Paint;

    .line 329
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBorderPaint:Landroid/graphics/Paint;

    const v5, -0xbb00

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBorderPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalBorderPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalTitlePaint:Landroid/graphics/Paint;

    .line 334
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalTitlePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 338
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemPaint:Landroid/graphics/Paint;

    .line 339
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemPaint:Landroid/graphics/Paint;

    const v5, -0xd5eaeb

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 342
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemActivePaint:Landroid/graphics/Paint;

    .line 343
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemActivePaint:Landroid/graphics/Paint;

    const/high16 v5, -0x750000

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemActivePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemBorderPaint:Landroid/graphics/Paint;

    .line 347
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemBorderPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7400

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemBorderPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    .line 352
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 354
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->modalItemTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 356
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastBgPaint:Landroid/graphics/Paint;

    .line 357
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastBgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x11e60000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    .line 361
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 363
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->toastTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 364
    return-void
.end method

.method private isKeyPressed(I)Z
    .locals 5

    .line 558
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 559
    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 558
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    :cond_1
    return v2
.end method

.method private keepGodmodeAlive()V
    .locals 6

    .line 819
    :try_start_0
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 820
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hO"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 822
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 823
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "hR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 824
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 825
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 826
    const/16 v4, 0x800

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 828
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hQ"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 829
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 830
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "hS"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 831
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 832
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 833
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 835
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 836
    return-void
.end method

.method private layoutControls(II)V
    .locals 24

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-lez v1, :cond_2

    if-gtz v2, :cond_0

    goto/16 :goto_1

    .line 390
    :cond_0
    nop

    .line 391
    int-to-float v2, v2

    .line 392
    const v3, 0x3fd55555

    mul-float v4, v2, v3

    .line 393
    int-to-float v1, v1

    const v5, 0x3f333333    # 0.7f

    mul-float v6, v1, v5

    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    .line 394
    nop

    .line 395
    div-float v3, v6, v3

    move v4, v6

    goto :goto_0

    .line 393
    :cond_1
    move v3, v2

    .line 398
    :goto_0
    sub-float v6, v1, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 399
    sub-float v8, v2, v3

    div-float/2addr v8, v7

    .line 400
    iget-object v9, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    add-float/2addr v4, v6

    add-float/2addr v3, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 403
    nop

    .line 404
    sub-float v3, v1, v4

    .line 405
    nop

    .line 406
    nop

    .line 407
    const v8, 0x3df5c28f    # 0.12f

    mul-float v8, v8, v2

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 410
    const/high16 v9, 0x42280000    # 42.0f

    sub-float v10, v6, v9

    div-float/2addr v10, v7

    .line 411
    iget-object v11, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftLeft:Landroid/graphics/RectF;

    const/high16 v12, 0x41600000    # 14.0f

    add-float v13, v10, v12

    add-float/2addr v8, v12

    invoke-virtual {v11, v12, v12, v13, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    iget-object v11, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatBtn:Landroid/graphics/RectF;

    const/high16 v13, 0x41e00000    # 28.0f

    add-float/2addr v10, v13

    sub-float v14, v6, v12

    invoke-virtual {v11, v10, v12, v14, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 415
    const/high16 v10, 0x41400000    # 12.0f

    add-float/2addr v10, v8

    .line 416
    sub-float v11, v2, v12

    .line 417
    sub-float/2addr v11, v10

    .line 418
    const v14, 0x3f59999a    # 0.85f

    mul-float v15, v6, v14

    const v16, 0x3f666666    # 0.9f

    const p1, 0x3f333333    # 0.7f

    mul-float v5, v11, v16

    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 419
    sub-float/2addr v6, v15

    div-float/2addr v6, v7

    .line 420
    sub-float v17, v11, v15

    div-float v17, v17, v7

    const/high16 p2, 0x40000000    # 2.0f

    add-float v7, v10, v17

    .line 421
    const/high16 v17, 0x40400000    # 3.0f

    div-float v15, v15, v17

    .line 423
    const/high16 v18, 0x42280000    # 42.0f

    iget-object v9, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadUp:Landroid/graphics/RectF;

    const/high16 v19, 0x41e00000    # 28.0f

    add-float v13, v6, v15

    mul-float v20, v15, p2

    const v21, 0x3f59999a    # 0.85f

    add-float v14, v6, v20

    const/high16 v22, 0x41600000    # 14.0f

    add-float v12, v7, v15

    invoke-virtual {v9, v13, v7, v14, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    iget-object v9, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadDown:Landroid/graphics/RectF;

    move/from16 v23, v1

    add-float v1, v7, v20

    mul-float v15, v15, v17

    add-float/2addr v7, v15

    invoke-virtual {v9, v13, v1, v14, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 425
    iget-object v7, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadLeft:Landroid/graphics/RectF;

    invoke-virtual {v7, v6, v12, v13, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 426
    iget-object v7, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadRight:Landroid/graphics/RectF;

    add-float/2addr v6, v15

    invoke-virtual {v7, v14, v12, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 427
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectDpadCenter:Landroid/graphics/RectF;

    invoke-virtual {v6, v13, v12, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 430
    nop

    .line 431
    sub-float v1, v3, v18

    div-float v1, v1, p2

    .line 432
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnSub:Landroid/graphics/RectF;

    add-float v12, v4, v22

    add-float v7, v12, v1

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v6, v12, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 433
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectSoftRight:Landroid/graphics/RectF;

    add-float v13, v4, v19

    add-float/2addr v13, v1

    sub-float v1, v23, v9

    invoke-virtual {v6, v13, v9, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 436
    nop

    .line 437
    nop

    .line 438
    nop

    .line 439
    mul-float v14, v3, v21

    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 440
    sub-float/2addr v3, v1

    div-float v3, v3, p2

    add-float/2addr v4, v3

    .line 441
    sub-float/2addr v11, v1

    div-float v11, v11, p2

    add-float/2addr v10, v11

    .line 442
    const v3, 0x3ea3d70a    # 0.32f

    mul-float v3, v3, v1

    .line 445
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnLight:Landroid/graphics/RectF;

    const v6, 0x3eb33333    # 0.35f

    mul-float v6, v6, v1

    add-float v7, v10, v6

    add-float v8, v4, v3

    add-float v9, v7, v3

    invoke-virtual {v5, v4, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 446
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnHeavy:Landroid/graphics/RectF;

    add-float/2addr v6, v4

    add-float v8, v6, v3

    add-float v11, v10, v3

    invoke-virtual {v5, v6, v10, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 447
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnRoll:Landroid/graphics/RectF;

    mul-float v1, v1, p1

    add-float/2addr v4, v1

    add-float v11, v4, v3

    invoke-virtual {v5, v4, v7, v11, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 448
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnJump:Landroid/graphics/RectF;

    add-float/2addr v1, v10

    add-float v7, v1, v3

    invoke-virtual {v5, v6, v1, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 451
    const v1, 0x3fa66666    # 1.3f

    mul-float v1, v1, v3

    .line 452
    const v5, 0x3f47ae14    # 0.78f

    mul-float v3, v3, v5

    .line 453
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectBtnMagic:Landroid/graphics/RectF;

    sub-float v3, v10, v3

    const/high16 v6, 0x40c00000    # 6.0f

    sub-float/2addr v3, v6

    sub-float v7, v23, v22

    sub-float v8, v7, v1

    invoke-virtual {v5, v8, v3, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 456
    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, v23

    const/high16 v3, 0x442f0000    # 700.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 457
    mul-float v3, v2, v16

    const/high16 v4, 0x441b0000    # 620.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 458
    sub-float v4, v23, v1

    div-float v4, v4, p2

    .line 459
    sub-float/2addr v2, v3

    div-float v2, v2, p2

    .line 460
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatModalBox:Landroid/graphics/RectF;

    add-float/2addr v1, v4

    add-float v6, v2, v3

    invoke-virtual {v5, v4, v2, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 462
    const/high16 v5, 0x42c80000    # 100.0f

    sub-float/2addr v3, v5

    const/high16 v5, 0x41080000    # 8.5f

    div-float v5, v3, v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 463
    const/high16 v6, 0x41000000    # 8.0f

    mul-float v7, v5, v6

    sub-float/2addr v3, v7

    div-float/2addr v3, v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 464
    const/high16 v6, 0x425c0000    # 55.0f

    add-float/2addr v2, v6

    .line 465
    nop

    .line 467
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatGodmode:Landroid/graphics/RectF;

    const/high16 v7, 0x41c00000    # 24.0f

    add-float/2addr v4, v7

    sub-float/2addr v1, v7

    add-float v7, v2, v5

    invoke-virtual {v6, v4, v2, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    add-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 468
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatHeal:Landroid/graphics/RectF;

    add-float v7, v2, v5

    invoke-virtual {v6, v4, v2, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    add-float/2addr v2, v3

    .line 469
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatMagic:Landroid/graphics/RectF;

    add-float v7, v2, v5

    invoke-virtual {v6, v4, v2, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    add-float/2addr v2, v3

    .line 470
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOrbs:Landroid/graphics/RectF;

    add-float v7, v2, v5

    invoke-virtual {v6, v4, v2, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    add-float/2addr v2, v3

    .line 471
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatWeapons:Landroid/graphics/RectF;

    add-float v7, v2, v5

    invoke-virtual {v6, v4, v2, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    add-float/2addr v2, v3

    .line 472
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatLevels:Landroid/graphics/RectF;

    add-float v7, v2, v5

    invoke-virtual {v6, v4, v2, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    add-float/2addr v2, v3

    .line 473
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOneHit:Landroid/graphics/RectF;

    add-float v7, v2, v5

    invoke-virtual {v6, v4, v2, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    add-float/2addr v2, v3

    .line 474
    iget-object v3, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatClose:Landroid/graphics/RectF;

    const/high16 v6, 0x40800000    # 4.0f

    add-float/2addr v2, v6

    add-float/2addr v5, v2

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 475
    return-void

    .line 387
    :cond_2
    :goto_1
    return-void
.end method

.method private render(Landroid/graphics/Canvas;)V
    .locals 8

    .line 503
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity$GameView;->getWidth()I

    move-result v0

    .line 504
    invoke-virtual {p0}, Lcom/glu/godofwar/MainActivity$GameView;->getHeight()I

    move-result v1

    .line 505
    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/glu/godofwar/MainActivity$GameView;->blackPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 508
    sget-object p1, Ljavax/microedition/lcdui/game/GameCanvas;->displayBitmap:Landroid/graphics/Bitmap;

    .line 509
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    sget-object v3, Ljavax/microedition/lcdui/game/GameCanvas;->renderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 511
    :try_start_0
    iget-object v4, p0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/glu/godofwar/MainActivity$GameView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v2, p1, v6, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 512
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 516
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawVirtualControls(Landroid/graphics/Canvas;)V

    .line 519
    invoke-direct {p0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawCheatButton(Landroid/graphics/Canvas;)V

    .line 522
    iget-boolean p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->showCheatModal:Z

    if-eqz p1, :cond_1

    .line 523
    invoke-direct {p0, v2}, Lcom/glu/godofwar/MainActivity$GameView;->drawCheatModal(Landroid/graphics/Canvas;)V

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatNotification:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatNotificationTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x9c4

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    .line 528
    invoke-direct {p0, v2, v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->drawNotificationToast(Landroid/graphics/Canvas;II)V

    .line 530
    :cond_2
    return-void
.end method

.method private static setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 954
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 955
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 956
    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 958
    return-void
.end method

.method private static setFieldStatic(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 962
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 963
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 964
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 966
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 804
    iput-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatNotification:Ljava/lang/String;

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->cheatNotificationTime:J

    .line 806
    return-void
.end method

.method private triggerVibrate(J)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 812
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public applyFullHealth()V
    .locals 5

    .line 860
    :try_start_0
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 861
    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hO"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 863
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 864
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "hR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 865
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 866
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :cond_0
    goto :goto_0

    .line 868
    :catchall_0
    move-exception v0

    .line 869
    const-string v1, "GodOfWar"

    const-string v2, "applyFullHealth error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    :goto_0
    return-void
.end method

.method public applyGodmode(Z)V
    .locals 4

    .line 840
    :try_start_0
    const-string v0, "e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 841
    const-string v1, "ir"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 842
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 843
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 845
    sget-object p1, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 846
    if-eqz p1, :cond_0

    .line 847
    const-string v1, "hO"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 849
    const-string v3, "hR"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 850
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 851
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    :cond_0
    goto :goto_0

    .line 853
    :catchall_0
    move-exception p1

    .line 854
    const-string v0, "GodOfWar"

    const-string v1, "applyGodmode error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    :goto_0
    return-void
.end method

.method public applyInfiniteMagic()V
    .locals 6

    .line 875
    :try_start_0
    const-string v0, "e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 876
    const-string v1, "hQ"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 877
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 878
    sget-object v3, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 879
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 880
    const-string v5, "hS"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 881
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 882
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 883
    goto :goto_0

    .line 884
    :cond_0
    const/16 v0, 0x800

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :goto_0
    goto :goto_1

    .line 886
    :catchall_0
    move-exception v0

    .line 887
    const-string v1, "GodOfWar"

    const-string v2, "applyInfiniteMagic error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    :goto_1
    return-void
.end method

.method public applyMaxOrbs()V
    .locals 3

    .line 893
    :try_start_0
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 894
    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hV"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 896
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 897
    const v2, 0xf423f

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :cond_0
    goto :goto_0

    .line 899
    :catchall_0
    move-exception v0

    .line 900
    const-string v1, "GodOfWar"

    const-string v2, "applyMaxOrbs error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    :goto_0
    return-void
.end method

.method public applyMaxUpgrades()V
    .locals 4

    .line 906
    :try_start_0
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 907
    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 909
    const-string v2, "hT"

    const/4 v3, 0x5

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 910
    const-string v2, "hU"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 911
    const-string v2, "hE"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 912
    const-string v2, "hF"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 913
    const-string v2, "hC"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 914
    const-string v2, "hD"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 915
    const-string v2, "hR"

    const/16 v3, 0x800

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 916
    const-string v2, "hS"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 917
    const-string v2, "hO"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 918
    const-string v0, "hQ"

    invoke-static {v1, v0, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setFieldStatic(Ljava/lang/Class;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_0
    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    .line 921
    const-string v1, "GodOfWar"

    const-string v2, "applyMaxUpgrades error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    :goto_0
    return-void
.end method

.method public applyOneHitKill()V
    .locals 3

    .line 939
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 940
    if-eqz v0, :cond_0

    .line 941
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    .line 942
    new-instance v0, Lcom/glu/godofwar/MainActivity$GameView$1;

    invoke-direct {v0, p0}, Lcom/glu/godofwar/MainActivity$GameView$1;-><init>(Lcom/glu/godofwar/MainActivity$GameView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/glu/godofwar/MainActivity$GameView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 950
    :cond_0
    return-void
.end method

.method public applyUnlockAllLevels()V
    .locals 4

    .line 927
    :try_start_0
    sget-object v0, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 928
    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 930
    const-string v2, "cf"

    const/16 v3, 0x9

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 931
    const-string v2, "ce"

    invoke-static {v1, v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :cond_0
    goto :goto_0

    .line 933
    :catchall_0
    move-exception v0

    .line 934
    const-string v1, "GodOfWar"

    const-string v2, "applyUnlockAllLevels error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 644
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 645
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 646
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 647
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 650
    iget-boolean v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->showCheatModal:Z

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_b

    .line 651
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_a

    .line 652
    :cond_0
    const-wide/16 v1, 0x19

    invoke-direct {v0, v1, v2}, Lcom/glu/godofwar/MainActivity$GameView;->triggerVibrate(J)V

    .line 653
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatGodmode:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    iget-boolean v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    xor-int/2addr v1, v8

    iput-boolean v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    .line 655
    iget-boolean v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    invoke-virtual {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->applyGodmode(Z)V

    .line 656
    iget-boolean v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    if-eqz v1, :cond_1

    const-string v1, "\ud83d\udee1\ufe0f Godmode Diaktifkan!"

    goto :goto_0

    :cond_1
    const-string v1, "Godmode Dinonaktifkan"

    :goto_0
    invoke-direct {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 657
    :cond_2
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatHeal:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 658
    invoke-virtual {v0}, Lcom/glu/godofwar/MainActivity$GameView;->applyFullHealth()V

    .line 659
    const-string v1, "\ud83d\udc96 Darah Pulih Maksimal!"

    invoke-direct {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 660
    :cond_3
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatMagic:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 661
    invoke-virtual {v0}, Lcom/glu/godofwar/MainActivity$GameView;->applyInfiniteMagic()V

    .line 662
    const-string v1, "\u26a1 Sihir Terisi Penuh!"

    invoke-direct {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 663
    :cond_4
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOrbs:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 664
    invoke-virtual {v0}, Lcom/glu/godofwar/MainActivity$GameView;->applyMaxOrbs()V

    .line 665
    const-string v1, "\ud83d\udd34 999.999 Red Orbs Ditambahkan!"

    invoke-direct {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 666
    :cond_5
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatWeapons:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 667
    invoke-virtual {v0}, Lcom/glu/godofwar/MainActivity$GameView;->applyMaxUpgrades()V

    .line 668
    const-string v1, "\u2694\ufe0f Senjata & Status Dewa Maksimal!"

    invoke-direct {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 669
    :cond_6
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatLevels:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 670
    invoke-virtual {v0}, Lcom/glu/godofwar/MainActivity$GameView;->applyUnlockAllLevels()V

    .line 671
    const-string v1, "\ud83d\uddfa\ufe0f Semua Stage 1-10 Berhasil Dibuka!"

    invoke-direct {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 672
    :cond_7
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatOneHit:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 673
    invoke-virtual {v0}, Lcom/glu/godofwar/MainActivity$GameView;->applyOneHitKill()V

    .line 674
    const-string v1, "\ud83d\udc80 Instant Kill Musuh Dipicu!"

    invoke-direct {v0, v1}, Lcom/glu/godofwar/MainActivity$GameView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 675
    :cond_8
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatClose:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatModalBox:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_a

    .line 676
    :cond_9
    iput-boolean v9, v0, Lcom/glu/godofwar/MainActivity$GameView;->showCheatModal:Z

    .line 679
    :cond_a
    :goto_1
    return v8

    .line 683
    :cond_b
    if-eqz v2, :cond_c

    if-ne v2, v7, :cond_d

    :cond_c
    iget-object v6, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectCheatBtn:Landroid/graphics/RectF;

    .line 684
    invoke-virtual {v6, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 685
    iput-boolean v8, v0, Lcom/glu/godofwar/MainActivity$GameView;->showCheatModal:Z

    .line 686
    const-wide/16 v1, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/glu/godofwar/MainActivity$GameView;->triggerVibrate(J)V

    .line 687
    return v8

    .line 690
    :cond_d
    sget-object v6, Ljavax/microedition/lcdui/Canvas;->currentInstance:Ljavax/microedition/lcdui/Canvas;

    .line 692
    const/16 v7, 0x1e0

    const/16 v10, 0x320

    const/high16 v11, 0x43f00000    # 480.0f

    const/high16 v12, 0x44480000    # 800.0f

    const/4 v13, -0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/16 v16, 0x1

    goto/16 :goto_6

    .line 769
    :pswitch_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 770
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aget v2, v2, v1

    .line 771
    if-lez v2, :cond_e

    if-eqz v6, :cond_e

    .line 772
    invoke-virtual {v6, v2}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    .line 774
    :cond_e
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aput v9, v2, v1

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    const/16 v16, 0x1

    goto/16 :goto_6

    .line 718
    :pswitch_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 719
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_14

    .line 720
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 721
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_10

    const/16 v16, 0x1

    goto :goto_4

    .line 723
    :cond_10
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 724
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 726
    iget-object v15, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aget v15, v15, v4

    .line 727
    const/16 v16, 0x1

    invoke-direct {v0, v5, v14}, Lcom/glu/godofwar/MainActivity$GameView;->getVirtualKeyAt(FF)I

    move-result v8

    .line 729
    if-lez v15, :cond_12

    if-lez v8, :cond_12

    if-eq v15, v8, :cond_12

    .line 730
    if-eqz v6, :cond_11

    .line 731
    invoke-virtual {v6, v15}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    .line 732
    invoke-virtual {v6, v8}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    .line 734
    :cond_11
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aput v8, v5, v4

    goto :goto_4

    .line 735
    :cond_12
    if-ne v15, v13, :cond_13

    iget-object v4, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v14}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 736
    if-eqz v6, :cond_13

    .line 737
    iget-object v4, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v4

    mul-float v5, v5, v12

    iget-object v4, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v5, v4

    float-to-int v4, v5

    .line 738
    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v5

    mul-float v14, v14, v11

    iget-object v5, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v14, v5

    float-to-int v5, v14

    .line 739
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 740
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 741
    invoke-virtual {v6, v4, v5}, Ljavax/microedition/lcdui/Canvas;->pointerDragged(II)V

    .line 719
    :cond_13
    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    goto :goto_3

    .line 745
    :cond_14
    const/16 v16, 0x1

    goto/16 :goto_6

    .line 750
    :pswitch_3
    const/16 v16, 0x1

    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    array-length v1, v1

    if-ge v4, v1, :cond_1a

    .line 751
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aget v1, v1, v4

    .line 752
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aput v9, v2, v4

    .line 753
    if-lez v1, :cond_15

    .line 754
    if-eqz v6, :cond_16

    invoke-virtual {v6, v1}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    goto :goto_5

    .line 755
    :cond_15
    if-ne v1, v13, :cond_16

    .line 756
    if-eqz v6, :cond_16

    .line 757
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v1

    mul-float v5, v5, v12

    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v5, v1

    float-to-int v1, v5

    .line 758
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v11

    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 759
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 760
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 761
    invoke-virtual {v6, v1, v2}, Ljavax/microedition/lcdui/Canvas;->pointerReleased(II)V

    .line 764
    :cond_16
    :goto_5
    goto :goto_6

    .line 695
    :pswitch_4
    const/16 v16, 0x1

    invoke-direct {v0, v5, v3}, Lcom/glu/godofwar/MainActivity$GameView;->getVirtualKeyAt(FF)I

    move-result v1

    .line 696
    if-eqz v1, :cond_18

    .line 697
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    array-length v2, v2

    if-ge v4, v2, :cond_17

    .line 698
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aput v1, v2, v4

    .line 700
    :cond_17
    const-wide/16 v2, 0x14

    invoke-direct {v0, v2, v3}, Lcom/glu/godofwar/MainActivity$GameView;->triggerVibrate(J)V

    .line 701
    if-eqz v6, :cond_1a

    invoke-virtual {v6, v1}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    goto :goto_6

    .line 702
    :cond_18
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 703
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    array-length v1, v1

    if-ge v4, v1, :cond_19

    .line 704
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->pointerKeys:[I

    aput v13, v1, v4

    .line 706
    :cond_19
    if-eqz v6, :cond_1a

    .line 707
    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v1

    mul-float v5, v5, v12

    iget-object v1, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v5, v1

    float-to-int v1, v5

    .line 708
    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v11

    iget-object v2, v0, Lcom/glu/godofwar/MainActivity$GameView;->rectGame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 709
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 710
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 711
    invoke-virtual {v6, v1, v2}, Ljavax/microedition/lcdui/Canvas;->pointerPressed(II)V

    .line 712
    nop

    .line 780
    :cond_1a
    :goto_6
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 4

    .line 479
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->running:Z

    if-eqz v0, :cond_4

    .line 480
    iget-boolean v0, p0, Lcom/glu/godofwar/MainActivity$GameView;->godmodeActive:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/glu/godofwar/MainActivity$GameView;->keepGodmodeAlive()V

    .line 484
    :cond_0
    nop

    .line 486
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0, v0}, Lcom/glu/godofwar/MainActivity$GameView;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_1
    if-eqz v0, :cond_2

    .line 494
    :try_start_1
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->holder:Landroid/view/SurfaceHolder;

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 490
    :catchall_0
    move-exception v1

    .line 491
    :try_start_2
    const-string v2, "GodOfWar"

    const-string v3, "Render error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    if-eqz v0, :cond_2

    .line 494
    :try_start_3
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$GameView;->holder:Landroid/view/SurfaceHolder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 498
    :cond_2
    :goto_2
    const-wide/16 v0, 0x10

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 499
    :goto_3
    goto :goto_0

    .line 493
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 494
    :try_start_5
    iget-object v2, p0, Lcom/glu/godofwar/MainActivity$GameView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 496
    :cond_3
    :goto_4
    throw v1

    .line 500
    :cond_4
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 375
    invoke-direct {p0, p3, p4}, Lcom/glu/godofwar/MainActivity$GameView;->layoutControls(II)V

    .line 376
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 368
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->running:Z

    .line 369
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "GOWRenderThread"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->renderThread:Ljava/lang/Thread;

    .line 370
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->renderThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 371
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 380
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->running:Z

    .line 381
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->renderThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 382
    :try_start_0
    iget-object p1, p0, Lcom/glu/godofwar/MainActivity$GameView;->renderThread:Ljava/lang/Thread;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 384
    :cond_0
    :goto_0
    return-void
.end method
