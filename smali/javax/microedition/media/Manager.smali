.class public Ljavax/microedition/media/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field public static final MIDI:Ljava/lang/String; = "audio/midi"

.field public static final TONE_DEVICE_LOCATOR:Ljava/lang/String; = "device://tone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    .locals 1

    .line 10
    new-instance v0, Ljavax/microedition/media/BasePlayer;

    invoke-direct {v0, p0, p1}, Ljavax/microedition/media/BasePlayer;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .locals 0

    .line 14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static playTone(III)V
    .locals 0

    .line 17
    return-void
.end method
