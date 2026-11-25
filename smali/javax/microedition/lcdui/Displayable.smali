.class public abstract Ljavax/microedition/lcdui/Displayable;
.super Ljava/lang/Object;
.source "Displayable.java"


# instance fields
.field private commandListener:Ljavax/microedition/lcdui/CommandListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Ljavax/microedition/lcdui/Displayable;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 0

    .line 22
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 12
    const/16 v0, 0x1e0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 8
    const/16 v0, 0x320

    return v0
.end method

.method public hideNotify()V
    .locals 0

    .line 20
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 0

    .line 23
    return-void
.end method

.method public setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    .line 26
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->title:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public showNotify()V
    .locals 0

    .line 19
    return-void
.end method
