.class Lcom/glu/godofwar/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/godofwar/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/godofwar/MainActivity;


# direct methods
.method constructor <init>(Lcom/glu/godofwar/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/glu/godofwar/MainActivity$1;->this$0:Lcom/glu/godofwar/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    const-string v0, "GodOfWar"

    :try_start_0
    const-string v1, "Initializing GOWMIDlet..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$1;->this$0:Lcom/glu/godofwar/MainActivity;

    const-string v2, "GOWMIDlet"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/microedition/midlet/MIDlet;

    invoke-static {v1, v2}, Lcom/glu/godofwar/MainActivity;->-$$Nest$fputmidlet(Lcom/glu/godofwar/MainActivity;Ljavax/microedition/midlet/MIDlet;)V

    .line 79
    const-string v1, "Starting GOWMIDlet.startApp()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/glu/godofwar/MainActivity$1;->this$0:Lcom/glu/godofwar/MainActivity;

    invoke-static {v1}, Lcom/glu/godofwar/MainActivity;->-$$Nest$fgetmidlet(Lcom/glu/godofwar/MainActivity;)Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->startApp()V

    .line 81
    const-string v1, "GOWMIDlet started successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    const-string v2, "FATAL Exception during game startup"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_0
    return-void
.end method
