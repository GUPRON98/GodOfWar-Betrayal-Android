.class public interface abstract Ljavax/wireless/messaging/MessageConnection;
.super Ljava/lang/Object;
.source "MessageConnection.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newMessage(Ljava/lang/String;)Ljavax/wireless/messaging/Message;
.end method

.method public abstract newMessage(Ljava/lang/String;Ljava/lang/String;)Ljavax/wireless/messaging/Message;
.end method

.method public abstract send(Ljavax/wireless/messaging/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
