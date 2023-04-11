.class Landroidx/media2/player/MediaPlayer$PendingFuture$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$PendingFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 548
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture$1;, "Landroidx/media2/player/MediaPlayer$PendingFuture$1;"
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 551
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture$1;, "Landroidx/media2/player/MediaPlayer$PendingFuture$1;"
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    iget-boolean v0, v0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancelFutures()V

    goto :goto_0

    .line 551
    :cond_0
    nop

    .line 554
    :goto_0
    return-void
.end method
