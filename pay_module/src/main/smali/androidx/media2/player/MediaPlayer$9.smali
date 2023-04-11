.class Landroidx/media2/player/MediaPlayer$9;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->setPlaylist(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
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

.field final synthetic val$metadata:Landroidx/media2/common/MediaMetadata;

.field final synthetic val$playlist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaMetadata;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1110
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$9;->val$metadata:Landroidx/media2/common/MediaMetadata;

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$9;->val$playlist:Ljava/util/List;

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

    .line 1115
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$9;->val$metadata:Landroidx/media2/common/MediaMetadata;

    iput-object v2, v1, Landroidx/media2/player/MediaPlayer;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    .line 1117
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$9;->val$playlist:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer$MediaItemList;->replaceAll(Ljava/util/Collection;)Z

    .line 1118
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->applyShuffleModeLocked()V

    .line 1119
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 1120
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    .line 1121
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1122
    .local v1, "curItem":Landroidx/media2/common/MediaItem;
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1123
    .local v3, "nextItem":Landroidx/media2/common/MediaItem;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v4, Landroidx/media2/player/MediaPlayer$9$1;

    invoke-direct {v4, p0}, Landroidx/media2/player/MediaPlayer$9$1;-><init>(Landroidx/media2/player/MediaPlayer$9;)V

    invoke-virtual {v0, v4}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 1131
    if-eqz v1, :cond_0

    .line 1132
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v1, v3}, Landroidx/media2/player/MediaPlayer;->setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$9;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1123
    .end local v1    # "curItem":Landroidx/media2/common/MediaItem;
    .end local v3    # "nextItem":Landroidx/media2/common/MediaItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
