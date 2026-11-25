.class public Ljavax/microedition/lcdui/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field public static final BASELINE:I = 0x40

.field public static final BOTTOM:I = 0x20

.field public static final DOTTED:I = 0x1

.field public static final HCENTER:I = 0x1

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final SOLID:I = 0x0

.field public static final TOP:I = 0x10

.field public static final VCENTER:I = 0x2


# instance fields
.field private baseSaveCount:I

.field private canvas:Landroid/graphics/Canvas;

.field private clipRect:Landroid/graphics/Rect;

.field private currentColor:I

.field private currentFont:Ljavax/microedition/lcdui/Font;

.field private image:Ljavax/microedition/lcdui/Image;

.field private paint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;

.field private transX:I

.field private transY:I


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Graphics;->currentFont:Ljavax/microedition/lcdui/Font;

    .line 26
    const/high16 v0, -0x1000000

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    .line 28
    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x320

    const/16 v3, 0x1e0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    .line 33
    iput-object p1, p0, Ljavax/microedition/lcdui/Graphics;->image:Ljavax/microedition/lcdui/Image;

    .line 34
    new-instance v1, Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    .line 35
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    .line 36
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p1

    iput p1, p0, Ljavax/microedition/lcdui/Graphics;->baseSaveCount:I

    .line 44
    return-void
.end method


