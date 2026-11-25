.class public Ljavax/microedition/lcdui/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field private static instance:Ljavax/microedition/lcdui/Display;


# instance fields
.field private current:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Ljavax/microedition/lcdui/Display;

    invoke-direct {v0}, Ljavax/microedition/lcdui/Display;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Display;->instance:Ljavax/microedition/lcdui/Display;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;
    .locals 0

    .line 10
    sget-object p0, Ljavax/microedition/lcdui/Display;->instance:Ljavax/microedition/lcdui/Display;

    return-object p0
.end method


# virtual methods
.method public flashBacklight(I)Z
    .locals 0

    .line 32
    const/4 p1, 0x1

    return p1
.end method

.method public getCurrent()Ljavax/microedition/lcdui/Displayable;
    .locals 1

    .line 24
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    .locals 1

    .line 14
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-eq v0, p1, :cond_0

    .line 15
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->hideNotify()V

    .line 17
    :cond_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    .line 18
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Displayable;->showNotify()V

    .line 21
    :cond_1
    return-void
.end method

.method public vibrate(I)Z
    .locals 0

    .line 28
    const/4 p1, 0x1

    return p1
.end method
