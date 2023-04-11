.class Landroidx/media2/player/MediaPlayer$18;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->setShuffleMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/player/MediaPlayer$PendingFuture<",
        "Landroidx/media2/common/SessionPlayer$PlayerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;

.field final synthetic val$shuffleMode:I


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1520
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$18;->this$0:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$18;->val$shuffleMode:I

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 1523
    iget v0, p0, Landroidx/media2/player/MediaPlayer$18;->val$shuffleMode:I

    if-ltz v0, :cond_3

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_2

    .line 1529
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$18;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1530
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$18;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mShuffleMode:I

    iget v2, p0, Landroidx/media2/player/MediaPlayer$18;->val$shuffleMode:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1531
    .local v1, "changed":Z
    :goto_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$18;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$18;->val$shuffleMode:I

    iput v4, v2, Landroidx/media2/player/MediaPlayer;->mShuffleMode:I

    .line 1532
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    if-eqz v1, :cond_2

    .line 1534
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$18;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v2, Landroidx/media2/player/MediaPlayer$18$1;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$18$1;-><init>(Landroidx/media2/player/MediaPlayer$18;)V

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_1

    .line 1533
    :cond_2
    nop

    .line 1542
    :goto_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$18;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v3}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1532
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1523
    :cond_3
    :goto_2
    nop

    .line 1525
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$18;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
