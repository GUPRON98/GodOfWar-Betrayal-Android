.class public final Lc;
.super Ljava/lang/Object;


# instance fields
.field public a:S

.field public b:S

.field public c:S

.field public d:S

.field public e:S

.field public f:S

.field public g:S

.field public h:S

.field i:S

.field j:S

.field private k:Ljavax/microedition/lcdui/Image;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc;->k:Ljavax/microedition/lcdui/Image;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x2

    iget-short v0, p0, Lc;->a:S

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-short p1, p0, Lc;->c:S

    add-int/2addr v0, p1

    neg-int p1, v0

    return p1
.end method

.method public final a(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 10

    and-int/lit8 v6, p4, 0x3

    and-int/lit8 p4, v6, 0x2

    iget-short v0, p0, Lc;->a:S

    if-eqz p4, :cond_0

    iget-short p4, p0, Lc;->c:S

    add-int/2addr v0, p4

    neg-int v0, v0

    :cond_0
    add-int/2addr p2, v0

    and-int/lit8 p4, v6, 0x1

    iget-short v0, p0, Lc;->b:S

    if-eqz p4, :cond_1

    iget-short p4, p0, Lc;->d:S

    add-int/2addr v0, p4

    neg-int v0, v0

    :cond_1
    add-int/2addr p3, v0

    iget-short p4, p0, Lc;->c:S

    iget-short v0, p0, Lc;->d:S

    iget-short v1, p0, Lc;->i:S

    iget-short v2, p0, Lc;->j:S

    const/4 v3, 0x0

    if-gez v1, :cond_2

    add-int/2addr p4, v1

    add-int/2addr p2, v1

    const/4 v1, 0x0

    :cond_2
    move v7, p2

    if-gez v2, :cond_3

    add-int/2addr v0, v2

    add-int/2addr p3, v2

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    move v8, p3

    add-int p2, v1, p4

    iget-object p3, p0, Lc;->k:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    if-lez p2, :cond_4

    sub-int/2addr p4, p2

    :cond_4
    move v4, p4

    add-int p2, v3, v0

    iget-object p3, p0, Lc;->k:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    if-lez p2, :cond_5

    sub-int/2addr v0, p2

    :cond_5
    move v5, v0

    if-lez v4, :cond_6

    if-lez v5, :cond_6

    move v2, v1

    iget-object v1, p0, Lc;->k:Ljavax/microedition/lcdui/Image;

    const/16 v9, 0x14

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    :cond_6
    return-void
.end method

.method public final b(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x1

    iget-short v0, p0, Lc;->b:S

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-short p1, p0, Lc;->d:S

    add-int/2addr v0, p1

    neg-int p1, v0

    return p1
.end method
