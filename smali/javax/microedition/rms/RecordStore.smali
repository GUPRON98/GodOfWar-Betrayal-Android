.class public Ljavax/microedition/rms/RecordStore;
.super Ljava/lang/Object;
.source "RecordStore.java"


# instance fields
.field private name:Ljava/lang/String;

.field private open:Z

.field private records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private storeDir:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/microedition/rms/RecordStore;->open:Z

    .line 17
    iput-object p1, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Ljavax/microedition/rms/RecordStore;->storeDir:Ljava/io/File;

    .line 19
    invoke-direct {p0}, Ljavax/microedition/rms/RecordStore;->loadRecords()V

    .line 20
    return-void
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .line 127
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 131
    if-eqz p0, :cond_0

    .line 132
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 136
    :cond_1
    return-void
.end method

.method private static getBaseDir()Ljava/io/File;
    .locals 3

    .line 23
    sget-object v0, Ljavax/microedition/lcdui/ResourceLoader;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/io/File;

    sget-object v1, Ljavax/microedition/lcdui/ResourceLoader;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "rms"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/ai/rms_gow"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    return-object v0
.end method

.method private loadRecords()V
    .locals 6

    .line 45
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->storeDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".rec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 51
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v3, v1, [B

    .line 53
    const/4 v4, 0x0

    .line 54
    :goto_1
    if-ge v4, v1, :cond_2

    .line 55
    sub-int v5, v1, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 56
    if-gez v5, :cond_1

    goto :goto_2

    .line 57
    :cond_1
    add-int/2addr v4, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 60
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    nop

    .line 66
    :goto_3
    return-void
.end method

.method public static openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .line 32
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v2, "1.rec"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_2

    .line 36
    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Ljavax/microedition/rms/RecordStoreNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record store not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    :goto_1
    new-instance p1, Ljavax/microedition/rms/RecordStore;

    invoke-direct {p1, p0, v1}, Ljavax/microedition/rms/RecordStore;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object p1
.end method

.method private saveRecordFile(I[B)V
    .locals 3

    .line 118
    :try_start_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->storeDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".rec"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 122
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 124
    return-void
.end method


# virtual methods
.method public addRecord([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .line 106
    new-array v0, p3, [B

    .line 107
    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    :cond_0
    iget-object p1, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 112
    invoke-direct {p0, p1, v0}, Ljavax/microedition/rms/RecordStore;->saveRecordFile(I[B)V

    .line 113
    return p1
.end method

.method public closeRecordStore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/microedition/rms/RecordStore;->open:Z

    .line 70
    return-void
.end method

.method public getNumRecords()I
    .locals 1

    .line 73
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRecord(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .line 77
    add-int/lit8 v0, p1, -0x1

    .line 78
    if-ltz v0, :cond_1

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 82
    if-eqz v0, :cond_0

    .line 85
    array-length p1, v0

    new-array p1, p1, [B

    .line 86
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object p1

    .line 83
    :cond_0
    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record is null for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " does not exist (total "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecord(I[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .line 91
    add-int/lit8 v0, p1, -0x1

    .line 92
    if-ltz v0, :cond_2

    .line 93
    new-array v1, p4, [B

    .line 94
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-lez p4, :cond_0

    .line 95
    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :cond_0
    :goto_0
    iget-object p2, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 101
    iget-object p3, p0, Ljavax/microedition/rms/RecordStore;->records:Ljava/util/ArrayList;

    .line 98
    if-gt p2, v0, :cond_1

    .line 99
    new-array p2, v2, [B

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0, p1, v1}, Ljavax/microedition/rms/RecordStore;->saveRecordFile(I[B)V

    .line 103
    return-void

    .line 92
    :cond_2
    new-instance p2, Ljavax/microedition/rms/InvalidRecordIDException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid ID: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
