.class public abstract Ljavax/microedition/midlet/MIDlet;
.super Ljava/lang/Object;
.source "MIDlet.java"


# static fields
.field public static appProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static instance:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/microedition/midlet/MIDlet;->appProperties:Ljava/util/HashMap;

    .line 10
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->appProperties:Ljava/util/HashMap;

    const-string v1, "MIDlet-Version"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->appProperties:Ljava/util/HashMap;

    const-string v1, "MIDlet-Name"

    const-string v2, "God of War"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->appProperties:Ljava/util/HashMap;

    const-string v1, "MIDlet-Vendor"

    const-string v2, "Glu Mobile LTD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->appProperties:Ljava/util/HashMap;

    const-string v1, "cheats.enable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sput-object p0, Ljavax/microedition/midlet/MIDlet;->instance:Ljavax/microedition/midlet/MIDlet;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract destroyApp(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method

.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "cheats.enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "true"

    return-object p1

    .line 33
    :cond_0
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->appProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 34
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public notifyDestroyed()V
    .locals 0

    .line 24
    return-void
.end method

.method public notifyPaused()V
    .locals 0

    .line 25
    return-void
.end method

.method public abstract pauseApp()V
.end method

.method public platformRequest(Ljava/lang/String;)Z
    .locals 0

    .line 28
    const/4 p1, 0x0

    return p1
.end method

.method public abstract startApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method
