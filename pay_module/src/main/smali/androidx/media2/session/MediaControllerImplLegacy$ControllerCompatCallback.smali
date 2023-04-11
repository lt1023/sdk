.class final Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ControllerCompatCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplLegacy;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    .line 1080
    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 1336
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1337
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1338
    monitor-exit v0

    return-void

    .line 1340
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$14;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$14;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1347
    return-void

    .line 1340
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCaptioningEnabledChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1351
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1352
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1353
    monitor-exit v0

    return-void

    .line 1355
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$15;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$15;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Z)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1365
    return-void

    .line 1355
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1320
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1321
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1322
    monitor-exit v0

    return-void

    .line 1324
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$13;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$13;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1332
    return-void

    .line 1324
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .line 1253
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1255
    monitor-exit v0

    return-void

    .line 1257
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1258
    .local v1, "prevItem":Landroidx/media2/common/MediaItem;
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-virtual {v2, p1}, Landroidx/media2/session/MediaControllerImplLegacy;->setCurrentMediaItemLocked(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1259
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v2, v2, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1260
    .local v2, "currentItem":Landroidx/media2/common/MediaItem;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    if-eq v1, v2, :cond_1

    .line 1262
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$10;

    invoke-direct {v3, p0, v2}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$10;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v3}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_0

    .line 1261
    :cond_1
    nop

    .line 1269
    :goto_0
    return-void

    .line 1260
    .end local v1    # "prevItem":Landroidx/media2/common/MediaItem;
    .end local v2    # "currentItem":Landroidx/media2/common/MediaItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 17
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1117
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1118
    :try_start_0
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 1119
    monitor-exit v3

    return-void

    .line 1121
    :cond_0
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1122
    .local v0, "prevItem":Landroidx/media2/common/MediaItem;
    iget-object v4, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v4, v4, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1123
    .local v4, "prevState":Landroid/support/v4/media/session/PlaybackStateCompat;
    iget-object v5, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iput-object v2, v5, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1124
    iget-object v5, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-static/range {p1 .. p1}, Landroidx/media2/session/MediaUtils;->convertToPlayerState(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v6

    iput v6, v5, Landroidx/media2/session/MediaControllerImplLegacy;->mPlayerState:I

    .line 1125
    iget-object v5, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    if-nez v2, :cond_1

    const-wide/high16 v6, -0x8000000000000000L

    goto :goto_0

    .line 1126
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v6

    :goto_0
    iput-wide v6, v5, Landroidx/media2/session/MediaControllerImplLegacy;->mBufferedPosition:J

    .line 1128
    iget-object v5, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v5, v5, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 1129
    nop

    move v5, v6

    .local v5, "i":I
    :goto_1
    nop

    iget-object v7, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v7, v7, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    nop

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    if-ge v5, v7, :cond_3

    .line 1130
    nop

    iget-object v7, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v7, v7, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    nop

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    nop

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v7

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v9

    nop

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    .line 1131
    nop

    iget-object v7, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iput v5, v7, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 1132
    nop

    iget-object v7, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v8, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v8, v8, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    nop

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Landroidx/media2/common/MediaItem;

    nop

    iput-object v8, v7, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    nop

    goto :goto_2

    .line 1130
    :cond_2
    nop

    .line 1129
    :goto_2
    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    nop

    goto :goto_3

    .line 1128
    .end local v5    # "i":I
    :cond_4
    nop

    .line 1136
    :goto_3
    nop

    iget-object v5, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v5, v5, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    nop

    .line 1138
    .local v5, "currentItem":Landroidx/media2/common/MediaItem;
    nop

    iget-object v7, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v7, v7, Landroidx/media2/session/MediaControllerImplLegacy;->mCustomLayout:Ljava/util/List;

    nop

    .line 1139
    .local v7, "prevLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    nop

    iget-object v8, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    invoke-static/range {p1 .. p1}, Landroidx/media2/session/MediaUtils;->convertToCustomLayout(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v9

    nop

    iput-object v9, v8, Landroidx/media2/session/MediaControllerImplLegacy;->mCustomLayout:Ljava/util/List;

    .line 1140
    nop

    iget-object v8, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v8, v8, Landroidx/media2/session/MediaControllerImplLegacy;->mCustomLayout:Ljava/util/List;

    nop

    .line 1142
    .local v8, "currentLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    nop

    iget-object v9, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v9, v9, Landroidx/media2/session/MediaControllerImplLegacy;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    nop

    .line 1143
    .local v9, "prevAllowedCommands":Landroidx/media2/session/SessionCommandGroup;
    nop

    iget-object v10, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v11, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v11, v11, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1144
    nop

    invoke-virtual {v11}, Landroid/support/v4/media/session/MediaControllerCompat;->getFlags()J

    move-result-wide v11

    nop

    iget-object v13, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v13, v13, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1143
    nop

    invoke-static {v11, v12, v13}, Landroidx/media2/session/MediaUtils;->convertToSessionCommandGroup(JLandroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media2/session/SessionCommandGroup;

    move-result-object v11

    nop

    iput-object v11, v10, Landroidx/media2/session/MediaControllerImplLegacy;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 1145
    nop

    iget-object v10, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    nop

    iget-object v10, v10, Landroidx/media2/session/MediaControllerImplLegacy;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    nop

    .line 1146
    .local v10, "currentAllowedCommands":Landroidx/media2/session/SessionCommandGroup;
    nop

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 1148
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v3, v3, Landroidx/media2/session/MediaController;->mCallback:Landroidx/media2/session/MediaController$ControllerCallback;

    if-nez v3, :cond_5

    nop

    return-void

    .line 1149
    :cond_5
    nop

    if-eq v0, v5, :cond_6

    .line 1150
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v11, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$2;

    invoke-direct {v11, v1, v5}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$2;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v3, v11}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_4

    .line 1149
    :cond_6
    nop

    .line 1158
    :goto_4
    nop

    if-nez v2, :cond_8

    .line 1159
    nop

    if-eqz v4, :cond_7

    .line 1160
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v6, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$3;

    invoke-direct {v6, v1}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$3;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;)V

    invoke-virtual {v3, v6}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_5

    .line 1159
    :cond_7
    nop

    .line 1167
    :goto_5
    nop

    return-void

    .line 1169
    :cond_8
    nop

    if-eqz v4, :cond_a

    nop

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v11

    if-eq v3, v11, :cond_9

    goto :goto_6

    :cond_9
    nop

    goto :goto_7

    :cond_a
    :goto_6
    nop

    .line 1170
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v11, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$4;

    invoke-direct {v11, v1, v2}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$4;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v3, v11}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1178
    :goto_7
    nop

    if-eqz v4, :cond_c

    nop

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v11

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    nop

    goto :goto_9

    :cond_c
    :goto_8
    nop

    .line 1179
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v11, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$5;

    invoke-direct {v11, v1, v2}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$5;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v3, v11}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1187
    :goto_9
    nop

    if-eqz v4, :cond_e

    .line 1188
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v3, v3, Landroidx/media2/session/MediaController;->mTimeDiff:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v11

    .line 1189
    .local v11, "currentPosition":J
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v3, v3, Landroidx/media2/session/MediaController;->mTimeDiff:Ljava/lang/Long;

    .line 1190
    nop

    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v13

    sub-long v13, v11, v13

    .line 1189
    nop

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 1191
    .local v13, "positionDiff":J
    nop

    const-wide/16 v15, 0x64

    cmp-long v3, v13, v15

    if-lez v3, :cond_d

    .line 1192
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v15, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$6;

    invoke-direct {v15, v1, v11, v12}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$6;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;J)V

    invoke-virtual {v3, v15}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_a

    .line 1191
    :cond_d
    nop

    goto :goto_a

    .line 1187
    .end local v11    # "currentPosition":J
    .end local v13    # "positionDiff":J
    :cond_e
    nop

    .line 1201
    :goto_a
    nop

    invoke-virtual {v9, v10}, Landroidx/media2/session/SessionCommandGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1202
    nop

    iget-object v3, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v11, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$7;

    invoke-direct {v11, v1, v10}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$7;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v3, v11}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_b

    .line 1201
    :cond_f
    nop

    .line 1210
    :goto_b
    nop

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ne v3, v11, :cond_12

    .line 1211
    nop

    const/4 v3, 0x0

    .line 1212
    .local v3, "layoutChanged":Z
    nop

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c
    nop

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_11

    .line 1213
    nop

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media2/session/MediaSession$CommandButton;

    invoke-virtual {v12}, Landroidx/media2/session/MediaSession$CommandButton;->getCommand()Landroidx/media2/session/SessionCommand;

    move-result-object v12

    .line 1214
    nop

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media2/session/MediaSession$CommandButton;

    invoke-virtual {v13}, Landroidx/media2/session/MediaSession$CommandButton;->getCommand()Landroidx/media2/session/SessionCommand;

    move-result-object v13

    .line 1213
    nop

    invoke-static {v12, v13}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 1215
    nop

    const/4 v3, 0x1

    .line 1216
    nop

    goto :goto_d

    .line 1212
    :cond_10
    nop

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_11
    nop

    .end local v11    # "i":I
    :goto_d
    nop

    goto :goto_e

    .line 1220
    .end local v3    # "layoutChanged":Z
    :cond_12
    nop

    const/4 v3, 0x1

    .line 1222
    .restart local v3    # "layoutChanged":Z
    :goto_e
    nop

    if-eqz v3, :cond_13

    .line 1223
    nop

    iget-object v11, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v11, v11, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v12, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$8;

    invoke-direct {v12, v1, v8}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$8;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_f

    .line 1222
    :cond_13
    nop

    .line 1231
    :goto_f
    nop

    if-nez v5, :cond_14

    .line 1232
    nop

    return-void

    .line 1235
    :cond_14
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v11

    invoke-static {v11}, Landroidx/media2/session/MediaUtils;->toBufferingState(I)I

    move-result v11

    .line 1236
    .local v11, "bufferingState":I
    nop

    if-nez v4, :cond_15

    nop

    goto :goto_10

    .line 1238
    :cond_15
    nop

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v6

    invoke-static {v6}, Landroidx/media2/session/MediaUtils;->toBufferingState(I)I

    move-result v6

    :goto_10
    nop

    .line 1239
    .local v6, "prevBufferingState":I
    nop

    if-eq v11, v6, :cond_16

    .line 1240
    nop

    iget-object v12, v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v12, v12, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v13, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$9;

    invoke-direct {v13, v1, v5, v11}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$9;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {v12, v13}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_11

    .line 1239
    :cond_16
    nop

    .line 1247
    :goto_11
    nop

    return-void

    .line 1146
    .end local v0    # "prevItem":Landroidx/media2/common/MediaItem;
    .end local v3    # "layoutChanged":Z
    .end local v4    # "prevState":Landroid/support/v4/media/session/PlaybackStateCompat;
    .end local v5    # "currentItem":Landroidx/media2/common/MediaItem;
    .end local v6    # "prevBufferingState":I
    .end local v7    # "prevLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    .end local v8    # "currentLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    .end local v9    # "prevAllowedCommands":Landroidx/media2/session/SessionCommandGroup;
    .end local v10    # "currentAllowedCommands":Landroidx/media2/session/SessionCommandGroup;
    .end local v11    # "bufferingState":I
    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    throw v0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1275
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1276
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1277
    monitor-exit v0

    return-void

    .line 1279
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->removeNullElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    .line 1280
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1287
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v2, v2, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-static {v2}, Landroidx/media2/session/MediaUtils;->convertQueueItemListToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    goto :goto_1

    .line 1280
    :cond_2
    :goto_0
    nop

    .line 1284
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    .line 1285
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iput-object v2, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    .line 1289
    :goto_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    .line 1290
    .local v1, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v2, v2, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    .line 1291
    .local v2, "playlistMetadata":Landroidx/media2/common/MediaMetadata;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$11;

    invoke-direct {v3, p0, v1, v2}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$11;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v0, v3}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1298
    return-void

    .line 1291
    .end local v1    # "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .end local v2    # "playlistMetadata":Landroidx/media2/common/MediaMetadata;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1303
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1305
    monitor-exit v0

    return-void

    .line 1307
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    .line 1308
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    .line 1309
    .local v1, "playlistMetadata":Landroidx/media2/common/MediaMetadata;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$12;

    invoke-direct {v2, p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$12;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1316
    return-void

    .line 1309
    .end local v1    # "playlistMetadata":Landroidx/media2/common/MediaMetadata;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onRepeatModeChanged(I)V
    .locals 2
    .param p1, "repeatMode"    # I

    .line 1369
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1371
    monitor-exit v0

    return-void

    .line 1373
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iput p1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mRepeatMode:I

    .line 1374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$16;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$16;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1381
    return-void

    .line 1374
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSessionDestroyed()V
    .locals 1

    .line 1089
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/session/MediaControllerImplLegacy;->close()V

    .line 1090
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1094
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1096
    monitor-exit v0

    return-void

    .line 1098
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$1;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1106
    return-void

    .line 1098
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSessionReady()V
    .locals 1

    .line 1084
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/session/MediaControllerImplLegacy;->onConnectedNotLocked()V

    .line 1085
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 2
    .param p1, "shuffleMode"    # I

    .line 1385
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-boolean v1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 1387
    monitor-exit v0

    return-void

    .line 1389
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iput p1, v1, Landroidx/media2/session/MediaControllerImplLegacy;->mShuffleMode:I

    .line 1390
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$17;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$17;-><init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1397
    return-void

    .line 1390
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
