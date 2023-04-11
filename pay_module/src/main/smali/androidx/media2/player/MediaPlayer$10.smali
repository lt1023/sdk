.class Landroidx/media2/player/MediaPlayer$10;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->addPlaylistItem(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1162
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$10;->val$item:Landroidx/media2/common/MediaItem;

    iput p4, p0, Landroidx/media2/player/MediaPlayer$10;->val$index:I

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$10;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer$MediaItemList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x3

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1170
    :cond_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer$10;->val$index:I

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$MediaItemList;->size()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/player/MediaPlayer;->clamp(II)I

    move-result v1

    .line 1171
    .local v1, "clampedIndex":I
    move v2, v1

    .line 1172
    .local v2, "addedShuffleIdx":I
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$10;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3, v1, v4}, Landroidx/media2/player/MediaPlayer$MediaItemList;->add(ILandroidx/media2/common/MediaItem;)V

    .line 1173
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffleMode:I

    if-nez v3, :cond_1

    .line 1174
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$10;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1177
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v5, v5, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v2, v3

    .line 1178
    :try_start_1
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$10;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1180
    :goto_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v3, v3, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    if-gt v2, v3, :cond_2

    .line 1181
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v4, v3, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    goto :goto_1

    .line 1180
    :cond_2
    nop

    .line 1183
    :goto_1
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    move-result-object v3

    move-object v1, v3

    .line 1184
    .end local v2    # "addedShuffleIdx":I
    .local v1, "updatedCurNextItem":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;>;"
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v0

    .line 1186
    .local v0, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    .line 1187
    .local v2, "metadata":Landroidx/media2/common/MediaMetadata;
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v4, Landroidx/media2/player/MediaPlayer$10$1;

    invoke-direct {v4, p0, v0, v2}, Landroidx/media2/player/MediaPlayer$10$1;-><init>(Landroidx/media2/player/MediaPlayer$10;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 1195
    iget-object v3, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 1196
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1198
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v3, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$10;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v5, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroidx/media2/common/MediaItem;

    invoke-virtual {v4, v5}, Landroidx/media2/player/MediaPlayer;->setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    return-object v3

    .line 1184
    .end local v0    # "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .end local v1    # "updatedCurNextItem":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;>;"
    .end local v2    # "metadata":Landroidx/media2/common/MediaMetadata;
    .end local v3    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
