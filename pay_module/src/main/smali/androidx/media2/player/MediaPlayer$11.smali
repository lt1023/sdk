.class Landroidx/media2/player/MediaPlayer$11;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
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


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1219
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$11;->val$index:I

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, "updatedCurNextItem":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;>;"
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1227
    :try_start_0
    iget v2, p0, Landroidx/media2/player/MediaPlayer$11;->val$index:I

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1228
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1230
    :cond_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget v3, p0, Landroidx/media2/player/MediaPlayer$11;->val$index:I

    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$MediaItemList;->remove(I)Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 1231
    .local v2, "item":Landroidx/media2/common/MediaItem;
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1232
    .local v3, "removedItemShuffleIdx":I
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1233
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v4, v4, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    if-ge v3, v4, :cond_1

    .line 1234
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v5, v4, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    goto :goto_0

    .line 1233
    :cond_1
    nop

    .line 1236
    :goto_0
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    move-result-object v4

    move-object v0, v4

    .line 1237
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1238
    .local v4, "curItem":Landroidx/media2/common/MediaItem;
    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v5, v5, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    move-object v2, v5

    .line 1239
    .local v2, "nextItem":Landroidx/media2/common/MediaItem;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 1241
    .local v1, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v5}, Landroidx/media2/player/MediaPlayer;->getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v5

    .line 1242
    .local v5, "metadata":Landroidx/media2/common/MediaMetadata;
    iget-object v6, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v7, Landroidx/media2/player/MediaPlayer$11$1;

    invoke-direct {v7, p0, v1, v5}, Landroidx/media2/player/MediaPlayer$11$1;-><init>(Landroidx/media2/player/MediaPlayer$11;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v6, v7}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 1250
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v6, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    if-eqz v0, :cond_4

    .line 1252
    iget-object v7, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 1253
    iget-object v7, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v7, v4, v2}, Landroidx/media2/player/MediaPlayer;->setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1254
    :cond_2
    iget-object v7, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 1255
    iget-object v7, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v7, v2}, Landroidx/media2/player/MediaPlayer;->setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1254
    :cond_3
    goto :goto_1

    .line 1258
    :cond_4
    iget-object v7, p0, Landroidx/media2/player/MediaPlayer$11;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/media2/player/MediaPlayer;->createFutureForResultCode(I)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    :goto_1
    return-object v6

    .line 1239
    .end local v1    # "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .end local v2    # "nextItem":Landroidx/media2/common/MediaItem;
    .end local v3    # "removedItemShuffleIdx":I
    .end local v4    # "curItem":Landroidx/media2/common/MediaItem;
    .end local v5    # "metadata":Landroidx/media2/common/MediaMetadata;
    .end local v6    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