# virtual methods
.method public clipRect(IIII)V
    .locals 1

    .line 151
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p1, v0

    .line 152
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p2, v0

    .line 153
    add-int/2addr p3, p1

    .line 154
    add-int/2addr p4, p2

    .line 155
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 158
    :try_start_0
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget p2, p0, Ljavax/microedition/lcdui/Graphics;->baseSaveCount:I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 159
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p1

    iput p1, p0, Ljavax/microedition/lcdui/Graphics;->baseSaveCount:I

    .line 160
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 162
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 5

    .line 267
    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    move v0, p1

    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    move v1, p2

    new-instance p2, Landroid/graphics/RectF;

    iget v2, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr v0, v4

    add-int/2addr v0, p3

    int-to-float p3, v0

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    int-to-float p4, v0

    invoke-direct {p2, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p3, p5

    int-to-float p4, p6

    const/4 p5, 0x0

    iget-object p6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 272
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    return-void

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method public drawChars([CIIIII)V
    .locals 1

    .line 80
    if-eqz p1, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 82
    return-void

    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;III)V
    .locals 3

    .line 170
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 175
    iget v2, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p2, v2

    .line 176
    iget v2, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p3, v2

    .line 178
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    goto :goto_0

    .line 179
    :cond_1
    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_2

    sub-int/2addr p2, v0

    .line 181
    :cond_2
    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    goto :goto_1

    .line 182
    :cond_3
    and-int/lit8 p4, p4, 0x20

    if-eqz p4, :cond_4

    sub-int/2addr p3, v1

    .line 184
    :cond_4
    :goto_1
    iget-object p4, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    return-void

    .line 170
    :cond_5
    :goto_2
    return-void
.end method

.method public drawLine(IIII)V
    .locals 8

    .line 122
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p1, v0

    int-to-float v3, p1

    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p3, p1

    int-to-float v5, p3

    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p4, p1

    int-to-float v6, p4

    iget-object v7, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    return-void
.end method

.method public drawRGB([IIIIIIIZ)V
    .locals 10

    .line 262
    if-eqz p1, :cond_1

    if-lez p6, :cond_1

    if-gtz p7, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int v4, p4, v1

    iget p4, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int v5, p5, p4

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 264
    return-void

    .line 262
    :cond_1
    :goto_0
    return-void
.end method

.method public drawRect(IIII)V
    .locals 8

    .line 106
    if-ltz p3, :cond_1

    if-gez p4, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p1, v0

    add-int/2addr p1, p3

    int-to-float v5, p1

    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p2, p1

    add-int/2addr p2, p4

    int-to-float v6, p2

    iget-object v7, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    return-void

    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 6

    .line 189
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    if-lez p4, :cond_8

    if-gtz p5, :cond_0

    goto/16 :goto_5

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 192
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p7, v0

    .line 193
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p8, v0

    .line 195
    nop

    .line 196
    nop

    .line 197
    const/4 v0, 0x5

    if-eq p6, v0, :cond_2

    const/4 v0, 0x6

    if-eq p6, v0, :cond_2

    const/4 v0, 0x7

    if-eq p6, v0, :cond_2

    const/4 v0, 0x4

    if-ne p6, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p4

    move v1, p5

    goto :goto_1

    .line 198
    :cond_2
    :goto_0
    nop

    .line 199
    move v1, p4

    move v0, p5

    .line 202
    :goto_1
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_3

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr p7, v2

    goto :goto_2

    .line 203
    :cond_3
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_4

    sub-int/2addr p7, v0

    .line 205
    :cond_4
    :goto_2
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_5

    div-int/lit8 p9, v1, 0x2

    sub-int/2addr p8, p9

    goto :goto_3

    .line 206
    :cond_5
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_6

    sub-int/2addr p8, v1

    .line 208
    :cond_6
    :goto_3
    const/4 p9, 0x0

    if-nez p6, :cond_7

    .line 209
    new-instance p6, Landroid/graphics/Rect;

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-direct {p6, p2, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    new-instance p2, Landroid/graphics/Rect;

    add-int/2addr p4, p7

    add-int/2addr p5, p8

    invoke-direct {p2, p7, p8, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 211
    iget-object p3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p3, p1, p6, p2, p9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 212
    return-void

    .line 215
    :cond_7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    neg-int p2, p2

    int-to-float p2, p2

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 218
    const/high16 p2, 0x42b40000    # 90.0f

    const/high16 p3, 0x43870000    # 270.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch p6, :pswitch_data_0

    goto :goto_4

    .line 240
    :pswitch_0
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 241
    int-to-float p3, p4

    invoke-virtual {v2, p3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 242
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 243
    int-to-float p2, p5

    invoke-virtual {v2, p2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 244
    goto :goto_4

    .line 236
    :pswitch_1
    invoke-virtual {v2, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 237
    int-to-float p2, p4

    invoke-virtual {v2, v5, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 238
    goto :goto_4

    .line 232
    :pswitch_2
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 233
    int-to-float p2, p5

    invoke-virtual {v2, p2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 234
    goto :goto_4

    .line 246
    :pswitch_3
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 247
    int-to-float p2, p4

    invoke-virtual {v2, p2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 248
    invoke-virtual {v2, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 249
    invoke-virtual {v2, v5, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 228
    :pswitch_4
    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 229
    int-to-float p2, p4

    int-to-float p3, p5

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 230
    goto :goto_4

    .line 220
    :pswitch_5
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 221
    int-to-float p2, p4

    invoke-virtual {v2, p2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 222
    goto :goto_4

    .line 224
    :pswitch_6
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 225
    int-to-float p2, p5

    invoke-virtual {v2, v5, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    nop

    .line 253
    :goto_4
    int-to-float p2, p7

    int-to-float p3, p8

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 255
    iget-object p2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 256
    iget-object p2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    add-int/2addr v0, p7

    add-int/2addr v1, p8

    invoke-virtual {p2, p7, p8, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 257
    iget-object p2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1, v2, p9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 258
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 259
    return-void

    .line 189
    :cond_8
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawRoundRect(IIIIII)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 115
    return-void
.end method

.method public drawString(Ljava/lang/String;III)V
    .locals 3

    .line 61
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p2, v0

    .line 65
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p3, v0

    .line 67
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 68
    and-int/lit8 v1, p4, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    int-to-float p2, p2

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_0

    .line 69
    :cond_1
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_2

    int-to-float p2, p2

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 72
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_3

    int-to-float p3, p3

    iget p4, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    goto :goto_1

    .line 73
    :cond_3
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_4

    int-to-float p3, p3

    iget p4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr p4, v0

    div-float/2addr p4, v2

    sub-float/2addr p3, p4

    float-to-int p3, p3

    goto :goto_1

    .line 74
    :cond_4
    and-int/lit8 p4, p4, 0x10

    if-eqz p4, :cond_5

    int-to-float p3, p3

    iget p4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    .line 76
    :cond_5
    :goto_1
    iget-object p4, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float p2, p2

    int-to-float p3, p3

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    return-void

    .line 61
    :cond_6
    :goto_2
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 5

    .line 276
    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    move v0, p1

    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    move v1, p2

    new-instance p2, Landroid/graphics/RectF;

    iget v2, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr v0, v4

    add-int/2addr v0, p3

    int-to-float p3, v0

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    int-to-float p4, v0

    invoke-direct {p2, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p3, p5

    int-to-float p4, p6

    const/4 p5, 0x1

    iget-object p6, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 281
    return-void

    .line 276
    :cond_1
    :goto_0
    return-void
.end method

.method public fillRect(IIII)V
    .locals 8

    .line 99
    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p1, v0

    add-int/2addr p1, p3

    int-to-float v5, p1

    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p2, p1

    add-int/2addr p2, p4

    int-to-float v6, p2

    iget-object v7, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    return-void

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 119
    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 2

    .line 284
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 285
    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p3, p1

    int-to-float p1, p3

    iget p2, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p4, p2

    int-to-float p2, p4

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p5, p1

    int-to-float p1, p5

    iget p2, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p6, p2

    int-to-float p2, p6

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 289
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 290
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    iget p2, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 292
    return-void
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 47
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getClipHeight()I
    .locals 1

    .line 167
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getClipWidth()I
    .locals 1

    .line 166
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getClipX()I
    .locals 2

    .line 164
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getClipY()I
    .locals 2

    .line 165
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 95
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    return v0
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .line 57
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->currentFont:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getTranslateX()I
    .locals 1

    .line 133
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .line 134
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    return v0
.end method

.method public setClip(IIII)V
    .locals 2

    .line 137
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr p1, v0

    .line 138
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p2, v0

    .line 139
    add-int/2addr p3, p1

    .line 140
    add-int/2addr p4, p2

    .line 141
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    :try_start_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->baseSaveCount:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 145
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->baseSaveCount:I

    .line 146
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 148
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 85
    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    .line 86
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->currentColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    return-void
.end method

.method public setColor(III)V
    .locals 0

    .line 91
    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xff

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 92
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 1

    .line 51
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Graphics;->currentFont:Ljavax/microedition/lcdui/Font;

    .line 52
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->currentFont:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    iget-object p1, p0, Ljavax/microedition/lcdui/Graphics;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->currentFont:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getPixelSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    return-void
.end method

.method public translate(II)V
    .locals 1

    .line 129
    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->transX:I

    .line 130
    iget p1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    add-int/2addr p1, p2

    iput p1, p0, Ljavax/microedition/lcdui/Graphics;->transY:I

    .line 131
    return-void
.end method
