.class final Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ExoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaItemQueue"
.end annotation


# instance fields
.field private final mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaItemPlayingTimeUs:J

.field private final mDataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private final mFileDescriptorRegistry:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;

.field private final mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

.field private final mMediaItemInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

.field private mStartPlayingTimeNs:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "player"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p3, "listener"    # Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mContext:Landroid/content/Context;

    .line 886
    iput-object p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 887
    iput-object p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    .line 888
    const-string v0, "MediaPlayer2"

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "userAgent":Ljava/lang/String;
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;

    invoke-direct {v1, p1, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mDataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 890
    new-instance v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>([Landroidx/media2/exoplayer/external/source/MediaSource;)V

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    .line 891
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    .line 892
    new-instance v1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;

    invoke-direct {v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;-><init>()V

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mFileDescriptorRegistry:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;

    .line 893
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mStartPlayingTimeNs:J

    .line 894
    return-void
.end method

.method private appendMediaItem(Landroidx/media2/common/MediaItem;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 21
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/util/Collection<",
            "Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1025
    .local p2, "mediaItemInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;>;"
    .local p3, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mDataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 1027
    .local v2, "dataSourceFactory":Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    instance-of v3, v1, Landroidx/media2/common/FileMediaItem;

    if-eqz v3, :cond_0

    .line 1028
    move-object v3, v1

    check-cast v3, Landroidx/media2/common/FileMediaItem;

    .line 1029
    .local v3, "fileMediaItem":Landroidx/media2/common/FileMediaItem;
    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->increaseRefCount()V

    .line 1030
    nop

    .line 1031
    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1032
    .local v4, "fileDescriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->getFileDescriptorOffset()J

    move-result-wide v11

    .line 1033
    .local v11, "offset":J
    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->getFileDescriptorLength()J

    move-result-wide v13

    .line 1034
    .local v13, "length":J
    iget-object v5, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mFileDescriptorRegistry:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;

    invoke-virtual {v5, v4}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->registerMediaItemAndGetLock(Ljava/io/FileDescriptor;)Ljava/lang/Object;

    move-result-object v15

    .line 1035
    .local v15, "lock":Ljava/lang/Object;
    nop

    .line 1036
    move-object v5, v4

    move-wide v6, v11

    move-wide v8, v13

    move-object v10, v15

    invoke-static/range {v5 .. v10}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->getFactory(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    move-result-object v2

    goto :goto_0

    .line 1027
    .end local v3    # "fileMediaItem":Landroidx/media2/common/FileMediaItem;
    .end local v4    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v11    # "offset":J
    .end local v13    # "length":J
    .end local v15    # "lock":Ljava/lang/Object;
    :cond_0
    nop

    .line 1040
    :goto_0
    iget-object v3, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->createUnclippedMediaSource(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/common/MediaItem;)Landroidx/media2/exoplayer/external/source/MediaSource;

    move-result-object v3

    .line 1045
    .local v3, "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    const/4 v4, 0x0

    .line 1046
    .local v4, "durationProvidingMediaSource":Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/MediaItem;->getStartPosition()J

    move-result-wide v5

    .line 1047
    .local v5, "startPosition":J
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/MediaItem;->getEndPosition()J

    move-result-wide v7

    .line 1048
    .local v7, "endPosition":J
    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-nez v11, :cond_2

    const-wide v9, 0x7ffffffffffffffL

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move-object v13, v4

    goto :goto_2

    .line 1049
    :cond_2
    :goto_1
    new-instance v13, Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;

    invoke-direct {v13, v3}, Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 1051
    .end local v4    # "durationProvidingMediaSource":Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;
    .local v13, "durationProvidingMediaSource":Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;
    new-instance v4, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;

    .line 1053
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v14

    .line 1054
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v12, v4

    invoke-direct/range {v12 .. v20}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;JJZZZ)V

    move-object v3, v4

    .line 1060
    :goto_2
    instance-of v4, v1, Landroidx/media2/common/UriMediaItem;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Landroidx/media2/common/UriMediaItem;

    .line 1061
    invoke-virtual {v4}, Landroidx/media2/common/UriMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    goto :goto_3

    .line 1060
    :cond_4
    nop

    .line 1061
    :goto_3
    const/4 v4, 0x0

    .line 1062
    .local v4, "isRemote":Z
    :goto_4
    move-object/from16 v9, p3

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v10, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    invoke-direct {v10, v1, v13, v4}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;-><init>(Landroidx/media2/common/MediaItem;Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;Z)V

    move-object/from16 v11, p2

    invoke-interface {v11, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1065
    return-void
.end method

.method private releaseMediaItem(Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;)V
    .locals 5
    .param p1, "mediaItemInfo"    # Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    .line 1068
    iget-object v0, p1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    .line 1070
    .local v0, "mediaItem":Landroidx/media2/common/MediaItem;
    :try_start_0
    instance-of v1, v0, Landroidx/media2/common/FileMediaItem;

    if-eqz v1, :cond_0

    .line 1071
    move-object v1, v0

    check-cast v1, Landroidx/media2/common/FileMediaItem;

    .line 1072
    invoke-virtual {v1}, Landroidx/media2/common/FileMediaItem;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1073
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1074
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mFileDescriptorRegistry:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;

    invoke-virtual {v2, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->unregisterMediaItem(Ljava/io/FileDescriptor;)V

    .line 1075
    move-object v2, v0

    check-cast v2, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v2}, Landroidx/media2/common/FileMediaItem;->decreaseRefCount()V

    .end local v1    # "fileDescriptor":Ljava/io/FileDescriptor;
    goto :goto_0

    .line 1076
    :cond_0
    instance-of v1, v0, Landroidx/media2/common/CallbackMediaItem;

    if-eqz v1, :cond_1

    .line 1077
    iget-object v1, p1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    check-cast v1, Landroidx/media2/common/CallbackMediaItem;

    .line 1078
    invoke-virtual {v1}, Landroidx/media2/common/CallbackMediaItem;->getDataSourceCallback()Landroidx/media2/common/DataSourceCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/DataSourceCallback;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1076
    :cond_1
    :goto_0
    nop

    .line 1082
    :goto_1
    goto :goto_2

    .line 1080
    :catch_0
    move-exception v1

    .line 1081
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ExoPlayerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error releasing media item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 897
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->releaseMediaItem(Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;)V

    goto :goto_0

    .line 900
    :cond_0
    return-void
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 942
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    iget-object v0, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mMediaItem:Landroidx/media2/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method public getCurrentMediaItemDuration()J
    .locals 3

    .line 946
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    .line 947
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    iget-object v0, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mDurationProvidingMediaSource:Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;

    .line 948
    .local v0, "durationProvidingMediaSource":Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;
    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/DurationProvidingMediaSource;->getDurationMs()J

    move-result-wide v1

    return-wide v1

    .line 951
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getDuration()J

    move-result-wide v1

    return-wide v1
.end method

.method public getCurrentMediaItemIsRemote()Z
    .locals 1

    .line 960
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    iget-boolean v0, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;->mIsRemote:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentMediaItemPlayingTimeMs()J
    .locals 2

    .line 956
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mCurrentMediaItemPlayingTimeUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 903
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPlayerEnded()V
    .locals 2

    .line 986
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 987
    .local v0, "mediaItem":Landroidx/media2/common/MediaItem;
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-interface {v1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaItemEnded(Landroidx/media2/common/MediaItem;)V

    .line 988
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-interface {v1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onPlaybackEnded(Landroidx/media2/common/MediaItem;)V

    .line 989
    return-void
.end method

.method public onPlaying()V
    .locals 5

    .line 970
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mStartPlayingTimeNs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 971
    return-void

    .line 973
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mStartPlayingTimeNs:J

    .line 974
    return-void
.end method

.method public onPositionDiscontinuity(Z)V
    .locals 4
    .param p1, "isPeriodTransition"    # Z

    .line 992
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 993
    .local v0, "currentMediaItem":Landroidx/media2/common/MediaItem;
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getRepeatMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-interface {v1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onLoop(Landroidx/media2/common/MediaItem;)V

    goto :goto_0

    .line 993
    :cond_0
    nop

    .line 996
    :goto_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 997
    .local v1, "windowIndex":I
    if-lez v1, :cond_5

    .line 999
    if-eqz p1, :cond_1

    .line 1000
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaItemEnded(Landroidx/media2/common/MediaItem;)V

    goto :goto_1

    .line 999
    :cond_1
    nop

    .line 1002
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 1003
    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    invoke-direct {p0, v3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->releaseMediaItem(Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;)V

    .line 1002
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1005
    .end local v2    # "i":I
    :cond_2
    if-eqz p1, :cond_3

    .line 1006
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaItemStartedAsNext(Landroidx/media2/common/MediaItem;)V

    goto :goto_3

    .line 1005
    :cond_3
    nop

    .line 1008
    :goto_3
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V

    .line 1009
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mCurrentMediaItemPlayingTimeUs:J

    .line 1010
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mStartPlayingTimeNs:J

    .line 1011
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1012
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->onPlaying()V

    goto :goto_4

    .line 1011
    :cond_4
    goto :goto_4

    .line 997
    :cond_5
    nop

    .line 1015
    :goto_4
    return-void
.end method

.method public onStopped()V
    .locals 10

    .line 977
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mStartPlayingTimeNs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 978
    return-void

    .line 980
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 981
    .local v0, "nowNs":J
    iget-wide v4, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mCurrentMediaItemPlayingTimeUs:J

    iget-wide v6, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mStartPlayingTimeNs:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mCurrentMediaItemPlayingTimeUs:J

    .line 982
    iput-wide v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mStartPlayingTimeNs:J

    .line 983
    return-void
.end method

.method public preparePlayer()V
    .locals 2

    .line 937
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 938
    return-void
.end method

.method public setMediaItem(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 907
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->clear()V

    .line 908
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->clear()V

    .line 909
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->setNextMediaItems(Ljava/util/List;)V

    .line 910
    return-void
.end method

.method public setNextMediaItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 913
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    .line 914
    .local v0, "size":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 915
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    invoke-virtual {v2, v1, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V

    .line 917
    :goto_0
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 918
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    invoke-direct {p0, v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->releaseMediaItem(Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;)V

    goto :goto_0

    .line 917
    :cond_0
    goto :goto_1

    .line 914
    :cond_1
    nop

    .line 922
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 923
    .local v2, "mediaSources":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/common/MediaItem;

    .line 924
    .local v4, "mediaItem":Landroidx/media2/common/MediaItem;
    if-nez v4, :cond_2

    .line 925
    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onError(Landroidx/media2/common/MediaItem;I)V

    .line 926
    return-void

    .line 928
    :cond_2
    iget-object v5, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-direct {p0, v4, v5, v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->appendMediaItem(Landroidx/media2/common/MediaItem;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 932
    .end local v4    # "mediaItem":Landroidx/media2/common/MediaItem;
    goto :goto_2

    .line 933
    :cond_3
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V

    .line 934
    return-void
.end method

.method public skipToNext()V
    .locals 2

    .line 965
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mMediaItemInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->releaseMediaItem(Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;)V

    .line 966
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->mConcatenatingMediaSource:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSource(I)V

    .line 967
    return-void
.end method
