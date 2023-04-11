.class Landroidx/media2/player/MediaPlayer$Mp2Callback;
.super Landroidx/media2/player/MediaPlayer2$EventCallback;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mp2Callback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;

    .line 3086
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer2$EventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallCompleted(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 1
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "what"    # I
    .param p4, "status"    # I

    .line 3247
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/player/MediaPlayer;->handleCallComplete(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V

    .line 3248
    return-void
.end method

.method public onCommandLabelReached(Landroidx/media2/player/MediaPlayer2;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "label"    # Ljava/lang/Object;

    .line 3264
    return-void
.end method

.method public onError(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 2
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 3114
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->setState(I)V

    .line 3115
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroidx/media2/player/MediaPlayer;->setBufferingState(Landroidx/media2/common/MediaItem;I)V

    .line 3116
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$Mp2Callback$3;

    invoke-direct {v1, p0, p2, p3, p4}, Landroidx/media2/player/MediaPlayer$Mp2Callback$3;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->notifyMediaPlayerCallback(Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;)V

    .line 3122
    return-void
.end method

.method public onInfo(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 6
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "mp2What"    # I
    .param p4, "extra"    # I

    .line 3127
    const/4 v0, 0x2

    if-eq p3, v0, :cond_7

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p3, v1, :cond_4

    const/16 v1, 0x64

    if-eq p3, v1, :cond_3

    const/16 v4, 0x2c0

    if-eq p3, v4, :cond_1

    const/16 v1, 0x322

    if-eq p3, v1, :cond_0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_2

    .line 3141
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p2, v3}, Landroidx/media2/player/MediaPlayer;->setBufferingState(Landroidx/media2/common/MediaItem;I)V

    .line 3142
    goto/16 :goto_2

    .line 3129
    :pswitch_1
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, p2, v0}, Landroidx/media2/player/MediaPlayer;->setBufferingState(Landroidx/media2/common/MediaItem;I)V

    .line 3130
    goto/16 :goto_2

    .line 3225
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$Mp2Callback$8;

    invoke-direct {v1, p0}, Landroidx/media2/player/MediaPlayer$Mp2Callback$8;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto/16 :goto_2

    .line 3144
    :cond_1
    if-lt p4, v1, :cond_2

    .line 3145
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p2, v2}, Landroidx/media2/player/MediaPlayer;->setBufferingState(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_2

    .line 3144
    :cond_2
    goto/16 :goto_2

    .line 3132
    :cond_3
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$Mp2Callback$4;

    invoke-direct {v1, p0}, Landroidx/media2/player/MediaPlayer$Mp2Callback$4;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 3138
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p2, v3}, Landroidx/media2/player/MediaPlayer;->setBufferingState(Landroidx/media2/common/MediaItem;I)V

    .line 3139
    goto/16 :goto_2

    .line 3198
    :cond_4
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3199
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 3200
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 3201
    .local v1, "nextItemToPlay":Landroidx/media2/common/MediaItem;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3202
    if-eqz v1, :cond_6

    .line 3208
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->skipToNextPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3209
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    if-nez v0, :cond_5

    .line 3210
    const-string v3, "MediaPlayer"

    const-string v4, "Cannot play next media item"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3211
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3, v2}, Landroidx/media2/player/MediaPlayer;->setState(I)V

    goto :goto_0

    .line 3209
    :cond_5
    nop

    .line 3213
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :goto_0
    goto :goto_2

    .line 3215
    :cond_6
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v3}, Landroidx/media2/player/MediaPlayer;->setState(I)V

    .line 3216
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v2, Landroidx/media2/player/MediaPlayer$Mp2Callback$7;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$Mp2Callback$7;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;)V

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 3223
    goto :goto_2

    .line 3201
    .end local v1    # "nextItemToPlay":Landroidx/media2/common/MediaItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3151
    :cond_7
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3152
    :try_start_2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    if-ne v1, p2, :cond_8

    .line 3158
    const/4 v1, 0x0

    .line 3159
    .local v1, "shouldNotifyCurrentMediaItemChanged":Z
    const/4 v2, 0x0

    goto :goto_1

    .line 3165
    .end local v1    # "shouldNotifyCurrentMediaItemChanged":Z
    :cond_8
    const/4 v1, 0x1

    .line 3166
    .restart local v1    # "shouldNotifyCurrentMediaItemChanged":Z
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 3167
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    .line 3168
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 3170
    .local v2, "nextPlaylistItem":Landroidx/media2/common/MediaItem;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3171
    if-eqz v1, :cond_a

    .line 3172
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v3, Landroidx/media2/player/MediaPlayer$Mp2Callback$5;

    invoke-direct {v3, p0, p2}, Landroidx/media2/player/MediaPlayer$Mp2Callback$5;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v3}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 3181
    if-eqz v2, :cond_9

    .line 3182
    new-instance v0, Landroidx/media2/player/MediaPlayer$Mp2Callback$6;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v3, v2}, Landroidx/media2/player/MediaPlayer$Mp2Callback$6;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    .line 3192
    .local v0, "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    .line 3193
    .end local v0    # "pendingFuture":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    goto :goto_2

    .line 3181
    :cond_9
    goto :goto_2

    .line 3171
    :cond_a
    nop

    .line 3233
    .end local v1    # "shouldNotifyCurrentMediaItemChanged":Z
    .end local v2    # "nextPlaylistItem":Landroidx/media2/common/MediaItem;
    :goto_2
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3234
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3235
    .local v0, "what":I
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v2, Landroidx/media2/player/MediaPlayer$Mp2Callback$9;

    invoke-direct {v2, p0, p2, v0, p4}, Landroidx/media2/player/MediaPlayer$Mp2Callback$9;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->notifyMediaPlayerCallback(Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;)V

    goto :goto_3

    .line 3233
    .end local v0    # "what":I
    :cond_b
    nop

    .line 3242
    :goto_3
    return-void

    .line 3170
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaTimeDiscontinuity(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V
    .locals 2
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "timestamp"    # Landroidx/media2/player/MediaTimestamp;

    .line 3253
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$Mp2Callback$10;

    invoke-direct {v1, p0, p2, p3}, Landroidx/media2/player/MediaPlayer$Mp2Callback$10;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->notifyMediaPlayerCallback(Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;)V

    .line 3259
    return-void
.end method

.method public onSubtitleData(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
    .locals 2
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "trackIdx"    # I
    .param p4, "data"    # Landroidx/media2/common/SubtitleData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3269
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;

    invoke-direct {v1, p0, p3, p2, p4}, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 3276
    return-void
.end method

.method public onTimedMetaDataAvailable(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V
    .locals 2
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "data"    # Landroidx/media2/player/TimedMetaData;

    .line 3103
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$Mp2Callback$2;

    invoke-direct {v1, p0, p2, p3}, Landroidx/media2/player/MediaPlayer$Mp2Callback$2;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->notifyMediaPlayerCallback(Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;)V

    .line 3109
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .locals 3
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 3090
    new-instance v0, Landroidx/media2/common/VideoSize;

    invoke-direct {v0, p3, p4}, Landroidx/media2/common/VideoSize;-><init>(II)V

    .line 3092
    .local v0, "commonSize":Landroidx/media2/common/VideoSize;
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v2, Landroidx/media2/player/MediaPlayer$Mp2Callback$1;

    invoke-direct {v2, p0, p2, v0}, Landroidx/media2/player/MediaPlayer$Mp2Callback$1;-><init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    .line 3098
    return-void
.end method
