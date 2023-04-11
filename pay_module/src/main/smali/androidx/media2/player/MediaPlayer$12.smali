.class Landroidx/media2/player/MediaPlayer$12;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->replacePlaylistItem(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
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

.field final synthetic val$index:I

.field final synthetic val$item:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ILandroidx/media2/common/MediaItem;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1288
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$12;->val$index:I

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$12;->val$item:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 1293
    const/4 v0, 0x0

    .line 1294
    .local v0, "updatedCurNextItem":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;>;"
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1295
    :try_start_0
    iget v2, p0, Landroidx/media2/player/MediaPlayer$12;->val$index:I

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1299
    :cond_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$12;->val$index:I

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer$MediaItemList;->get(I)Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1300
    .local v2, "shuffleIdx":I
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$12;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$12;->val$index:I

    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$12;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3, v4, v5}, Landroidx/media2/player/MediaPlayer$MediaItemList;->set(ILandroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    .line 1302
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    move-result-object v3

    move-object v0, v3

    .line 1303
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1304
    .local v3, "curItem":Landroidx/media2/common/MediaItem;
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    move-object v2, v4

    .line 1305
    .local v2, "nextItem":Landroidx/media2/common/MediaItem;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 1308
    .local v1, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer;->getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v4

    .line 1309
    .local v4, "metadata":Landroidx/media2/common/MediaMetadata;
    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v6, Landroidx/media2/player/MediaPlayer$12$1;

    invoke-direct {v6, p0, v1, v4}, Landroidx/media2/player/MediaPlayer$12$1;-><init>(Landroidx/media2/player/MediaPlayer$12;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v5, v6}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 1317
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v5, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    if-eqz v0, :cond_3

    .line 1319
    iget-object v6, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 1320
    iget-object v6, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v6, v3, v2}, Landroidx/media2/player/MediaPlayer;->setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1321
    :cond_1
    iget-object v6, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 1322
    iget-object v6, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v6, v2}, Landroidx/media2/player/MediaPlayer;->setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1321
    :cond_2
    goto :goto_0

    .line 1325
    :cond_3
    iget-object v6, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/media2/player/MediaPlayer;->createFutureForResultCode(I)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    :goto_0
    return-object v5

    .line 1295
    .end local v1    # "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .end local v2    # "nextItem":Landroidx/media2/common/MediaItem;
    .end local v3    # "curItem":Landroidx/media2/common/MediaItem;
    .end local v4    # "metadata":Landroidx/media2/common/MediaMetadata;
    .end local v5    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    :cond_4
    :goto_1
    nop

    .line 1296
    :try_start_1
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$12;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v3, -0x3

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$12;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2, v3, v4}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1305
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
