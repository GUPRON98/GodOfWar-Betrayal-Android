.class public final La;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:Z

.field private C:[I

.field public a:[Lc;

.field public b:[I

.field public c:[S

.field public d:[S

.field public e:I

.field public f:I

.field public g:I

.field private final h:Z

.field private final i:I

.field private final j:I

.field private k:I

.field private l:I

.field private m:Ljavax/microedition/lcdui/Image;

.field private n:I

.field private o:[S

.field private final p:Z

.field private q:Ljavax/microedition/lcdui/Image;

.field private r:[C

.field private s:[C

.field private t:I

.field private u:I

.field private v:I

.field private w:[Lc;

.field private x:[I

.field private y:[I

.field private z:I


# direct methods
.method private constructor <init>(ZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, La;->h:Z

    iput p3, p0, La;->i:I

    iput p4, p0, La;->j:I

    iget-object p2, p0, La;->m:Ljavax/microedition/lcdui/Image;

    if-nez p2, :cond_0

    invoke-static {p3, p4}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object p2

    iput-object p2, p0, La;->m:Ljavax/microedition/lcdui/Image;

    iget-object p2, p0, La;->m:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    :cond_0
    iput-boolean p1, p0, La;->p:Z

    invoke-virtual {p0, p1}, La;->a(I)V

    return-void
.end method

.method public static a(II)La;
    .locals 2

    new-instance v0, La;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, La;-><init>(ZZII)V

    return-object v0
.end method

.method private a(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 28

    move-object/from16 v1, p0

    add-int v0, p2, p6

    add-int/lit8 v0, v0, -0x1

    iget v2, v1, La;->t:I

    div-int/2addr v0, v2

    iget v2, v1, La;->t:I

    div-int v2, p2, v2

    sub-int v2, v0, v2

    add-int v3, p3, p7

    add-int/lit8 v3, v3, -0x1

    iget v4, v1, La;->u:I

    div-int/2addr v3, v4

    iget v4, v1, La;->n:I

    mul-int v4, v4, v3

    add-int/2addr v0, v4

    iget v4, v1, La;->u:I

    div-int v4, p3, v4

    sub-int/2addr v3, v4

    iget v4, v1, La;->t:I

    rem-int v4, p2, v4

    iget v5, v1, La;->u:I

    rem-int v5, p3, v5

    add-int v6, v4, p6

    neg-int v6, v6

    iget v7, v1, La;->t:I

    rem-int/2addr v6, v7

    if-gez v6, :cond_0

    iget v7, v1, La;->t:I

    add-int/2addr v6, v7

    :cond_0
    add-int v7, v5, p7

    neg-int v7, v7

    iget v8, v1, La;->u:I

    rem-int/2addr v7, v8

    if-gez v7, :cond_1

    iget v8, v1, La;->u:I

    add-int/2addr v7, v8

    :cond_1
    sub-int v8, p4, v4

    iget v9, v1, La;->t:I

    mul-int v9, v9, v2

    add-int/2addr v8, v9

    sub-int v9, p5, v5

    iget v10, v1, La;->u:I

    mul-int v10, v10, v3

    add-int/2addr v9, v10

    move v10, v3

    :goto_0
    if-ltz v10, :cond_8

    move v12, v2

    move v11, v8

    move v8, v0

    :goto_1
    if-ltz v12, :cond_7

    :try_start_0
    iget-object v0, v1, La;->o:[S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v13, v8, -0x1

    :try_start_1
    aget-short v0, v0, v8

    and-int/lit16 v0, v0, 0xfff

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    const/4 v8, 0x0

    if-nez v12, :cond_2

    move v14, v4

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-ne v12, v2, :cond_3

    move v15, v6

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-nez v10, :cond_4

    move/from16 v16, v5

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    if-ne v10, v3, :cond_5

    move v8, v7

    :cond_5
    move/from16 p2, v0

    iget-boolean v0, v1, La;->p:Z

    if-nez v0, :cond_6

    iget-object v0, v1, La;->q:Ljavax/microedition/lcdui/Image;

    move-object/from16 v18, v0

    iget-object v0, v1, La;->r:[C

    aget-char v0, v0, p2

    add-int v19, v0, v14

    iget-object v0, v1, La;->s:[C

    aget-char v0, v0, p2

    add-int v20, v0, v16

    iget v0, v1, La;->t:I

    sub-int/2addr v0, v14

    sub-int v21, v0, v15

    iget v0, v1, La;->u:I

    sub-int v0, v0, v16

    sub-int v22, v0, v8

    add-int v24, v11, v14

    add-int v25, v9, v16

    const/16 v26, 0x14

    const/16 v23, 0x0

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v26}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_5
    move v8, v13

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_6
    iget v0, v1, La;->t:I

    sub-int/2addr v11, v0

    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v2, 0x1

    iget v12, v1, La;->n:I

    sub-int v12, v0, v12

    add-int/2addr v8, v12

    iget v12, v1, La;->t:I

    mul-int v12, v12, v0

    add-int v0, v11, v12

    iget v11, v1, La;->u:I

    sub-int/2addr v9, v11

    add-int/lit8 v10, v10, -0x1

    move/from16 v27, v8

    move v8, v0

    move/from16 v0, v27

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, La;->a:[Lc;

    iput-object v0, p0, La;->b:[I

    iput-object v0, p0, La;->c:[S

    iput-object v0, p0, La;->d:[S

    const/4 v0, -0x1

    iput v0, p0, La;->e:I

    iput v0, p0, La;->f:I

    iput v0, p0, La;->g:I

    if-lez p1, :cond_1

    new-array v1, p1, [Lc;

    iput-object v1, p0, La;->a:[Lc;

    new-array v1, p1, [I

    iput-object v1, p0, La;->b:[I

    new-array v1, p1, [S

    iput-object v1, p0, La;->c:[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, La;->c:[S

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    int-to-short v5, v3

    aput-short v5, v4, v2

    move v2, v3

    goto :goto_0

    :cond_0
    aput-short v0, v4, v3

    new-array p1, p1, [S

    iput-object p1, p0, La;->d:[S

    iput v1, p0, La;->g:I

    :cond_1
    return-void
.end method

.method public final a(III)V
    .locals 2

    iget-object v0, p0, La;->o:[S

    iget v1, p0, La;->n:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    int-to-short p1, p3

    aput-short p1, v0, p2

    return-void
.end method

.method public final a(IILjavax/microedition/lcdui/Image;II)V
    .locals 3

    const/4 p4, 0x0

    iput-object p4, p0, La;->o:[S

    iget-boolean p5, p0, La;->p:Z

    if-nez p5, :cond_0

    iput-object p4, p0, La;->q:Ljavax/microedition/lcdui/Image;

    iput-object p4, p0, La;->r:[C

    iput-object p4, p0, La;->s:[C

    :cond_0
    iput p1, p0, La;->n:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, La;->o:[S

    const/16 p1, 0x10

    iput p1, p0, La;->t:I

    iput p1, p0, La;->u:I

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result p2

    iget p4, p0, La;->t:I

    div-int p4, p1, p4

    iget p5, p0, La;->u:I

    div-int p5, p2, p5

    mul-int p4, p4, p5

    iget p5, p0, La;->t:I

    sub-int/2addr p1, p5

    iget p5, p0, La;->u:I

    sub-int/2addr p2, p5

    iget-boolean p5, p0, La;->p:Z

    if-nez p5, :cond_2

    iput-object p3, p0, La;->q:Ljavax/microedition/lcdui/Image;

    new-array p3, p4, [C

    iput-object p3, p0, La;->r:[C

    new-array p3, p4, [C

    iput-object p3, p0, La;->s:[C

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-gt p4, p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-gt v0, p1, :cond_1

    iget-object v1, p0, La;->r:[C

    int-to-char v2, v0

    aput-char v2, v1, p5

    iget-object v1, p0, La;->s:[C

    int-to-char v2, p4

    aput-char v2, v1, p5

    add-int/lit8 p5, p5, 0x1

    iget v1, p0, La;->t:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget v0, p0, La;->u:I

    add-int/2addr p4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(IZ)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, La;->v:I

    const/4 v1, 0x0

    iput-object v1, p0, La;->w:[Lc;

    iput-object v1, p0, La;->x:[I

    iput-object v1, p0, La;->y:[I

    iput v0, p0, La;->z:I

    const/4 v0, 0x1

    iput-boolean v0, p0, La;->A:Z

    iput-object v1, p0, La;->C:[I

    if-lez p1, :cond_0

    iput-boolean p2, p0, La;->B:Z

    new-array p2, p1, [Lc;

    iput-object p2, p0, La;->w:[Lc;

    new-array p2, p1, [I

    iput-object p2, p0, La;->x:[I

    new-array p2, p1, [I

    iput-object p2, p0, La;->y:[I

    new-array p1, p1, [I

    iput-object p1, p0, La;->C:[I

    :cond_0
    return-void
.end method

.method public final a(Lc;III)V
    .locals 4

    iget-object v0, p0, La;->w:[Lc;

    iget v1, p0, La;->v:I

    aput-object p1, v0, v1

    invoke-virtual {p1, p4}, Lc;->a(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p4}, Lc;->b(I)I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, La;->x:[I

    iget v1, p0, La;->v:I

    shl-int/lit8 v2, p2, 0x11

    shl-int/lit8 v3, p3, 0x11

    ushr-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    or-int/2addr p4, v2

    aput p4, v0, v1

    iget-object p4, p0, La;->y:[I

    iget v0, p0, La;->v:I

    iget-boolean v1, p0, La;->B:Z

    if-eqz v1, :cond_0

    move p2, p3

    :cond_0
    shl-int/lit8 p2, p2, 0x10

    iget p3, p0, La;->v:I

    or-int/2addr p2, p3

    aput p2, p4, v0

    iget p2, p0, La;->z:I

    iget-boolean p3, p0, La;->B:Z

    if-eqz p3, :cond_1

    iget-short p1, p1, Lc;->d:S

    goto :goto_0

    :cond_1
    iget-short p1, p1, Lc;->c:S

    :goto_0
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La;->z:I

    iget p1, p0, La;->v:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La;->v:I

    return-void
.end method

.method public final a(Ljavax/microedition/lcdui/Graphics;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, La;->h:Z

    if-nez v1, :cond_10

    iget v1, v0, La;->k:I

    iget v2, v0, La;->l:I

    iget v3, v0, La;->i:I

    iget v4, v0, La;->j:I

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v5

    const/4 v8, 0x0

    if-lez v5, :cond_0

    add-int/2addr v1, v5

    sub-int/2addr v3, v5

    move v6, v4

    move v4, v5

    goto :goto_0

    :cond_0
    move v6, v4

    const/4 v4, 0x0

    :goto_0
    add-int v7, v4, v3

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v7, v5

    if-lez v7, :cond_1

    sub-int/2addr v3, v7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v5

    if-lez v5, :cond_2

    add-int/2addr v2, v5

    sub-int/2addr v6, v5

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v5

    const/4 v5, 0x0

    :goto_1
    add-int v9, v5, v6

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v10

    add-int/2addr v7, v10

    sub-int/2addr v9, v7

    if-lez v9, :cond_3

    sub-int/2addr v6, v9

    :cond_3
    move v7, v6

    if-lez v3, :cond_10

    if-lez v7, :cond_10

    iget-object v6, v0, La;->o:[S

    if-eqz v6, :cond_4

    move v6, v3

    move v3, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, La;->a(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto :goto_2

    :cond_4
    move v6, v3

    move v3, v2

    move v2, v1

    move-object/from16 v1, p1

    :goto_2
    iget v9, v0, La;->v:I

    if-lez v9, :cond_b

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v9

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v10

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v11

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v12

    invoke-virtual {v1, v4, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-boolean v13, v0, La;->A:Z

    if-eqz v13, :cond_5

    iget-object v13, v0, La;->y:[I

    iget v14, v0, La;->v:I

    invoke-static {v13, v14}, Ld;->a([II)V

    iput-boolean v8, v0, La;->A:Z

    :cond_5
    add-int v13, v6, v2

    add-int v14, v7, v3

    iget-boolean v15, v0, La;->B:Z

    if-eqz v15, :cond_6

    move v15, v14

    goto :goto_3

    :cond_6
    move v15, v13

    :goto_3
    iget-object v8, v0, La;->y:[I

    move/from16 v17, v4

    iget v4, v0, La;->v:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v18, v5

    iget-boolean v5, v0, La;->B:Z

    if-eqz v5, :cond_7

    move/from16 v19, v3

    goto :goto_4

    :cond_7
    move/from16 v19, v2

    :goto_4
    iget v5, v0, La;->z:I

    sub-int v19, v19, v5

    shl-int/lit8 v5, v19, 0x10

    invoke-static {v8, v4, v5}, Ld;->a([III)I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    iget v8, v0, La;->v:I

    if-ge v4, v8, :cond_9

    iget-object v8, v0, La;->y:[I

    aget v8, v8, v4

    move/from16 v19, v4

    shr-int/lit8 v4, v8, 0x10

    if-ge v4, v15, :cond_9

    const v4, 0xffff

    and-int/2addr v4, v8

    iget-object v8, v0, La;->x:[I

    aget v8, v8, v4

    move/from16 v20, v4

    shr-int/lit8 v4, v8, 0x11

    shr-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    shr-int/lit8 v8, v8, 0x1

    if-ge v4, v13, :cond_8

    if-ge v8, v14, :cond_8

    move/from16 v21, v4

    iget-object v4, v0, La;->w:[Lc;

    aget-object v4, v4, v20

    move/from16 v22, v8

    iget-short v8, v4, Lc;->c:S

    add-int v8, v21, v8

    if-ge v2, v8, :cond_8

    iget-short v4, v4, Lc;->d:S

    add-int v8, v22, v4

    if-ge v3, v8, :cond_8

    iget-object v4, v0, La;->C:[I

    add-int/lit8 v8, v5, 0x1

    aput v20, v4, v5

    move v5, v8

    :cond_8
    add-int/lit8 v4, v19, 0x1

    goto :goto_5

    :cond_9
    iget-object v4, v0, La;->C:[I

    invoke-static {v4, v5}, Ld;->a([II)V

    sub-int v4, v2, v17

    sub-int v8, v3, v18

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_a

    iget-object v14, v0, La;->C:[I

    aget v14, v14, v13

    iget-object v15, v0, La;->w:[Lc;

    aget-object v15, v15, v14

    move/from16 v19, v4

    iget-object v4, v0, La;->x:[I

    aget v4, v4, v14

    and-int/lit8 v14, v4, 0x3

    shr-int/lit8 v20, v4, 0x11

    invoke-virtual {v15, v14}, Lc;->a(I)I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v21, v4

    sub-int v4, v20, v19

    move/from16 v20, v5

    shr-int/lit8 v5, v21, 0x1

    int-to-short v5, v5

    shr-int/lit8 v5, v5, 0x1

    invoke-virtual {v15, v14}, Lc;->b(I)I

    move-result v21

    sub-int v5, v5, v21

    sub-int/2addr v5, v8

    invoke-virtual {v15, v1, v4, v5, v14}, Lc;->a(Ljavax/microedition/lcdui/Graphics;III)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v19

    move/from16 v5, v20

    goto :goto_6

    :cond_a
    invoke-virtual {v1, v9, v10, v11, v12}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_7

    :cond_b
    move/from16 v17, v4

    move/from16 v18, v5

    :goto_7
    iget v4, v0, La;->e:I

    if-ltz v4, :cond_10

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v4

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v5

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v8

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v9

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-virtual {v1, v10, v11, v6, v7}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-boolean v12, v0, La;->h:Z

    if-nez v12, :cond_c

    iget v12, v0, La;->e:I

    move/from16 v16, v12

    goto :goto_8

    :cond_c
    const/16 v16, 0x0

    :goto_8
    add-int/2addr v6, v2

    add-int/2addr v7, v3

    sub-int v10, v2, v10

    sub-int v11, v3, v11

    :goto_9
    if-ltz v16, :cond_f

    iget-object v12, v0, La;->c:[S

    aget-short v12, v12, v16

    iget-object v13, v0, La;->b:[I

    aget v13, v13, v16

    shr-int/lit8 v14, v13, 0x11

    shr-int/lit8 v15, v13, 0x1

    int-to-short v15, v15

    shr-int/lit8 v15, v15, 0x1

    if-ge v14, v6, :cond_d

    if-ge v15, v7, :cond_d

    move/from16 v17, v6

    iget-object v6, v0, La;->a:[Lc;

    aget-object v6, v6, v16

    iget-short v0, v6, Lc;->c:S

    add-int/2addr v0, v14

    if-ge v2, v0, :cond_e

    iget-short v0, v6, Lc;->d:S

    add-int/2addr v0, v15

    if-ge v3, v0, :cond_e

    and-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v0}, Lc;->a(I)I

    move-result v13

    sub-int/2addr v14, v13

    sub-int/2addr v14, v10

    invoke-virtual {v6, v0}, Lc;->b(I)I

    move-result v13

    sub-int/2addr v15, v13

    sub-int/2addr v15, v11

    invoke-virtual {v6, v1, v14, v15, v0}, Lc;->a(Ljavax/microedition/lcdui/Graphics;III)V

    goto :goto_a

    :cond_d
    move/from16 v17, v6

    :cond_e
    :goto_a
    move-object/from16 v0, p0

    move/from16 v16, v12

    move/from16 v6, v17

    goto :goto_9

    :cond_f
    invoke-virtual {v1, v4, v5, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :cond_10
    return-void
.end method

.method public final b(II)V
    .locals 0

    iput p1, p0, La;->k:I

    iput p2, p0, La;->l:I

    return-void
.end method
