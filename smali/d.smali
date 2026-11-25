.class public abstract Ld;
.super Ljavax/microedition/lcdui/game/GameCanvas;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static K:[I

.field public static a:I

.field private static ah:Ljavax/microedition/lcdui/Image;

.field private static ai:Ljavax/microedition/lcdui/Image;

.field private static aj:Ljavax/microedition/lcdui/Image;

.field private static ak:Ljavax/microedition/lcdui/Image;

.field private static final al:[I

.field private static final am:[I

.field private static final an:[I

.field private static final ao:[I

.field private static final ap:[I

.field private static final aq:[I

.field public static b:I

.field public static c:I

.field public static i:B


# instance fields
.field private A:[[I

.field private B:[[C

.field private C:[[I

.field private D:[[I

.field private E:[[I

.field private F:[[C

.field private G:[[C

.field private H:Ljava/io/DataInputStream;

.field private I:[S

.field private J:I

.field private volatile L:I

.field private volatile M:I

.field private volatile N:I

.field private volatile O:I

.field private volatile P:I

.field private volatile Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Z

.field private aa:Z

.field private ab:Ljava/lang/Thread;

.field private volatile ac:Z

.field private volatile ad:Z

.field private volatile ae:J

.field private volatile af:I

.field private ag:I

.field public d:I

.field public e:I

.field f:Lf;

.field g:Z

.field protected h:[B

.field private j:J

.field private k:Ljavax/microedition/midlet/MIDlet;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:[I

.field private q:[B

.field private r:I

.field private s:[B

.field private t:[S

.field private u:[Lc;

.field private v:[C

.field private w:Ljavax/microedition/lcdui/Font;

.field private x:[S

.field private y:[[I

.field private z:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    sput v0, Ld;->a:I

    sput v0, Ld;->b:I

    sput v0, Ld;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v1, 0x20

    new-array v1, v1, [I

    sput-object v1, Ld;->K:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    sget-object v1, Ld;->K:[I

    const/4 v2, 0x2

    const/4 v3, -0x3

    aput v3, v1, v2

    sget-object v1, Ld;->K:[I

    const/4 v2, 0x3

    const/16 v3, 0x23

    aput v3, v1, v2

    sget-object v1, Ld;->K:[I

    const/4 v2, 0x4

    const/16 v3, -0x270c

    aput v3, v1, v2

    sget-object v1, Ld;->K:[I

    const/4 v2, 0x5

    const/4 v3, -0x4

    aput v3, v1, v2

    sget-object v1, Ld;->K:[I

    const/4 v2, 0x6

    const/4 v3, -0x2

    aput v3, v1, v2

    sget-object v1, Ld;->K:[I

    const/4 v2, -0x5

    const/16 v3, 0x8

    aput v2, v1, v3

    sget-object v1, Ld;->K:[I

    const/16 v2, 0x2a

    const/16 v4, 0xa

    aput v2, v1, v4

    sget-object v1, Ld;->K:[I

    const/16 v2, 0xb

    const/16 v5, -0xd

    aput v5, v1, v2

    sget-object v1, Ld;->K:[I

    const/16 v2, 0xc

    const/16 v5, -0xe

    aput v5, v1, v2

    sget-object v1, Ld;->K:[I

    const/16 v2, 0xf

    const/16 v5, -0x2707

    aput v5, v1, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    sget-object v2, Ld;->K:[I

    add-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v1, 0x30

    aput v6, v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ld;->K:[I

    const/16 v2, 0x1b

    const/4 v4, -0x6

    aput v4, v1, v2

    sget-object v1, Ld;->K:[I

    const/16 v2, 0x1d

    const/4 v4, -0x7

    aput v4, v1, v2

    sput-byte v0, Ld;->i:B

    const/4 v0, 0x0

    sput-object v0, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sput-object v0, Ld;->ai:Ljavax/microedition/lcdui/Image;

    sput-object v0, Ld;->aj:Ljavax/microedition/lcdui/Image;

    sput-object v0, Ld;->ak:Ljavax/microedition/lcdui/Image;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Ld;->al:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Ld;->am:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    sput-object v1, Ld;->an:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Ld;->ao:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    sput-object v1, Ld;->ap:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Ld;->aq:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0xa
        0x11
        0x15
        0x1c
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x3
        0x6
        0x3
        0x7
        0x3
        0x4
        0x3
        0x7
        0x3
        0x4
        0x3
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4
        0xa
        0x11
        0x15
        0x1c
        0x20
        0x27
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
        0x6
        0x3
        0x7
        0x3
        0x4
        0x3
        0x7
        0x3
        0x4
        0x3
        0x7
        0xa
        0x3
        0xa
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x4
        0x8
        0xe
        0x12
        0x19
        0x1c
        0x22
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x2
        0x4
        0x2
        0x6
        0x2
        0x4
        0x2
        0x7
        0x2
        0x3
        0x2
        0x6
        0x9
        0x3
        0x9
    .end array-data
.end method

.method public constructor <init>(Ljavax/microedition/midlet/MIDlet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/game/GameCanvas;-><init>(Z)V

    const/4 v1, -0x1

    iput v1, p0, Ld;->o:I

    invoke-static {v0, v0, v0}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Ld;->w:Ljavax/microedition/lcdui/Font;

    const/16 v0, 0xa

    iput v0, p0, Ld;->R:I

    iput v0, p0, Ld;->S:I

    const/16 v0, 0x64

    iput v0, p0, Ld;->T:I

    iput v1, p0, Ld;->af:I

    const/4 v0, 0x2

    iput v0, p0, Ld;->ag:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Canvas;->setFullScreenMode(Z)V

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getWidth()I

    move-result v0

    sput v0, Ld;->b:I

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getHeight()I

    move-result v0

    sput v0, Ld;->c:I

    iput-object p1, p0, Ld;->k:Ljavax/microedition/midlet/MIDlet;

    sget p1, Ld;->b:I

    sget v0, Ld;->c:I

    invoke-virtual {p0, p1, v0}, Ld;->c(II)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return p1
.end method

.method private a([CII)I
    .locals 3

    iget-object v0, p0, Ld;->u:[Lc;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    aget-char v0, p1, p2

    invoke-direct {p0, v0}, Ld;->b(C)Lc;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld;->u:[Lc;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-short v0, v0, Lc;->h:S

    goto :goto_1

    :cond_0
    iget-short v0, v0, Lc;->g:S

    :goto_1
    add-int/2addr v1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    if-nez p3, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Ld;->w:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Font;->charsWidth([CII)I

    move-result p1

    return p1
.end method

.method private a([I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Ld;->m()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    shl-int/lit8 v4, v1, 0x10

    or-int/2addr v4, v2

    aput v4, p1, v0

    add-int/2addr v1, v2

    move v0, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method static a([III)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    shr-int/lit8 v1, v1, 0x1

    aget v2, p0, v1

    if-ge v2, p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private a([BI[B)V
    .locals 4

    if-eqz p3, :cond_1

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-direct {v1, p1, p2, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-direct {p0, v0}, Ld;->b(Ljava/io/DataInputStream;)I

    iget v0, p0, Ld;->r:I

    add-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p3, v0

    aput-byte v3, p1, p2

    add-int/lit8 p2, v0, 0x1

    aput-byte v1, p3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p2

    move p2, v2

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    :cond_1
    return-void
.end method

.method public static a([II)V
    .locals 7

    add-int/lit8 v0, p1, -0x1

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    mul-int/lit16 p1, p1, 0xc5

    shr-int/lit8 p1, p1, 0x8

    :cond_1
    sub-int v2, v0, p1

    const/4 v3, 0x0

    move v4, v0

    :goto_0
    if-ltz v2, :cond_3

    aget v5, p0, v2

    aget v6, p0, v4

    if-le v5, v6, :cond_2

    aget v3, p0, v2

    aget v5, p0, v4

    aput v5, p0, v2

    aput v3, p0, v4

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_0

    if-gt p1, v1, :cond_0

    return-void
.end method

.method private static a([Ljava/lang/Object;[C[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-char v1, p1, v0

    aget-object v1, p0, v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(I[B)Z
    .locals 7

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->listRecordStores()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->deleteRecordStore(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-static {p0, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    array-length p0, p1

    const/high16 v3, 0xc0000

    add-int/2addr p0, v3

    sub-int/2addr p0, v2

    div-int/2addr p0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2
    if-gt v4, p0, :cond_3

    array-length v6, p1

    sub-int/2addr v6, v5

    if-le v6, v3, :cond_2

    const/high16 v6, 0xc0000

    :cond_2
    invoke-virtual {v1, p1, v5, v6}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :cond_4
    :goto_4
    return v0
.end method

.method public static a(I)[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v2, :cond_0

    invoke-virtual {p0, v4}, Ljavax/microedition/rms/RecordStore;->getRecordSize(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v5, [B

    :goto_1
    if-gt v3, v2, :cond_1

    invoke-virtual {p0, v3, v4, v1}, Ljavax/microedition/rms/RecordStore;->getRecord(I[BI)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v4

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :cond_2
    :goto_3
    return-object v0
.end method

.method private static a([SI)[S
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [S

    :cond_0
    array-length v1, p0

    if-le p1, v1, :cond_1

    new-array p1, p1, [S

    array-length v1, p0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method private static a([[CI)[[C
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [[C

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[C

    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    new-array p1, p1, [C

    aput-object p1, v1, p0

    return-object v1
.end method

.method private static a([[II)[[I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [[I

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[I

    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    new-array p1, p1, [I

    aput-object p1, v1, p0

    return-object v1
.end method

.method private b(Ljava/io/DataInputStream;)I
    .locals 4

    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    const/16 v0, 0x8

    iput v0, p0, Ld;->r:I

    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget v3, p0, Ld;->r:I

    add-int/2addr v3, v0

    iput v3, p0, Ld;->r:I

    const v3, 0x504c5445

    if-ne v3, v2, :cond_0

    return v1

    :cond_0
    const v3, 0x49454e44    # 808164.25f

    if-ne v3, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x4

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Ljava/io/DataInputStream;->skip(J)J

    iget v2, p0, Ld;->r:I

    add-int/2addr v2, v1

    iput v2, p0, Ld;->r:I

    goto :goto_0
.end method

.method private b(C)Lc;
    .locals 4

    iget-object v0, p0, Ld;->u:[Lc;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ld;->u:[Lc;

    aget-object v3, v3, v2

    iget-short v3, v3, Lc;->e:S

    int-to-char v3, v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ld;->u:[Lc;

    aget-object p1, p1, v2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(IZ)V
    .locals 4

    if-eqz p1, :cond_3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    sget-object v2, Ld;->K:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Ld;->K:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    shl-int v2, v0, v1

    if-eqz p2, :cond_0

    iget v3, p0, Ld;->O:I

    or-int/2addr v3, v2

    iput v3, p0, Ld;->O:I

    iget v3, p0, Ld;->P:I

    or-int/2addr v3, v2

    iput v3, p0, Ld;->P:I

    iget v3, p0, Ld;->Q:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Ld;->Q:I

    goto :goto_1

    :cond_0
    iget v3, p0, Ld;->Q:I

    or-int/2addr v2, v3

    iput v2, p0, Ld;->Q:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method private b([I)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v2

    invoke-direct {p0}, Ld;->m()I

    move-result v5

    shl-int/lit8 v5, v5, 0x16

    or-int/2addr v4, v5

    aput v4, p1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v2

    invoke-direct {p0}, Ld;->n()I

    move-result v5

    shl-int/lit8 v5, v5, 0x16

    ushr-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    aput v4, p1, v2

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v1

    invoke-direct {p0}, Ld;->n()I

    move-result v4

    shl-int/lit8 v4, v4, 0x16

    ushr-int/lit8 v4, v4, 0x14

    or-int/2addr v3, v4

    aput v3, p1, v1

    move v1, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method private l(I)Ljava/io/DataInputStream;
    .locals 5

    invoke-direct {p0, p1}, Ld;->n(I)V

    and-int/lit16 p1, p1, 0x3ff

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ld;->q:[B

    invoke-direct {p0, p1}, Ld;->m(I)I

    move-result v3

    iget-object v4, p0, Ld;->p:[I

    aget p1, v4, p1

    invoke-direct {v1, v2, v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private m()I
    .locals 2

    iget-object v0, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    :cond_0
    return v0
.end method

.method private m(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Ld;->p:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private n()I
    .locals 2

    iget-object v0, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    :cond_0
    return v0
.end method

.method private n(I)V
    .locals 4

    shr-int/lit8 p1, p1, 0xa

    if-eqz p1, :cond_2

    iget v0, p0, Ld;->o:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/RP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/microedition/lcdui/ResourceLoader;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Ld;->a(Ljava/io/DataInputStream;)Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld;->a(Ljava/io/DataInputStream;)Z

    :goto_0
    iput p1, p0, Ld;->o:I

    :cond_2
    :goto_1
    return-void
.end method

.method private o(I)V
    .locals 1

    iget-object v0, p0, Ld;->v:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->v:[C

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-array p1, p1, [C

    iput-object p1, p0, Ld;->v:[C

    :cond_1
    return-void
.end method

.method private p(I)I
    .locals 3

    iget-object v0, p0, Ld;->I:[S

    if-eqz v0, :cond_null

    iget-object v1, p0, Ld;->y:[[I

    if-nez v1, :cond_ok

    :cond_null
    const/4 v0, 0x0

    return v0

    :cond_ok
    shl-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Ld;->I:[S

    aget-short v0, v0, p1

    iput v0, p0, Ld;->J:I

    iget-object v0, p0, Ld;->I:[S

    add-int/lit8 v1, p1, 0x1

    aget-short v0, v0, v1

    iget-object v1, p0, Ld;->y:[[I

    iget v2, p0, Ld;->J:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    ushr-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Ld;->I:[S

    add-int/lit8 p1, p1, 0x7

    aget-short p1, v1, p1

    add-int/2addr v0, p1

    iget-object p1, p0, Ld;->A:[[I

    iget v1, p0, Ld;->J:I

    aget-object p1, p1, v1

    aget p1, p1, v0

    ushr-int/lit8 p1, p1, 0x16

    return p1
.end method


# virtual methods
.method public final a(C)I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld;->o(I)V

    iget-object v1, p0, Ld;->v:[C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    iget-object p1, p0, Ld;->v:[C

    invoke-direct {p0, p1, v2, v0}, Ld;->a([CII)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ld;->o(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ld;->v:[C

    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v2, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3, v1, v0}, Ld;->a([CII)I

    move-result p1

    return p1
.end method

.method public final a([SII)I
    .locals 11

    if-eqz p1, :cond_null_a

    invoke-direct {p0, p2}, Ld;->p(I)I

    move-result p2

    iget-object v0, p0, Ld;->C:[[I

    if-eqz v0, :cond_null_a

    iget-object v1, p0, Ld;->D:[[I

    if-eqz v1, :cond_null_a

    iget v2, p0, Ld;->J:I

    if-ltz v2, :cond_null_a

    array-length v3, v0

    if-ge v2, v3, :cond_null_a

    array-length v3, v1

    if-ge v2, v3, :cond_null_a

    aget-object v0, v0, v2

    if-eqz v0, :cond_null_a

    aget-object v1, v1, v2

    if-eqz v1, :cond_null_a

    if-ltz p2, :cond_null_a

    array-length v2, v0

    if-ge p2, v2, :cond_null_a

    aget p2, v0, p2

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 p2, p2, 0xff

    add-int v2, v0, p2

    goto :goto_start

    :cond_null_a
    const/4 v0, 0x0

    return v0

    :goto_start

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    add-int/lit8 v4, v3, 0x3

    array-length v5, p1

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v0, 0x1

    aget v0, v1, v0

    add-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v6, v0, 0x16

    int-to-short v6, v6

    aput-short v6, p1, v3

    and-int/lit8 v3, v0, 0x3

    xor-int/2addr v3, p3

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v7, v3, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    :goto_1
    shl-int/lit8 v10, v0, 0xa

    shr-int/lit8 v10, v10, 0x16

    mul-int v7, v7, v10

    int-to-short v7, v7

    aput-short v7, p1, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x1

    :goto_2
    shl-int/lit8 v0, v0, 0x14

    shr-int/lit8 v0, v0, 0x16

    mul-int v8, v8, v0

    int-to-short v0, v8

    aput-short v0, p1, v6

    add-int/lit8 v0, v5, 0x1

    int-to-short v3, v3

    aput-short v3, p1, v5

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    return p2
.end method

.method public abstract a()V
.end method

.method public final a(II)V
    .locals 3

    shl-int/lit8 p1, p1, 0x3

    shl-int/lit8 p2, p2, 0x3

    iget-object v0, p0, Ld;->I:[S

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, v1}, Ld;->a([SI)[S

    move-result-object v0

    iput-object v0, p0, Ld;->I:[S

    iget-object v0, p0, Ld;->I:[S

    iget-object v1, p0, Ld;->I:[S

    const/16 v2, 0x8

    invoke-static {v0, p1, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final a(III)V
    .locals 4

    const/4 v0, -0x1

    :cond_0
    iget-object v1, p0, Ld;->x:[S

    add-int/lit8 v0, v0, 0x1

    aget-short v1, v1, v0

    and-int/lit16 v1, v1, 0x7fff

    if-ne p2, v1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 v1, p1, 0x8

    invoke-static {p2, v1}, Ld;->a([SI)[S

    move-result-object p2

    iput-object p2, p0, Ld;->I:[S

    iget-object p2, p0, Ld;->I:[S

    int-to-short v1, v0

    aput-short v1, p2, p1

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 v1, p1, 0x1

    int-to-short v2, p3

    aput-short v2, p2, v1

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    aput-short v2, p2, v1

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 v1, p1, 0x3

    iget-object v3, p0, Ld;->y:[[I

    aget-object v0, v3, v0

    aget p3, v0, p3

    shl-int/lit8 p3, p3, 0x10

    shr-int/lit8 p3, p3, 0x1a

    int-to-short p3, p3

    aput-short p3, p2, v1

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 p3, p1, 0x4

    aput-short v2, p2, p3

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 p3, p1, 0x5

    aput-short v2, p2, p3

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 p3, p1, 0x6

    aput-short v2, p2, p3

    iget-object p2, p0, Ld;->I:[S

    add-int/lit8 p1, p1, 0x7

    aput-short v2, p2, p1

    return-void
.end method

.method public final a(IZ)V
    .locals 2

    const/4 p2, -0x1

    :cond_0
    iget-object v0, p0, Ld;->x:[S

    add-int/lit8 p2, p2, 0x1

    aget-short v0, v0, p2

    and-int/lit16 v0, v0, 0x7fff

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ld;->x:[S

    aget-short v0, p1, p2

    const v1, 0x8000

    or-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    return-void
.end method

.method public abstract a(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public final a(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 2

    iget p2, p0, Ld;->X:I

    iget v0, p0, Ld;->Y:I

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    add-int/lit8 p2, p4, 0x0

    iget v1, p0, Ld;->V:I

    sub-int/2addr p2, v1

    if-lez p2, :cond_0

    sub-int/2addr p4, p2

    :cond_0
    if-gez p3, :cond_1

    add-int/2addr p5, p3

    const/4 p3, 0x0

    :cond_1
    add-int p2, p3, p5

    iget v1, p0, Ld;->W:I

    sub-int/2addr p2, v1

    if-lez p2, :cond_2

    sub-int/2addr p5, p2

    :cond_2
    invoke-virtual {p1, v0, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return-void
.end method

.method public final a(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;III)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v0, v11}, Ld;->o(I)V

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v13, v0, Ld;->v:[C

    if-ge v1, v11, :cond_0

    add-int/lit8 v2, v1, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p5, 0x40

    const/4 v14, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Ld;->u:[Lc;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ld;->u:[Lc;

    aget-object v1, v1, v14

    iget-short v1, v1, Lc;->h:S

    goto :goto_1

    :cond_1
    iget-object v1, v0, Ld;->w:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getBaselinePosition()I

    move-result v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, p5, 0x20

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ld;->b()I

    move-result v1

    :goto_1
    sub-int v1, p4, v1

    move v15, v1

    goto :goto_2

    :cond_3
    move/from16 v15, p4

    :goto_2
    and-int/lit8 v1, p5, 0x9

    if-eqz v1, :cond_4

    invoke-direct {v0, v13, v12, v11}, Ld;->a([CII)I

    move-result v1

    and-int/lit8 v2, p5, 0x1

    shr-int/2addr v1, v2

    sub-int v1, p3, v1

    move v5, v1

    goto :goto_3

    :cond_4
    move/from16 v5, p3

    :goto_3
    iget-object v1, v0, Ld;->u:[Lc;

    if-eqz v1, :cond_8

    move v8, v5

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v11, :cond_a

    aget-char v2, v13, v1

    const/16 v3, 0x7b

    const/16 v16, 0x2

    if-le v2, v3, :cond_5

    aget-char v17, v13, v1

    sget-byte v2, Ld;->i:B

    packed-switch v2, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    sget-object v2, Ld;->ak:Ljavax/microedition/lcdui/Image;

    goto :goto_5

    :pswitch_1
    sget-object v2, Ld;->aj:Ljavax/microedition/lcdui/Image;

    goto :goto_5

    :pswitch_2
    sget-object v2, Ld;->ai:Ljavax/microedition/lcdui/Image;

    :goto_5
    sput-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    :goto_6
    const/16 v2, 0x8

    const/16 v3, 0xb

    const/16 v4, 0x9

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/16 v18, 0x3

    packed-switch v17, :pswitch_data_1

    :pswitch_3
    move/from16 v19, v1

    :goto_7
    move-object/from16 v1, p1

    goto/16 :goto_24

    :pswitch_4
    sget-byte v2, Ld;->i:B

    packed-switch v2, :pswitch_data_2

    move/from16 v19, v1

    :goto_8
    move/from16 v18, v8

    goto/16 :goto_b

    :pswitch_5
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v3, Ld;->ap:[I

    aget v3, v3, v12

    sget-object v4, Ld;->aq:[I

    aget v5, v4, v12

    sget-object v4, Ld;->aq:[I

    aget v6, v4, v14

    add-int/lit8 v9, v15, 0x1

    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v19, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_8

    :pswitch_6
    move/from16 v19, v1

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v14

    add-int/lit8 v9, v15, 0x3

    goto :goto_9

    :pswitch_7
    move/from16 v19, v1

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v12

    sget-object v1, Ld;->am:[I

    aget v5, v1, v12

    sget-object v1, Ld;->am:[I

    aget v6, v1, v14

    add-int/lit8 v9, v15, 0x2

    :goto_9
    const/16 v10, 0x24

    goto/16 :goto_23

    :pswitch_8
    move/from16 v19, v1

    move/from16 v18, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_3

    goto :goto_b

    :pswitch_9
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v1, v1, v9

    sget-object v4, Ld;->aq:[I

    aget v5, v4, v7

    sget-object v4, Ld;->aq:[I

    aget v6, v4, v3

    add-int/lit8 v8, v18, 0x2

    add-int/lit8 v9, v15, 0xa

    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_b

    :pswitch_a
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v1, v1, v9

    sget-object v4, Ld;->ao:[I

    aget v5, v4, v7

    sget-object v4, Ld;->ao:[I

    aget v6, v4, v3

    add-int/lit8 v8, v18, 0x2

    add-int/lit8 v9, v15, 0xe

    goto :goto_a

    :pswitch_b
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v1, v1, v9

    sget-object v4, Ld;->am:[I

    aget v5, v4, v7

    sget-object v4, Ld;->am:[I

    aget v6, v4, v3

    add-int/lit8 v8, v18, 0x2

    add-int/lit8 v9, v15, 0xd

    :goto_a
    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_c

    :goto_b
    move-object/from16 v1, p1

    :goto_c
    move/from16 v8, v18

    goto/16 :goto_24

    :pswitch_c
    move/from16 v19, v1

    move/from16 v18, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_4

    move/from16 v20, v18

    goto/16 :goto_1e

    :pswitch_d
    const/16 v1, 0x8

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v3, Ld;->ap:[I

    aget v3, v3, v10

    sget-object v5, Ld;->aq:[I

    aget v5, v5, v1

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v4

    add-int/lit8 v9, v15, 0x1

    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    move/from16 v20, v8

    goto/16 :goto_1e

    :pswitch_e
    move/from16 v20, v18

    const/16 v1, 0x8

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v3, Ld;->an:[I

    aget v3, v3, v10

    sget-object v5, Ld;->ao:[I

    aget v5, v5, v1

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v4

    goto/16 :goto_10

    :pswitch_f
    move/from16 v20, v18

    const/16 v1, 0x8

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v3, Ld;->al:[I

    aget v3, v3, v10

    sget-object v5, Ld;->am:[I

    aget v5, v5, v1

    sget-object v1, Ld;->am:[I

    aget v6, v1, v4

    goto/16 :goto_14

    :pswitch_10
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_5

    goto/16 :goto_1e

    :pswitch_11
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v16

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v10

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v9

    :goto_d
    add-int/lit8 v8, v20, 0x1

    :goto_e
    add-int/lit8 v9, v15, 0x1

    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_f
    move-object/from16 v1, p1

    goto/16 :goto_19

    :pswitch_12
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v16

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v10

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v9

    goto/16 :goto_10

    :pswitch_13
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v16

    sget-object v1, Ld;->am:[I

    aget v5, v1, v10

    sget-object v1, Ld;->am:[I

    aget v6, v1, v9

    goto/16 :goto_14

    :pswitch_14
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_6

    goto/16 :goto_1e

    :pswitch_15
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v14

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v16

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v18

    goto :goto_d

    :pswitch_16
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v14

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v16

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v18

    goto/16 :goto_10

    :pswitch_17
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v14

    sget-object v1, Ld;->am:[I

    aget v5, v1, v16

    sget-object v1, Ld;->am:[I

    aget v6, v1, v18

    goto/16 :goto_14

    :pswitch_18
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_7

    goto/16 :goto_1e

    :pswitch_19
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v12

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v12

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v14

    add-int/lit8 v8, v20, 0x2

    goto :goto_e

    :pswitch_1a
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v14

    add-int/lit8 v8, v20, 0x2

    goto :goto_11

    :pswitch_1b
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v12

    sget-object v1, Ld;->am:[I

    aget v5, v1, v12

    sget-object v1, Ld;->am:[I

    aget v6, v1, v14

    goto/16 :goto_15

    :pswitch_1c
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_8

    goto/16 :goto_1e

    :pswitch_1d
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v18

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v5

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v6

    goto/16 :goto_d

    :pswitch_1e
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v18

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v5

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v6

    :goto_10
    add-int/lit8 v8, v20, 0x1

    :goto_11
    add-int/lit8 v9, v15, 0x3

    goto/16 :goto_1c

    :pswitch_1f
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v18

    sget-object v1, Ld;->am:[I

    aget v5, v1, v5

    sget-object v1, Ld;->am:[I

    aget v6, v1, v6

    goto/16 :goto_14

    :pswitch_20
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_9

    goto/16 :goto_1e

    :pswitch_21
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v12

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v12

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v14

    :goto_12
    add-int/lit8 v8, v20, 0x1

    goto/16 :goto_18

    :pswitch_22
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v14

    goto/16 :goto_15

    :pswitch_23
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v12

    sget-object v1, Ld;->am:[I

    aget v5, v1, v12

    sget-object v1, Ld;->am:[I

    aget v6, v1, v14

    goto/16 :goto_16

    :pswitch_24
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_a

    goto/16 :goto_1e

    :pswitch_25
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v1, v1, v9

    sget-object v4, Ld;->aq:[I

    aget v5, v4, v7

    sget-object v4, Ld;->aq:[I

    aget v6, v4, v3

    add-int/lit8 v8, v20, 0x3

    add-int/lit8 v9, v15, 0xa

    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v3, v1

    goto/16 :goto_f

    :pswitch_26
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v1, v1, v9

    sget-object v4, Ld;->ao:[I

    aget v5, v4, v7

    sget-object v4, Ld;->ao:[I

    aget v6, v4, v3

    add-int/lit8 v8, v20, 0x3

    add-int/lit8 v9, v15, 0xe

    goto :goto_13

    :pswitch_27
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v1, v1, v9

    sget-object v4, Ld;->am:[I

    aget v5, v4, v7

    sget-object v4, Ld;->am:[I

    aget v6, v4, v3

    add-int/lit8 v8, v20, 0x3

    add-int/lit8 v9, v15, 0xd

    :goto_13
    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v3, v1

    goto/16 :goto_1d

    :pswitch_28
    move/from16 v19, v1

    move/from16 v20, v8

    const/16 v1, 0x8

    sget-byte v2, Ld;->i:B

    packed-switch v2, :pswitch_data_b

    goto/16 :goto_1e

    :pswitch_29
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v3, Ld;->ap:[I

    aget v3, v3, v10

    sget-object v5, Ld;->aq:[I

    aget v5, v5, v1

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v4

    goto/16 :goto_12

    :pswitch_2a
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v3, Ld;->an:[I

    aget v3, v3, v10

    sget-object v5, Ld;->ao:[I

    aget v5, v5, v1

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v4

    :goto_14
    add-int/lit8 v8, v20, 0x1

    goto/16 :goto_1a

    :pswitch_2b
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v3, Ld;->al:[I

    aget v3, v3, v10

    sget-object v5, Ld;->am:[I

    aget v5, v5, v1

    sget-object v1, Ld;->am:[I

    aget v6, v1, v4

    add-int/lit8 v8, v20, 0x1

    goto/16 :goto_1b

    :pswitch_2c
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_c

    goto/16 :goto_1e

    :pswitch_2d
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v16

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v10

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v9

    goto/16 :goto_17

    :pswitch_2e
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v16

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v10

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v9

    goto :goto_15

    :pswitch_2f
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v16

    sget-object v1, Ld;->am:[I

    aget v5, v1, v10

    sget-object v1, Ld;->am:[I

    aget v6, v1, v9

    goto :goto_16

    :pswitch_30
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_d

    goto/16 :goto_1e

    :pswitch_31
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v14

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v16

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v18

    goto/16 :goto_17

    :pswitch_32
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v14

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v16

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v18

    :goto_15
    add-int/lit8 v8, v20, 0x2

    goto/16 :goto_1a

    :pswitch_33
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v14

    sget-object v1, Ld;->am:[I

    aget v5, v1, v16

    sget-object v1, Ld;->am:[I

    aget v6, v1, v18

    :goto_16
    add-int/lit8 v8, v20, 0x2

    goto/16 :goto_1b

    :pswitch_34
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_e

    goto/16 :goto_1e

    :pswitch_35
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v12

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v12

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v14

    add-int/lit8 v8, v20, 0x3

    goto :goto_18

    :pswitch_36
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v12

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v14

    add-int/lit8 v8, v20, 0x4

    goto :goto_1a

    :pswitch_37
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v12

    sget-object v1, Ld;->am:[I

    aget v5, v1, v12

    sget-object v1, Ld;->am:[I

    aget v6, v1, v14

    add-int/lit8 v8, v20, 0x4

    goto :goto_1b

    :pswitch_38
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    packed-switch v1, :pswitch_data_f

    goto :goto_1e

    :pswitch_39
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->ap:[I

    aget v3, v1, v18

    sget-object v1, Ld;->aq:[I

    aget v5, v1, v5

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v6

    :goto_17
    add-int/lit8 v8, v20, 0x2

    :goto_18
    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move v9, v15

    :goto_19
    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_1e

    :pswitch_3a
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->an:[I

    aget v3, v1, v18

    sget-object v1, Ld;->ao:[I

    aget v5, v1, v5

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v6

    add-int/lit8 v8, v20, 0x3

    :goto_1a
    add-int/lit8 v9, v15, 0x2

    goto :goto_1c

    :pswitch_3b
    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v1, Ld;->al:[I

    aget v3, v1, v18

    sget-object v1, Ld;->am:[I

    aget v5, v1, v5

    sget-object v1, Ld;->am:[I

    aget v6, v1, v6

    add-int/lit8 v8, v20, 0x3

    :goto_1b
    add-int/lit8 v9, v15, 0x1

    :goto_1c
    const/16 v10, 0x24

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1d
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_1f

    :goto_1e
    move-object/from16 v1, p1

    :goto_1f
    move/from16 v8, v20

    goto/16 :goto_24

    :pswitch_3c
    move/from16 v19, v1

    move/from16 v20, v8

    sget-byte v1, Ld;->i:B

    const/16 v2, 0xc

    const/16 v3, 0xd

    packed-switch v1, :pswitch_data_10

    move/from16 v8, v20

    goto/16 :goto_7

    :pswitch_3d
    const/16 v1, 0xc

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v4, Ld;->ap:[I

    aget v4, v4, v5

    sget-object v5, Ld;->aq:[I

    aget v5, v5, v1

    sget-object v1, Ld;->aq:[I

    aget v6, v1, v3

    add-int/lit8 v9, v15, 0x9

    const/16 v10, 0x24

    move v3, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v8, v20

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto/16 :goto_7

    :pswitch_3e
    move/from16 v8, v20

    const/16 v1, 0xc

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v4, Ld;->an:[I

    aget v4, v4, v5

    sget-object v5, Ld;->ao:[I

    aget v5, v5, v1

    sget-object v1, Ld;->ao:[I

    aget v6, v1, v3

    goto :goto_20

    :pswitch_3f
    move/from16 v8, v20

    const/16 v1, 0xc

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v4, Ld;->al:[I

    aget v4, v4, v5

    sget-object v5, Ld;->am:[I

    aget v5, v5, v1

    sget-object v1, Ld;->am:[I

    aget v6, v1, v3

    :goto_20
    add-int/lit8 v9, v15, 0xb

    goto :goto_22

    :pswitch_40
    move/from16 v19, v1

    sget-byte v1, Ld;->i:B

    const/16 v2, 0xf

    const/16 v3, 0xe

    packed-switch v1, :pswitch_data_11

    goto/16 :goto_7

    :pswitch_41
    const/16 v1, 0xf

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v4, Ld;->ap:[I

    aget v4, v4, v6

    sget-object v5, Ld;->aq:[I

    aget v5, v5, v3

    sget-object v3, Ld;->aq:[I

    aget v6, v3, v1

    goto :goto_21

    :pswitch_42
    const/16 v1, 0xf

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v4, Ld;->an:[I

    aget v4, v4, v6

    sget-object v5, Ld;->ao:[I

    aget v5, v5, v3

    sget-object v3, Ld;->ao:[I

    aget v6, v3, v1

    add-int/lit8 v9, v15, 0xc

    goto :goto_22

    :pswitch_43
    const/16 v1, 0xf

    sget-object v2, Ld;->ah:Ljavax/microedition/lcdui/Image;

    sget-object v4, Ld;->al:[I

    aget v4, v4, v6

    sget-object v5, Ld;->am:[I

    aget v5, v5, v3

    sget-object v3, Ld;->am:[I

    aget v6, v3, v1

    :goto_21
    add-int/lit8 v9, v15, 0xa

    :goto_22
    const/16 v10, 0x24

    move v3, v4

    :goto_23
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    :goto_24
    packed-switch v17, :pswitch_data_12

    :pswitch_44
    goto :goto_25

    :pswitch_45
    const/16 v17, 0x75

    goto :goto_25

    :pswitch_46
    const/16 v17, 0x6f

    goto :goto_25

    :pswitch_47
    const/16 v17, 0x6e

    goto :goto_25

    :pswitch_48
    const/16 v17, 0x69

    goto :goto_25

    :pswitch_49
    const/16 v17, 0x65

    goto :goto_25

    :pswitch_4a
    const/16 v17, 0x63

    goto :goto_25

    :pswitch_4b
    const/16 v17, 0x61

    goto :goto_25

    :pswitch_4c
    const/16 v17, 0x55

    goto :goto_25

    :pswitch_4d
    const/16 v17, 0x4f

    goto :goto_25

    :pswitch_4e
    const/16 v17, 0x4e

    goto :goto_25

    :pswitch_4f
    const/16 v17, 0x49

    goto :goto_25

    :pswitch_50
    const/16 v17, 0x45

    goto :goto_25

    :pswitch_51
    const/16 v17, 0x43

    goto :goto_25

    :pswitch_52
    const/16 v17, 0x41

    :goto_25
    aput-char v17, v13, v19

    goto :goto_26

    :cond_5
    move/from16 v19, v1

    move-object/from16 v1, p1

    :goto_26
    aget-char v2, v13, v19

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_6

    add-int/lit8 v8, v8, 0x3

    :cond_6
    aget-char v2, v13, v19

    invoke-direct {v0, v2}, Ld;->b(C)Lc;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1, v8, v15, v12}, Lc;->a(Ljavax/microedition/lcdui/Graphics;III)V

    iget-short v2, v2, Lc;->g:S

    goto :goto_27

    :cond_7
    iget-object v2, v0, Ld;->u:[Lc;

    aget-object v2, v2, v16

    iget-short v2, v2, Lc;->h:S

    :goto_27
    add-int/2addr v8, v2

    add-int/lit8 v2, v19, 0x1

    move v1, v2

    goto/16 :goto_4

    :cond_8
    move-object/from16 v1, p1

    if-eqz v11, :cond_a

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v2

    iget-object v3, v0, Ld;->w:Ljavax/microedition/lcdui/Font;

    if-eq v2, v3, :cond_9

    iget-object v2, v0, Ld;->w:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    :cond_9
    const/4 v3, 0x0

    const/16 v7, 0x14

    move v4, v11

    move-object v2, v13

    move v6, v15

    invoke-virtual/range {v1 .. v7}, Ljavax/microedition/lcdui/Graphics;->drawChars([CIIIII)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_40
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_28
        :pswitch_38
        :pswitch_20
        :pswitch_30
        :pswitch_28
        :pswitch_3
        :pswitch_2c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_3
        :pswitch_3
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_28
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_c
        :pswitch_1c
        :pswitch_4
        :pswitch_14
        :pswitch_c
        :pswitch_3
        :pswitch_10
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0xc0
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_44
        :pswitch_44
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_44
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_44
        :pswitch_44
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_44
        :pswitch_44
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_44
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_44
        :pswitch_44
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public final a(Ljavax/microedition/lcdui/Graphics;[Lc;IIII)V
    .locals 7

    invoke-direct {p0, p3}, Ld;->p(I)I

    move-result p3

    iget-object v0, p0, Ld;->C:[[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld;->D:[[I

    if-eqz v1, :cond_0

    iget v2, p0, Ld;->J:I

    if-ltz v2, :cond_0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    array-length v3, v0

    if-ge p3, v3, :cond_0

    aget p3, v0, p3

    ushr-int/lit8 v0, p3, 0x10

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p3, v0

    :goto_0
    if-ge v0, p3, :cond_0

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    shl-int/lit8 v3, v0, 0xa

    shr-int/lit8 v3, v3, 0x16

    shl-int/lit8 v4, v0, 0x14

    shr-int/lit8 v4, v4, 0x16

    ushr-int/lit8 v5, v0, 0x16

    if-eqz p2, :cond_skip

    array-length v6, p2

    if-ge v5, v6, :cond_skip

    aget-object v5, p2, v5

    if-eqz v5, :cond_skip

    iget-short v6, v5, Lc;->a:S

    add-int/2addr v6, v3

    int-to-short v6, v6

    iput-short v6, v5, Lc;->a:S

    iget-short v6, v5, Lc;->b:S

    add-int/2addr v6, v4

    int-to-short v6, v6

    iput-short v6, v5, Lc;->b:S

    and-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, p6

    invoke-virtual {v5, p1, p4, p5, v0}, Lc;->a(Ljavax/microedition/lcdui/Graphics;III)V

    iget-short v0, v5, Lc;->a:S

    sub-int/2addr v0, v3

    int-to-short v0, v0

    iput-short v0, v5, Lc;->a:S

    iget-short v0, v5, Lc;->b:S

    sub-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, v5, Lc;->b:S

    :cond_skip
    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method final declared-synchronized a(Z)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Ld;->l:Z

    if-nez v0, :cond_7

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/16 v2, -0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Ld;->g:Z

    int-to-byte p1, p1

    iget-boolean v5, p0, Ld;->m:Z

    int-to-byte v5, v5

    iget-boolean v6, p0, Ld;->n:Z

    int-to-byte v6, v6

    new-array v1, v1, [B

    aput-byte p1, v1, v3

    aput-byte v5, v1, v4

    aput-byte v6, v1, v0

    invoke-static {v2, v1}, Ld;->a(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-boolean v4, p0, Ld;->l:Z

    invoke-static {v2}, Ld;->a(I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v5, p1

    if-eq v5, v1, :cond_3

    :cond_2
    new-array p1, v1, [B

    fill-array-data p1, :array_0

    invoke-static {v2, p1}, Ld;->a(I[B)Z

    :cond_3
    aget-byte v1, p1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Ld;->g:Z

    aget-byte v1, p1, v4

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Ld;->m:Z

    aget-byte p1, p1, v0

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, p0, Ld;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public final a([Lc;)V
    .locals 6

    iput-object p1, p0, Ld;->u:[Lc;

    iget-object v0, p0, Ld;->u:[Lc;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aget-object v1, p1, v0

    iget-short v1, v1, Lc;->h:S

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    iput-short v1, v0, Lc;->h:S

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget-object v3, p1, v1

    iget-short v4, v3, Lc;->a:S

    shl-int/lit8 v4, v4, 0x8

    iget-short v5, v3, Lc;->b:S

    and-int/2addr v5, v2

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    int-to-short v0, v0

    iget-short v4, v3, Lc;->e:S

    iput-short v4, v3, Lc;->a:S

    iget-short v4, v3, Lc;->f:S

    iput-short v4, v3, Lc;->b:S

    iput-short v0, v3, Lc;->e:S

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a([Lc;IIII[I)V
    .locals 8

    invoke-direct {p0, p2}, Ld;->p(I)I

    move-result p2

    iget-object p3, p0, Ld;->C:[[I

    if-eqz p3, :cond_null_b

    iget-object p4, p0, Ld;->D:[[I

    if-eqz p4, :cond_null_b

    iget p5, p0, Ld;->J:I

    if-ltz p5, :cond_null_b

    array-length v0, p3

    if-ge p5, v0, :cond_null_b

    array-length v0, p4

    if-ge p5, v0, :cond_null_b

    aget-object p3, p3, p5

    if-eqz p3, :cond_null_b

    aget-object p4, p4, p5

    if-eqz p4, :cond_null_b

    if-ltz p2, :cond_null_b

    array-length p5, p3

    if-ge p2, p5, :cond_null_b

    aget p2, p3, p2

    ushr-int/lit8 p3, p2, 0x10

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, p3

    goto :goto_start_b

    :cond_null_b
    return-void

    :goto_start_b

    const p5, 0x7fffffff

    const/high16 v0, -0x80000000

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    :goto_0
    if-ge p3, p2, :cond_2

    add-int/lit8 v3, p3, 0x1

    aget p3, p4, p3

    and-int/lit8 v4, p3, 0x3

    ushr-int/lit8 v5, p3, 0x16

    aget-object v5, p1, v5

    iget-short v6, v5, Lc;->a:S

    shl-int/lit8 v7, p3, 0xa

    shr-int/lit8 v7, v7, 0x16

    add-int/2addr v6, v7

    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_0

    iget-short v7, v5, Lc;->c:S

    add-int/2addr v6, v7

    neg-int v6, v6

    :cond_0
    iget-short v7, v5, Lc;->b:S

    shl-int/lit8 p3, p3, 0x14

    shr-int/lit8 p3, p3, 0x16

    add-int/2addr v7, p3

    and-int/lit8 p3, v4, 0x1

    if-eqz p3, :cond_1

    iget-short p3, v5, Lc;->d:S

    add-int/2addr v7, p3

    neg-int v7, v7

    :cond_1
    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-short p3, v5, Lc;->c:S

    add-int/2addr v6, p3

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-short p3, v5, Lc;->d:S

    add-int/2addr v7, p3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    move p3, v3

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p5, 0x0

    const/4 p2, 0x0

    aput p1, p6, p2

    add-int/lit8 p1, v0, 0x0

    const/4 p2, 0x1

    aput p1, p6, p2

    sub-int/2addr v1, p5

    const/4 p1, 0x2

    aput v1, p6, p1

    sub-int/2addr v2, v0

    const/4 p1, 0x3

    aput v2, p6, p1

    return-void
.end method

.method public final a(Ljava/io/DataInputStream;)Z
    .locals 12

    const/4 v0, 0x0

    iput-object v0, p0, Ld;->p:[I

    iput-object v0, p0, Ld;->h:[B

    iput-object v0, p0, Ld;->q:[B

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Ld;->o:I

    return v0

    :cond_0
    iput v0, p0, Ld;->o:I

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    add-int/2addr v1, v2

    shl-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readChar()C

    move-result v3

    mul-int v4, v1, v3

    new-array v4, v4, [B

    invoke-virtual {p1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    new-array v5, v3, [I

    iput-object v5, p0, Ld;->p:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    add-int/lit8 v7, v1, -0x1

    :goto_1
    if-ltz v7, :cond_1

    iget-object v8, p0, Ld;->p:[I

    aget v9, v8, v5

    add-int/lit8 v10, v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v11, v7, 0x3

    shl-int/2addr v6, v11

    or-int/2addr v6, v9

    aput v6, v8, v5

    add-int/lit8 v7, v7, -0x1

    move v6, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v3, [B

    iput-object v1, p0, Ld;->h:[B

    iget-object v1, p0, Ld;->h:[B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Ld;->q:[B

    iget-object v1, p0, Ld;->q:[B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    :goto_2
    return v0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Ld;->u:[Lc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->u:[Lc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-short v0, v0, Lc;->h:S

    return v0

    :cond_0
    iget-object v0, p0, Ld;->w:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    return v0
.end method

.method public final b([SII)I
    .locals 9

    if-eqz p1, :cond_null

    iget-object v0, p0, Ld;->B:[[C

    if-eqz v0, :cond_null

    iget-object v1, p0, Ld;->C:[[I

    if-eqz v1, :cond_null

    iget-object v2, p0, Ld;->E:[[I

    if-eqz v2, :cond_null

    iget-object v3, p0, Ld;->F:[[C

    if-nez v3, :cond_ok

    :cond_null
    const/4 v0, 0x0

    return v0

    :cond_ok
    invoke-direct {p0, p2}, Ld;->p(I)I

    move-result p2

    iget v4, p0, Ld;->J:I

    if-ltz v4, :cond_null

    array-length v5, v0

    if-ge v4, v5, :cond_null

    array-length v5, v1

    if-ge v4, v5, :cond_null

    array-length v5, v2

    if-ge v4, v5, :cond_null

    array-length v5, v3

    if-ge v4, v5, :cond_null

    aget-object v0, v0, v4

    if-eqz v0, :cond_null

    aget-object v1, v1, v4

    if-eqz v1, :cond_null

    aget-object v2, v2, v4

    if-eqz v2, :cond_null

    aget-object v3, v3, v4

    if-eqz v3, :cond_null

    if-ltz p2, :cond_null

    array-length v2, v0

    if-ge p2, v2, :cond_null

    array-length v2, v1

    if-ge p2, v2, :cond_null

    aget-char v0, v0, p2

    aget p2, v1, p2

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    add-int v1, v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    add-int/lit8 v3, v2, 0x4

    array-length v4, p1

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Ld;->E:[[I

    iget v4, p0, Ld;->J:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    shr-int/lit8 v4, v3, 0x15

    shl-int/lit8 v5, v3, 0xb

    shr-int/lit8 v5, v5, 0x15

    and-int/lit16 v3, v3, 0x3ff

    iget-object v6, p0, Ld;->F:[[C

    iget v7, p0, Ld;->J:I

    aget-object v6, v6, v7

    add-int/lit8 v7, v0, 0x1

    aget-char v0, v6, v0

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_0

    add-int/2addr v4, v3

    neg-int v4, v4

    :cond_0
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_1

    add-int/2addr v5, v6

    neg-int v5, v5

    :cond_1
    add-int/lit8 v8, v2, 0x1

    int-to-short v4, v4

    aput-short v4, p1, v2

    add-int/lit8 v2, v8, 0x1

    int-to-short v4, v5

    aput-short v4, p1, v8

    add-int/lit8 v4, v2, 0x1

    int-to-short v3, v3

    aput-short v3, p1, v2

    add-int/lit8 v2, v4, 0x1

    int-to-short v3, v6

    aput-short v3, p1, v4

    add-int/lit8 v3, v2, 0x1

    int-to-short v0, v0

    aput-short v0, p1, v2

    move v2, v3

    move v0, v7

    goto :goto_0

    :cond_2
    return p2
.end method

.method public final b(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3

    iget v0, p0, Ld;->V:I

    iget v1, p0, Ld;->W:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return-void
.end method

.method public final b(II)Z
    .locals 22

    move-object/from16 v0, p0

    shl-int/lit8 v1, p1, 0x3

    iget-object v2, v0, Ld;->I:[S

    const/4 v4, 0x0

    if-eqz v2, :cond_null_b

    add-int/lit8 v3, v1, 0x3

    if-ltz v3, :cond_null_b

    array-length v5, v2

    if-ge v3, v5, :cond_null_b

    aget-short v2, v2, v3

    if-nez v2, :cond_0

    :cond_null_b
    iput v4, v0, Ld;->d:I

    iput v4, v0, Ld;->e:I

    return v4

    :cond_0
    iget-object v5, v0, Ld;->I:[S

    aget-short v5, v5, v1

    iget-object v6, v0, Ld;->I:[S

    add-int/lit8 v7, v1, 0x2

    aget-short v6, v6, v7

    iget-object v8, v0, Ld;->I:[S

    add-int/lit8 v9, v1, 0x4

    aget-short v8, v8, v9

    const v10, 0xffff

    and-int/2addr v8, v10

    add-int v8, p2, v8

    iget-object v10, v0, Ld;->I:[S

    add-int/lit8 v11, v1, 0x5

    aget-short v10, v10, v11

    iget-object v12, v0, Ld;->I:[S

    add-int/lit8 v13, v1, 0x6

    aget-short v12, v12, v13

    iget-object v14, v0, Ld;->y:[[I

    aget-object v14, v14, v5

    iget-object v15, v0, Ld;->I:[S

    add-int/lit8 v16, v1, 0x1

    aget-short v15, v15, v16

    aget v14, v14, v15

    ushr-int/lit8 v15, v14, 0x10

    and-int/lit16 v14, v14, 0x3ff

    const/16 p1, 0x0

    iget-object v4, v0, Ld;->I:[S

    add-int/lit8 v1, v1, 0x7

    aget-short v4, v4, v1

    if-eq v6, v4, :cond_1

    iget-object v4, v0, Ld;->z:[[B

    aget-object v4, v4, v5

    add-int v16, v15, v6

    aget-byte v4, v4, v16

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move/from16 p2, v1

    move/from16 v16, v12

    move v12, v10

    move v10, v8

    :goto_1
    move v8, v6

    :cond_2
    iget-object v1, v0, Ld;->G:[[C

    aget-object v1, v1, v5

    move-object/from16 v17, v1

    iget-object v1, v0, Ld;->z:[[B

    aget-object v1, v1, v5

    add-int v18, v15, v6

    aget-byte v1, v1, v18

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v17, v1

    if-lt v10, v1, :cond_5

    sub-int/2addr v10, v1

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v14, :cond_4

    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3

    add-int/lit8 v6, v6, -0x1

    move v10, v1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Ld;->A:[[I

    aget-object v1, v1, v5

    add-int/lit8 v6, v14, -0x1

    add-int/2addr v6, v15

    aget v1, v1, v6

    shl-int/lit8 v6, v1, 0xa

    shr-int/lit8 v6, v6, 0x16

    sub-int/2addr v12, v6

    shl-int/lit8 v1, v1, 0x14

    shr-int/lit8 v1, v1, 0x16

    sub-int v16, v16, v1

    const/4 v6, 0x0

    :cond_4
    iget-object v1, v0, Ld;->z:[[B

    aget-object v1, v1, v5

    add-int v17, v15, v6

    aget-byte v1, v1, v17

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x3

    if-lt v1, v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v4, v0, Ld;->A:[[I

    aget-object v4, v4, v5

    add-int v17, v15, v6

    aget v4, v4, v17

    shl-int/lit8 v18, v4, 0xa

    shr-int/lit8 v18, v18, 0x16

    shl-int/lit8 v19, v4, 0x14

    shr-int/lit8 v19, v19, 0x16

    and-int/lit8 v4, v4, 0x3

    move/from16 v20, v1

    const/4 v1, 0x1

    if-lez v4, :cond_8

    if-eqz v2, :cond_8

    add-int/lit8 v4, v6, 0x1

    if-ne v4, v14, :cond_6

    if-eq v2, v1, :cond_8

    :cond_6
    if-ne v4, v14, :cond_7

    iget-object v4, v0, Ld;->A:[[I

    aget-object v4, v4, v5

    aget v4, v4, v17

    shl-int/lit8 v14, v4, 0xa

    shr-int/lit8 v14, v14, 0x16

    shl-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x16

    move/from16 v17, v14

    move v14, v4

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_3
    const/16 v21, 0x1

    iget-object v1, v0, Ld;->A:[[I

    aget-object v1, v1, v5

    add-int/2addr v15, v4

    aget v1, v1, v15

    shl-int/lit8 v4, v1, 0xa

    shr-int/lit8 v4, v4, 0x16

    add-int v17, v17, v4

    shl-int/lit8 v1, v1, 0x14

    shr-int/lit8 v1, v1, 0x16

    add-int/2addr v14, v1

    shl-int/lit8 v1, v10, 0xc

    div-int v1, v1, v20

    sub-int v17, v17, v18

    mul-int v17, v17, v1

    shr-int/lit8 v4, v17, 0xc

    add-int v18, v18, v4

    sub-int v14, v14, v19

    mul-int v14, v14, v1

    shr-int/lit8 v1, v14, 0xc

    add-int v19, v19, v1

    goto :goto_4

    :cond_8
    const/16 v21, 0x1

    :goto_4
    move/from16 v1, v18

    move/from16 v4, v19

    sub-int v5, v1, v12

    iput v5, v0, Ld;->d:I

    sub-int v5, v4, v16

    iput v5, v0, Ld;->e:I

    iget-object v5, v0, Ld;->I:[S

    int-to-short v6, v6

    aput-short v6, v5, v7

    iget-object v5, v0, Ld;->I:[S

    int-to-short v6, v2

    aput-short v6, v5, v3

    iget-object v3, v0, Ld;->I:[S

    int-to-short v5, v10

    aput-short v5, v3, v9

    iget-object v3, v0, Ld;->I:[S

    int-to-short v1, v1

    aput-short v1, v3, v11

    iget-object v1, v0, Ld;->I:[S

    int-to-short v3, v4

    aput-short v3, v1, v13

    iget-object v1, v0, Ld;->I:[S

    int-to-short v3, v8

    aput-short v3, v1, p2

    if-eqz v2, :cond_9

    return v21

    :cond_9
    return p1
.end method

.method public final b(I)[Lc;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld;->b(I[B)[Lc;

    move-result-object p1

    return-object p1
.end method

.method public final b(I[B)[Lc;
    .locals 21

    :try_start_0
    invoke-direct/range {p0 .. p1}, Ld;->l(I)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    const/16 v0, 0x10

    new-array v6, v0, [Z

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v0, :cond_1

    shr-int v10, v4, v8

    and-int/2addr v10, v9

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    aput-boolean v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    new-array v4, v0, [I

    const/4 v8, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    :goto_2
    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ge v10, v13, :cond_6

    const/4 v13, 0x0

    :goto_3
    if-eqz v10, :cond_2

    const/4 v15, 0x4

    goto :goto_4

    :cond_2
    const/4 v15, 0x2

    :goto_4
    if-ge v13, v15, :cond_5

    add-int/lit8 v15, v11, 0x1

    aget-boolean v16, v6, v10

    if-eqz v16, :cond_4

    add-int/lit8 v16, v12, 0x1

    aget-boolean v12, v6, v12

    if-eqz v12, :cond_3

    move/from16 v12, v16

    const/16 v16, 0x2

    goto :goto_5

    :cond_3
    move/from16 v12, v16

    const/16 v16, 0x1

    goto :goto_5

    :cond_4
    const/16 v16, 0x0

    :goto_5
    aput v16, v4, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v13, v13, 0x1

    move v11, v15

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    :try_start_1
    invoke-virtual {v10, v1, v11}, Ld;->c(I[B)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    new-array v6, v0, [S

    new-array v11, v5, [Lc;

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v5, :cond_b

    new-instance v15, Lc;

    invoke-direct {v15, v1}, Lc;-><init>(Ljavax/microedition/lcdui/Image;)V

    aput-object v15, v11, v12

    const/16 p1, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_7
    const/4 v3, 0x7

    const/16 v17, 0x0

    const/4 v7, 0x6

    const/16 v18, 0x8

    if-ge v15, v0, :cond_a

    aget v19, v4, v15

    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_9

    shl-int v20, v12, v19

    add-int v16, v16, v20

    if-nez v19, :cond_7

    aget-byte v0, v2, v16

    if-le v15, v9, :cond_8

    if-eq v15, v7, :cond_8

    if-eq v15, v3, :cond_8

    and-int/lit16 v0, v0, 0xff

    goto :goto_8

    :cond_7
    aget-byte v0, v2, v16

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v16, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    :cond_8
    :goto_8
    sub-int v3, v5, v12

    shl-int v3, v3, v19

    add-int v16, v16, v3

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    int-to-short v0, v0

    aput-short v0, v6, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v0, 0xa

    goto :goto_7

    :cond_a
    aget-object v0, v11, v12

    aget-short v15, v6, v17

    iput-short v15, v0, Lc;->a:S

    aget-short v15, v6, v9

    iput-short v15, v0, Lc;->b:S

    aget-short v15, v6, v14

    iput-short v15, v0, Lc;->i:S

    aget-short v15, v6, v13

    iput-short v15, v0, Lc;->j:S

    aget-short v15, v6, p1

    iput-short v15, v0, Lc;->c:S

    aget-short v15, v6, v8

    iput-short v15, v0, Lc;->d:S

    aget-short v7, v6, v7

    iput-short v7, v0, Lc;->e:S

    aget-short v3, v6, v3

    iput-short v3, v0, Lc;->f:S

    aget-short v3, v6, v18

    iput-short v3, v0, Lc;->g:S

    const/16 v3, 0x9

    aget-short v3, v6, v3

    iput-short v3, v0, Lc;->h:S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0xa

    const/4 v3, 0x4

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    :goto_a
    const/4 v11, 0x0

    :cond_b
    return-object v11
.end method

.method public final c(I[B)Ljavax/microedition/lcdui/Image;
    .locals 3

    invoke-direct {p0, p1}, Ld;->n(I)V

    and-int/lit16 p1, p1, 0x3ff

    invoke-direct {p0, p1}, Ld;->m(I)I

    move-result v0

    iget-object v1, p0, Ld;->q:[B

    invoke-direct {p0, v1, v0, p2}, Ld;->a([BI[B)V

    iget-object v1, p0, Ld;->q:[B

    iget-object v2, p0, Ld;->p:[I

    aget p1, v2, p1

    invoke-static {v1, v0, p1}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;

    move-result-object p1

    iget-object v1, p0, Ld;->q:[B

    invoke-direct {p0, v1, v0, p2}, Ld;->a([BI[B)V

    return-object p1
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Ld;->x:[S

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ld;->x:[S

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ld;->x:[S

    aget-short v3, v3, v0

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-lez v2, :cond_5

    new-array v0, v2, [C

    iget-object v3, p0, Ld;->x:[S

    new-array v4, v2, [S

    iput-object v4, p0, Ld;->x:[S

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_4

    aget-short v5, v3, v1

    if-gez v5, :cond_3

    int-to-char v5, v1

    aput-char v5, v0, v4

    iget-object v5, p0, Ld;->x:[S

    add-int/lit8 v6, v4, 0x1

    aget-short v7, v3, v1

    aput-short v7, v5, v4

    move v4, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Ld;->y:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Ld;->y:[[I

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->z:[[B

    new-array v3, v2, [[B

    iput-object v3, p0, Ld;->z:[[B

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->A:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Ld;->A:[[I

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->B:[[C

    new-array v3, v2, [[C

    iput-object v3, p0, Ld;->B:[[C

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->C:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Ld;->C:[[I

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->D:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Ld;->D:[[I

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->E:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Ld;->E:[[I

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->F:[[C

    new-array v3, v2, [[C

    iput-object v3, p0, Ld;->F:[[C

    invoke-static {v1, v0, v3}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    iget-object v1, p0, Ld;->G:[[C

    new-array v2, v2, [[C

    iput-object v2, p0, Ld;->G:[[C

    invoke-static {v1, v0, v2}, Ld;->a([Ljava/lang/Object;[C[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Ld;->x:[S

    iput-object v0, p0, Ld;->y:[[I

    iput-object v0, p0, Ld;->z:[[B

    iput-object v0, p0, Ld;->A:[[I

    iput-object v0, p0, Ld;->B:[[C

    iput-object v0, p0, Ld;->C:[[I

    iput-object v0, p0, Ld;->D:[[I

    iput-object v0, p0, Ld;->E:[[I

    iput-object v0, p0, Ld;->F:[[C

    iput-object v0, p0, Ld;->G:[[C

    iput-object v0, p0, Ld;->I:[S

    return-void
.end method

.method public final c(II)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld;->aa:Z

    if-gtz p1, :cond_0

    sget p1, Ld;->b:I

    :cond_0
    if-gtz p2, :cond_1

    sget p2, Ld;->c:I

    :cond_1
    iput p1, p0, Ld;->V:I

    iput p2, p0, Ld;->W:I

    sget v1, Ld;->b:I

    sub-int/2addr v1, p1

    iput v1, p0, Ld;->X:I

    sget p1, Ld;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Ld;->Y:I

    iget p1, p0, Ld;->X:I

    if-gez p1, :cond_2

    iget p1, p0, Ld;->X:I

    add-int/2addr p1, v0

    iput p1, p0, Ld;->X:I

    :cond_2
    iget p1, p0, Ld;->Y:I

    if-gez p1, :cond_3

    iget p1, p0, Ld;->Y:I

    add-int/2addr p1, v0

    iput p1, p0, Ld;->Y:I

    :cond_3
    iget p1, p0, Ld;->X:I

    shr-int/2addr p1, v0

    iput p1, p0, Ld;->X:I

    iget p1, p0, Ld;->Y:I

    shr-int/2addr p1, v0

    iput p1, p0, Ld;->Y:I

    return-void
.end method

.method public final c(I)[B
    .locals 4

    invoke-direct {p0, p1}, Ld;->n(I)V

    and-int/lit16 p1, p1, 0x3ff

    iget-object v0, p0, Ld;->p:[I

    if-eqz v0, :cond_empty

    if-ltz p1, :cond_empty

    array-length v1, v0

    if-ge p1, v1, :cond_empty

    aget v0, v0, p1

    if-lez v0, :cond_empty

    iget-object v2, p0, Ld;->q:[B

    if-eqz v2, :cond_empty

    invoke-direct {p0, p1}, Ld;->m(I)I

    move-result p1

    if-ltz p1, :cond_empty

    add-int v1, p1, v0

    array-length v3, v2

    if-gt v1, v3, :cond_empty

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_empty
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Ld;->t:[S

    aget-short v0, v0, p1

    :try_start_0
    iget-object v1, p0, Ld;->s:[B

    iget-object v2, p0, Ld;->t:[S

    add-int/lit8 p1, p1, 0x1

    aget-short p1, v2, p1

    sub-int/2addr p1, v0

    new-array v2, p1, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    add-int v6, v0, v4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    aput-char v6, v2, v5

    move v5, v7

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, p1, :cond_1

    add-int v6, v0, v4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v6, 0x4

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    add-int/lit8 v4, v4, 0x3

    add-int v7, v0, v4

    add-int/lit8 v8, v7, -0x2

    aget-byte v8, v1, v8

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v1, v7

    add-int/lit8 v9, v5, 0x1

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v5

    move v5, v9

    goto :goto_1

    :pswitch_2
    add-int/lit8 v4, v4, 0x2

    add-int v7, v0, v4

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v1, v7

    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v5

    move v5, v8

    goto :goto_1

    :pswitch_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    aput-char v6, v2, v5

    move v5, v7

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ld;->O:I

    iput v0, p0, Ld;->P:I

    iget v1, p0, Ld;->Q:I

    iget v2, p0, Ld;->L:I

    or-int/2addr v1, v2

    iput v1, p0, Ld;->Q:I

    iput v0, p0, Ld;->M:I

    iput v0, p0, Ld;->L:I

    iput v0, p0, Ld;->N:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final e()I
    .locals 1

    iget v0, p0, Ld;->L:I

    return v0
.end method

.method public final e(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ld;->s:[B

    iput-object p1, p0, Ld;->t:[S

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Ld;->l(I)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [S

    iput-object v1, p0, Ld;->t:[S

    iget-object v1, p0, Ld;->p:[I

    and-int/lit16 p1, p1, 0x3ff

    aget p1, v1, p1

    iget-object v1, p0, Ld;->t:[S

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    new-array p1, p1, [B

    iput-object p1, p0, Ld;->s:[B

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld;->t:[S

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ld;->t:[S

    if-ge p1, v2, :cond_2

    :try_start_1
    aput-short v1, v3, p1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    if-lez v2, :cond_1

    iget-object v3, p0, Ld;->s:[B

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_1
    add-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    aput-short v1, v3, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ld;->N:I

    return v0
.end method

.method public final f(I)V
    .locals 8

    iget-object v0, p0, Ld;->x:[S

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ld;->x:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ld;->x:[S

    aget-short v2, v2, v0

    and-int/lit16 v2, v2, 0x7fff

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld;->x:[S

    int-to-short v2, p1

    if-nez v0, :cond_2

    new-array v0, v1, [S

    :cond_2
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [S

    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    aput-short v2, v3, v0

    iput-object v3, p0, Ld;->x:[S

    iget-object v0, p0, Ld;->x:[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Ld;->l(I)Ljava/io/DataInputStream;

    move-result-object p1

    iput-object p1, p0, Ld;->H:Ljava/io/DataInputStream;

    iget-object p1, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    iget-object p1, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readChar()C

    move-result p1

    iget-object v2, p0, Ld;->y:[[I

    invoke-static {v2, p1}, Ld;->a([[II)[[I

    move-result-object v2

    iput-object v2, p0, Ld;->y:[[I

    iget-object v2, p0, Ld;->y:[[I

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Ld;->a([I)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_3

    aget v5, v2, v4

    invoke-direct {p0}, Ld;->n()I

    move-result v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Ld;->z:[[B

    if-nez v2, :cond_4

    new-array v2, v1, [[B

    :cond_4
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [[B

    array-length v5, v2

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    new-array v5, v3, [B

    aput-object v5, v4, v2

    iput-object v4, p0, Ld;->z:[[B

    iget-object v2, p0, Ld;->z:[[B

    aget-object v2, v2, v0

    iget-object v4, p0, Ld;->A:[[I

    invoke-static {v4, v3}, Ld;->a([[II)[[I

    move-result-object v4

    iput-object v4, p0, Ld;->A:[[I

    iget-object v4, p0, Ld;->A:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    invoke-direct {p0}, Ld;->m()I

    move-result p1

    int-to-byte v6, p1

    aput-byte v6, v2, v5

    shr-int/lit8 v6, p1, 0x8

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v4}, Ld;->b([I)V

    iget-object v2, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    iget-object v3, p0, Ld;->B:[[C

    invoke-static {v3, v2}, Ld;->a([[CI)[[C

    move-result-object v3

    iput-object v3, p0, Ld;->B:[[C

    iget-object v3, p0, Ld;->C:[[I

    invoke-static {v3, v2}, Ld;->a([[II)[[I

    move-result-object v3

    iput-object v3, p0, Ld;->C:[[I

    iget-object v3, p0, Ld;->C:[[I

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Ld;->a([I)I

    move-result v3

    iget-object v4, p0, Ld;->D:[[I

    invoke-static {v4, v3}, Ld;->a([[II)[[I

    move-result-object v4

    iput-object v4, p0, Ld;->D:[[I

    iget-object v4, p0, Ld;->D:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v3, :cond_7

    if-nez v6, :cond_6

    invoke-direct {p0}, Ld;->m()I

    move-result p1

    const/16 v6, 0x8

    :cond_6
    add-int/lit8 v6, v6, -0x2

    shr-int v7, p1, v6

    and-int/lit8 v7, v7, 0x3

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0, v4}, Ld;->b([I)V

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge p1, v2, :cond_8

    invoke-direct {p0}, Ld;->m()I

    move-result v4

    iget-object v5, p0, Ld;->C:[[I

    aget-object v5, v5, v0

    aget v6, v5, p1

    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v6, v7

    aput v6, v5, p1

    iget-object v5, p0, Ld;->B:[[C

    aget-object v5, v5, v0

    int-to-char v6, v3

    aput-char v6, v5, p1

    add-int/2addr v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    iget-object p1, p0, Ld;->E:[[I

    invoke-static {p1, v3}, Ld;->a([[II)[[I

    move-result-object p1

    iput-object p1, p0, Ld;->E:[[I

    iget-object p1, p0, Ld;->F:[[C

    invoke-static {p1, v3}, Ld;->a([[CI)[[C

    move-result-object p1

    iput-object p1, p0, Ld;->F:[[C

    iget-object p1, p0, Ld;->E:[[I

    aget-object p1, p1, v0

    iget-object v2, p0, Ld;->F:[[C

    aget-object v2, v2, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0}, Ld;->n()I

    move-result v6

    shl-int/lit8 v6, v6, 0x15

    aput v6, p1, v4

    move v4, v5

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_a

    add-int/lit8 v5, v4, 0x1

    aget v6, p1, v4

    invoke-direct {p0}, Ld;->n()I

    move-result v7

    shl-int/lit8 v7, v7, 0x15

    ushr-int/lit8 v7, v7, 0xb

    or-int/2addr v6, v7

    aput v6, p1, v4

    move v4, v5

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_b

    add-int/lit8 v5, v4, 0x1

    aget v6, p1, v4

    invoke-direct {p0}, Ld;->m()I

    move-result v7

    or-int/2addr v6, v7

    aput v6, p1, v4

    move v4, v5

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    :goto_8
    if-ge p1, v3, :cond_c

    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0}, Ld;->m()I

    move-result v5

    shl-int/lit8 v5, v5, 0x6

    int-to-char v5, v5

    aput-char v5, v2, p1

    move p1, v4

    goto :goto_8

    :cond_c
    const/4 p1, 0x0

    :goto_9
    if-ge p1, v3, :cond_d

    add-int/lit8 v4, p1, 0x1

    aget-char v5, v2, p1

    invoke-direct {p0}, Ld;->m()I

    move-result v6

    int-to-char v6, v6

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, p1

    move p1, v4

    goto :goto_9

    :cond_d
    iget-object p1, p0, Ld;->H:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readChar()C

    move-result p1

    iget-object v2, p0, Ld;->G:[[C

    invoke-static {v2, p1}, Ld;->a([[CI)[[C

    move-result-object v2

    iput-object v2, p0, Ld;->G:[[C

    :goto_a
    if-ge v1, p1, :cond_e

    iget-object v2, p0, Ld;->G:[[C

    aget-object v2, v2, v0

    invoke-direct {p0}, Ld;->m()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :catch_0
    move-exception p1

    :cond_e
    const/4 p1, 0x0

    iput-object p1, p0, Ld;->H:Ljava/io/DataInputStream;

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ld;->M:I

    return v0
.end method

.method public final g(I)V
    .locals 1

    iget-object p1, p0, Ld;->I:[S

    const/16 v0, 0x450

    invoke-static {p1, v0}, Ld;->a([SI)[S

    move-result-object p1

    iput-object p1, p0, Ld;->I:[S

    return-void
.end method

.method public final declared-synchronized h()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ld;->O:I

    iput v0, p0, Ld;->M:I

    const/4 v0, 0x0

    iput v0, p0, Ld;->O:I

    iget v1, p0, Ld;->Q:I

    iget v2, p0, Ld;->P:I

    and-int/2addr v1, v2

    iput v1, p0, Ld;->Q:I

    iget v1, p0, Ld;->P:I

    iget v2, p0, Ld;->Q:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ld;->P:I

    iget v1, p0, Ld;->M:I

    iget v2, p0, Ld;->P:I

    or-int/2addr v1, v2

    iput v1, p0, Ld;->L:I

    iget v1, p0, Ld;->Q:I

    iput v1, p0, Ld;->N:I

    iput v0, p0, Ld;->Q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final h(I)V
    .locals 0

    const/16 p1, 0x64

    iput p1, p0, Ld;->T:I

    return-void
.end method

.method public final hideNotify()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld;->k(I)V

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Ld;->R:I

    return v0
.end method

.method public final i(I)V
    .locals 0

    const/16 p1, 0x28

    iput p1, p0, Ld;->S:I

    return-void
.end method

.method public j(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ld;->f:Lf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld;->f:Lf;

    invoke-virtual {v0}, Lf;->a()V

    :cond_0
    iput-boolean v1, p0, Ld;->ad:Z

    iget-object v0, p0, Ld;->k:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->notifyDestroyed()V

    :cond_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    iput-boolean v1, p0, Ld;->aa:Z

    iput-boolean v1, p0, Ld;->U:Z

    invoke-virtual {p0}, Ld;->d()V

    :cond_3
    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Ld;->Z:Z

    return v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld;->aa:Z

    return-void
.end method

.method public final declared-synchronized k(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Ld;->j(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ld;->ac:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    :cond_1
    iget-object v1, p0, Ld;->f:Lf;

    const/4 v2, -0x1

    if-ne p1, v0, :cond_2

    if-eqz v1, :cond_3

    :goto_0
    :try_start_2
    iget-object v0, p0, Ld;->f:Lf;

    invoke-virtual {v0, v2}, Lf;->a(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iput p1, p0, Ld;->af:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld;->ae:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public keyPressed(I)V
    .locals 1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    sput p1, Ld;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput v0, Ld;->a:I

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ld;->b(IZ)V

    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    return-void
.end method

.method public keyReleased(I)V
    .locals 1

    const/4 v0, 0x0

    sput v0, Ld;->a:I

    invoke-direct {p0, p1, v0}, Ld;->b(IZ)V

    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    return-void
.end method

.method protected keyRepeated(I)V
    .locals 0

    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Canvas;->keyRepeated(I)V

    return-void
.end method

.method public final l()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "FONT_SYMBOL_DIFF_YPOS:0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "RP98"

    invoke-static {v1}, Ljavax/microedition/lcdui/ResourceLoader;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Ld;->ai:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "RP97"

    invoke-static {v1}, Ljavax/microedition/lcdui/ResourceLoader;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Ld;->aj:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "RP96"

    invoke-static {v1}, Ljavax/microedition/lcdui/ResourceLoader;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Ld;->ak:Ljavax/microedition/lcdui/Image;

    sget-object v0, Ld;->ai:Ljavax/microedition/lcdui/Image;

    sput-object v0, Ld;->ah:Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final run()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld;->ac:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ld;->j(I)V

    :goto_0
    iget-boolean v2, p0, Ld;->ad:Z

    if-nez v2, :cond_16

    :cond_0
    iget v2, p0, Ld;->af:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_4

    iget v2, p0, Ld;->ag:I

    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v0}, Ld;->j(I)V

    iput v0, p0, Ld;->ag:I

    :cond_1
    iget v2, p0, Ld;->af:I

    if-ne v2, v0, :cond_2

    iput v3, p0, Ld;->af:I

    :cond_2
    :goto_1
    iget v2, p0, Ld;->af:I

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Ld;->ae:J

    sub-long/2addr v5, v7

    long-to-int v2, v5

    const/16 v5, 0x2ee

    if-ge v2, v5, :cond_3

    const-wide/16 v5, 0xfa

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_3
    iget v2, p0, Ld;->af:I

    if-ne v2, v4, :cond_2

    iput v3, p0, Ld;->af:I

    invoke-virtual {p0, v4}, Ld;->j(I)V

    iput v4, p0, Ld;->ag:I

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ld;->j(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->isShown()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v5, p0, Ld;->U:Z

    if-eqz v5, :cond_5

    iput-boolean v1, p0, Ld;->U:Z

    iget v4, p0, Ld;->S:I

    iput v4, p0, Ld;->R:I

    goto :goto_2

    :cond_5
    iget-wide v5, p0, Ld;->j:J

    sub-long v5, v2, v5

    long-to-int v6, v5

    const/16 v5, 0xfa0

    if-le v6, v5, :cond_6

    invoke-virtual {p0, v4}, Ld;->k(I)V

    :cond_6
    iget v4, p0, Ld;->T:I

    if-gt v6, v4, :cond_7

    if-gez v6, :cond_8

    :cond_7
    iget v6, p0, Ld;->T:I

    :cond_8
    iput v6, p0, Ld;->R:I

    iget v4, p0, Ld;->R:I

    iget v5, p0, Ld;->S:I

    if-ge v4, v5, :cond_a

    iget v4, p0, Ld;->S:I

    iget v5, p0, Ld;->R:I

    sub-int/2addr v4, v5

    const/16 v5, 0xa

    if-ge v4, v5, :cond_9

    const/16 v4, 0xa

    :cond_9
    iget v5, p0, Ld;->S:I

    iput v5, p0, Ld;->R:I

    int-to-long v4, v4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    :cond_a
    :goto_2
    iput-wide v2, p0, Ld;->j:J

    invoke-virtual {p0}, Ld;->a()V

    iget-object v2, p0, Ld;->f:Lf;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ld;->f:Lf;

    invoke-virtual {v2}, Lf;->run()V

    :cond_b
    iget-boolean v2, p0, Ld;->ad:Z

    if-eqz v2, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->isShown()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-boolean v3, p0, Ld;->aa:Z

    iput-boolean v3, p0, Ld;->Z:Z

    iput-boolean v1, p0, Ld;->aa:Z

    sget v3, Ld;->b:I

    iget v4, p0, Ld;->V:I

    if-ne v3, v4, :cond_d

    sget v3, Ld;->c:I

    iget v4, p0, Ld;->W:I

    if-eq v3, v4, :cond_12

    :cond_d
    iget-boolean v3, p0, Ld;->Z:Z

    if-eqz v3, :cond_11

    sget v3, Ld;->c:I

    iget v4, p0, Ld;->W:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    ushr-int/2addr v3, v0

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    if-lez v3, :cond_f

    iget v4, p0, Ld;->Y:I

    if-lez v4, :cond_e

    sget v4, Ld;->b:I

    iget v5, p0, Ld;->Y:I

    invoke-virtual {v2, v1, v1, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_e
    sget v4, Ld;->c:I

    sub-int/2addr v4, v3

    sget v5, Ld;->b:I

    invoke-virtual {v2, v1, v4, v5, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_f
    sget v3, Ld;->b:I

    iget v4, p0, Ld;->V:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    ushr-int/2addr v3, v0

    if-lez v3, :cond_11

    iget v4, p0, Ld;->X:I

    if-lez v4, :cond_10

    iget v4, p0, Ld;->Y:I

    iget v5, p0, Ld;->X:I

    iget v6, p0, Ld;->W:I

    invoke-virtual {v2, v1, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_10
    sget v4, Ld;->b:I

    sub-int/2addr v4, v3

    iget v5, p0, Ld;->Y:I

    iget v6, p0, Ld;->W:I

    invoke-virtual {v2, v4, v5, v3, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_11
    iget v3, p0, Ld;->X:I

    iget v4, p0, Ld;->Y:I

    invoke-virtual {v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    :cond_12
    invoke-virtual {p0, v2}, Ld;->b(Ljavax/microedition/lcdui/Graphics;)V

    invoke-virtual {p0, v2}, Ld;->a(Ljavax/microedition/lcdui/Graphics;)V

    :cond_13
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->flushGraphics()V

    goto :goto_4

    :cond_14
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_3
    iput-boolean v0, p0, Ld;->U:Z

    :cond_15
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method public final showNotify()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ld;->k(I)V

    iget-object v0, p0, Ld;->ab:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ld;->ab:Ljava/lang/Thread;

    iget-object v0, p0, Ld;->ab:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
