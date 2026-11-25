.class public LGOWMIDlet;
.super Ljavax/microedition/midlet/MIDlet;


# instance fields
.field private a:Ld;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/midlet/MIDlet;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyApp(Z)V
    .locals 1

    iget-object p1, p0, LGOWMIDlet;->a:Ld;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ld;->k(I)V

    return-void
.end method

.method public pauseApp()V
    .locals 1

    iget-object v0, p0, LGOWMIDlet;->a:Ld;

    invoke-virtual {v0}, Ld;->hideNotify()V

    return-void
.end method

.method public startApp()V
    .locals 2

    iget-object v0, p0, LGOWMIDlet;->a:Ld;

    if-nez v0, :cond_0

    new-instance v0, Le;

    invoke-direct {v0, p0}, Le;-><init>(LGOWMIDlet;)V

    iput-object v0, p0, LGOWMIDlet;->a:Ld;

    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, LGOWMIDlet;->a:Ld;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void

    :cond_0
    iget-object v0, p0, LGOWMIDlet;->a:Ld;

    invoke-virtual {v0}, Ld;->showNotify()V

    return-void
.end method
