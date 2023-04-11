.class Landroidx/media2/player/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->addFutureListener(Landroidx/media2/player/MediaPlayer$PendingCommand;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;

.field final synthetic val$future:Landroidx/media2/player/futures/ResolvableFuture;

.field final synthetic val$pendingCommand:Landroidx/media2/player/MediaPlayer$PendingCommand;

.field final synthetic val$token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$PendingCommand;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;

    .line 705
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$1;->this$0:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$1;->val$future:Landroidx/media2/player/futures/ResolvableFuture;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$1;->val$token:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$1;->val$pendingCommand:Landroidx/media2/player/MediaPlayer$PendingCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 709
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$1;->val$future:Landroidx/media2/player/futures/ResolvableFuture;

    invoke-virtual {v0}, Landroidx/media2/player/futures/ResolvableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$1;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$1;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$1;->val$token:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer2;->cancel(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$1;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$1;->val$pendingCommand:Landroidx/media2/player/MediaPlayer$PendingCommand;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    :cond_0
    nop

    .line 714
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 709
    :cond_1
    nop

    .line 716
    :goto_1
    return-void
.end method
