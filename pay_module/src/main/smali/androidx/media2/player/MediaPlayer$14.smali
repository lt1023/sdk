.class Landroidx/media2/player/MediaPlayer$14;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->skipToNextPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
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


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1379
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

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

    .line 1384
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1385
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    const/4 v2, -0x2

    if-gez v1, :cond_0

    .line 1386
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1388
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v1, v1, 0x1

    .line 1389
    .local v1, "nextShuffleIdx":I
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 1390
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v3, v3, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v3, v3, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 1393
    :cond_1
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3, v2}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1390
    :cond_2
    :goto_0
    nop

    .line 1391
    const/4 v1, 0x0

    goto :goto_1

    .line 1389
    :cond_3
    nop

    .line 1396
    :goto_1
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iput v1, v2, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 1397
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    .line 1398
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1399
    .local v2, "curItem":Landroidx/media2/common/MediaItem;
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    move-object v1, v3

    .line 1400
    .local v1, "nextItem":Landroidx/media2/common/MediaItem;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    if-eqz v2, :cond_4

    .line 1402
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v2, v1}, Landroidx/media2/player/MediaPlayer;->setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1404
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer;->skipToNextInternal()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    return-object v0

    .line 1400
    .end local v0    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    .end local v1    # "nextItem":Landroidx/media2/common/MediaItem;
    .end local v2    # "curItem":Landroidx/media2/common/MediaItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
