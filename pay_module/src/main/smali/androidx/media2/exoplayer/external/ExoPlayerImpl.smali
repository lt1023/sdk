.class final Landroidx/media2/exoplayer/external/ExoPlayerImpl;
.super Landroidx/media2/exoplayer/external/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/ExoPlayer;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field final emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

.field private final eventHandler:Landroid/os/Handler;

.field private foregroundMode:Z

.field private hasPendingPrepare:Z

.field private hasPendingSeek:Z

.field private internalPlayWhenReady:Z

.field private final internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

.field private final internalPlayerHandler:Landroid/os/Handler;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private final pendingListenerNotifications:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private pendingOperationAcks:I

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private playWhenReady:Z

.field private playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

.field private playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

.field private final renderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private repeatMode:I

.field private seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

.field private shuffleModeEnabled:Z

.field private final trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V
    .locals 15
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p5, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;
    .param p6, "looper"    # Landroid/os/Looper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 112
    move-object v0, p0

    move-object/from16 v12, p1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/BasePlayer;-><init>()V

    .line 113
    const-string v1, "ExoPlayerImpl"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Init "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExoPlayerLib/2.10.1"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    array-length v1, v12

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 116
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/Renderer;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 117
    invoke-static/range {p2 .. p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 118
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    .line 119
    iput v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    .line 120
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 121
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 122
    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    array-length v2, v12

    new-array v2, v2, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    array-length v3, v12

    new-array v3, v3, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;-><init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 127
    new-instance v1, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 128
    sget-object v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 129
    sget-object v1, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 130
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$1;

    move-object/from16 v13, p6

    invoke-direct {v1, p0, v13}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$1;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    .line 137
    const-wide/16 v1, 0x0

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/PlaybackInfo;->createDummy(JLandroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 138
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    .line 139
    new-instance v14, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    iget v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;-><init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;ZIZLandroid/os/Handler;Landroidx/media2/exoplayer/external/util/Clock;)V

    iput-object v14, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    .line 151
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayerHandler:Landroid/os/Handler;

    .line 152
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/CopyOnWriteArrayList;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;

    .line 51
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->invokeAll(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    return-void
.end method

.method private getResetPlaybackInfo(ZZI)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .locals 24
    .param p1, "resetPosition"    # Z
    .param p2, "resetState"    # Z
    .param p3, "playbackState"    # I

    .line 672
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 673
    iput v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    .line 674
    iput v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 675
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 682
    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 684
    .end local p1    # "resetPosition":Z
    .local v3, "resetPosition":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 685
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v4, v5, v6}, Landroidx/media2/exoplayer/external/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v4

    move-object v8, v4

    goto :goto_3

    .line 686
    :cond_3
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v8, v4

    :goto_3
    nop

    .line 687
    .local v8, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    :goto_4
    move-wide v9, v1

    .line 688
    .local v9, "startPositionUs":J
    if-eqz v3, :cond_5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_5

    :cond_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    :goto_5
    move-wide v11, v1

    .line 689
    .local v11, "contentPositionUs":J
    new-instance v1, Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 690
    if-eqz p2, :cond_6

    sget-object v2, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    goto :goto_6

    :cond_6
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    :goto_6
    move-object v6, v2

    .line 691
    if-eqz p2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    :goto_7
    move-object v7, v2

    const/4 v14, 0x0

    .line 697
    if-eqz p2, :cond_8

    sget-object v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_8

    :cond_8
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_8
    move-object v15, v2

    .line 698
    if-eqz p2, :cond_9

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    goto :goto_9

    :cond_9
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    :goto_9
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move/from16 v13, p3

    move-object/from16 v17, v8

    move-wide/from16 v18, v9

    move-wide/from16 v22, v9

    invoke-direct/range {v5 .. v23}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    .line 689
    return-object v1
.end method

.method private handlePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;IZI)V
    .locals 15
    .param p1, "playbackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;
    .param p2, "operationAcks"    # I
    .param p3, "positionDiscontinuity"    # Z
    .param p4, "positionDiscontinuityReason"    # I

    .line 636
    move-object v6, p0

    move-object/from16 v0, p1

    iget v1, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    sub-int v1, v1, p2

    iput v1, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    .line 637
    iget v1, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    if-nez v1, :cond_3

    .line 638
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 640
    iget-object v8, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    const-wide/16 v9, 0x0

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    .line 641
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 638
    :cond_0
    move-object v7, v0

    .line 647
    .end local p1    # "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    .local v7, "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    :goto_0
    iget-object v0, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, v7, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iput v1, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 650
    iput v1, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    .line 651
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    goto :goto_1

    .line 647
    :cond_1
    nop

    .line 655
    :goto_1
    iget-boolean v0, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingPrepare:Z

    if-eqz v0, :cond_2

    .line 656
    const/4 v4, 0x0

    goto :goto_2

    .line 657
    :cond_2
    const/4 v0, 0x2

    const/4 v4, 0x2

    :goto_2
    nop

    .line 658
    .local v4, "timelineChangeReason":I
    iget-boolean v8, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingSeek:Z

    .line 659
    .local v8, "seekProcessed":Z
    iput-boolean v1, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingPrepare:Z

    .line 660
    iput-boolean v1, v6, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingSeek:Z

    .line 661
    move-object v0, p0

    move-object v1, v7

    move/from16 v2, p3

    move/from16 v3, p4

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;ZIIZ)V

    move-object v0, v7

    goto :goto_3

    .line 637
    .end local v4    # "timelineChangeReason":I
    .end local v7    # "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    .end local v8    # "seekProcessed":Z
    .restart local p1    # "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    :cond_3
    nop

    .line 668
    .end local p1    # "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    .local v0, "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    :goto_3
    return-void
.end method

.method private static invokeAll(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .locals 2
    .param p1, "listenerInvocation"    # Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;",
            ">;",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;",
            ")V"
        }
    .end annotation

    .line 835
    .local p0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;

    .line 836
    .local v1, "listenerHolder":Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->invoke(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    .line 837
    .end local v1    # "listenerHolder":Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
    goto :goto_0

    .line 838
    :cond_0
    return-void
.end method

.method static final synthetic lambda$handleEvent$4$ExoPlayerImpl(Landroidx/media2/exoplayer/external/PlaybackParameters;Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 0
    .param p0, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 618
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    return-void
.end method

.method static final synthetic lambda$handleEvent$5$ExoPlayerImpl(Landroidx/media2/exoplayer/external/ExoPlaybackException;Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 0
    .param p0, "playbackError"    # Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 624
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    return-void
.end method

.method static final synthetic lambda$notifyListeners$6$ExoPlayerImpl(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .locals 0
    .param p0, "listenerSnapshot"    # Ljava/util/concurrent/CopyOnWriteArrayList;
    .param p1, "listenerInvocation"    # Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;

    .line 729
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->invokeAll(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    return-void
.end method

.method static final synthetic lambda$seekTo$3$ExoPlayerImpl(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 1
    .param p0, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 341
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPositionDiscontinuity(I)V

    return-void
.end method

.method static final synthetic lambda$setPlayWhenReady$0$ExoPlayerImpl(ZILandroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 0
    .param p0, "playWhenReady"    # Z
    .param p1, "playbackState"    # I
    .param p2, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 264
    invoke-interface {p2, p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static final synthetic lambda$setRepeatMode$1$ExoPlayerImpl(ILandroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 0
    .param p0, "repeatMode"    # I
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 278
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static final synthetic lambda$setShuffleModeEnabled$2$ExoPlayerImpl(ZLandroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 0
    .param p0, "shuffleModeEnabled"    # Z
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 292
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method private notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .locals 2
    .param p1, "listenerInvocation"    # Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;

    .line 728
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 729
    .local v0, "listenerSnapshot":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;>;"
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$6;

    invoke-direct {v1, v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$6;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Ljava/lang/Runnable;)V

    .line 730
    return-void
.end method

.method private notifyListeners(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "listenerNotificationRunnable"    # Ljava/lang/Runnable;

    .line 733
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 734
    .local v0, "isRunningRecursiveListenerNotification":Z
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 735
    if-eqz v0, :cond_0

    .line 736
    return-void

    .line 735
    :cond_0
    nop

    .line 738
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 740
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 742
    :cond_1
    return-void
.end method

.method private periodPositionUsToWindowPositionMs(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J
    .locals 5
    .param p1, "periodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "positionUs"    # J

    .line 745
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    .line 746
    .local v0, "positionMs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 747
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 748
    return-wide v0
.end method

.method private shouldMaskPosition()Z
    .locals 1

    .line 752
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updatePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;ZIIZ)V
    .locals 14
    .param p1, "playbackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;
    .param p2, "positionDiscontinuity"    # Z
    .param p3, "positionDiscontinuityReason"    # I
    .param p4, "timelineChangeReason"    # I
    .param p5, "seekProcessed"    # Z

    .line 712
    move-object v0, p0

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 713
    .local v11, "previousPlaybackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    move-object v12, p1

    iput-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 714
    new-instance v13, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    move-object v1, v13

    move-object v2, p1

    move-object v3, v11

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;-><init>(Landroidx/media2/exoplayer/external/PlaybackInfo;Landroidx/media2/exoplayer/external/PlaybackInfo;Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;ZIIZZ)V

    invoke-direct {p0, v13}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;-><init>(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public varargs blockingSendMessages([Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;)V
    .locals 6
    .param p1, "messages"    # [Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, "playerMessages":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/PlayerMessage;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 446
    .local v3, "message":Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    .line 447
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    iget v5, v3, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->messageType:I

    .line 448
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    iget-object v5, v3, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    .line 449
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 450
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 446
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v3    # "message":Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_0
    const/4 v1, 0x0

    .line 453
    .local v1, "wasInterrupted":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 454
    .local v3, "message":Landroidx/media2/exoplayer/external/PlayerMessage;
    const/4 v4, 0x1

    .line 455
    .local v4, "blockMessage":Z
    :goto_2
    if-eqz v4, :cond_1

    .line 457
    :try_start_0
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/PlayerMessage;->blockUntilDelivered()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    const/4 v4, 0x0

    .line 461
    :goto_3
    goto :goto_2

    .line 459
    :catch_0
    move-exception v5

    .line 460
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 455
    :cond_1
    nop

    .line 463
    .end local v3    # "message":Landroidx/media2/exoplayer/external/PlayerMessage;
    .end local v4    # "blockMessage":Z
    goto :goto_1

    .line 464
    :cond_2
    if-eqz v1, :cond_3

    .line 466
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    .line 464
    :cond_3
    nop

    .line 468
    :goto_4
    return-void
.end method

.method public createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 7
    .param p1, "target"    # Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    .line 432
    new-instance v6, Landroidx/media2/exoplayer/external/PlayerMessage;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 436
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayerHandler:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/PlayerMessage;-><init>(Landroidx/media2/exoplayer/external/PlayerMessage$Sender;Landroidx/media2/exoplayer/external/PlayerMessage$Target;Landroidx/media2/exoplayer/external/Timeline;ILandroid/os/Handler;)V

    .line 432
    return-object v6
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioComponent()Landroidx/media2/exoplayer/external/Player$AudioComponent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 513
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    .line 514
    :goto_0
    return-wide v0

    .line 518
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 6

    .line 553
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 556
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 558
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 560
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    .line 561
    .local v0, "contentBufferedPositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 563
    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v2

    .line 564
    .local v2, "loadingPeriod":Landroidx/media2/exoplayer/external/Timeline$Period;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 565
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v0

    .line 566
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 567
    iget-wide v0, v2, Landroidx/media2/exoplayer/external/Timeline$Period;->durationUs:J

    goto :goto_0

    .line 566
    :cond_2
    goto :goto_0

    .line 561
    .end local v2    # "loadingPeriod":Landroidx/media2/exoplayer/external/Timeline$Period;
    :cond_3
    nop

    .line 570
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v2, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->periodPositionUsToWindowPositionMs(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getContentPosition()J
    .locals 4

    .line 543
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 545
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 547
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 533
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 538
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 601
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 472
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 502
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 504
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 507
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->periodPositionUsToWindowPositionMs(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;
    .locals 1

    .line 596
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 586
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    .locals 1

    .line 591
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .line 481
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    return v0

    .line 484
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    return v0
.end method

.method public getDuration()J
    .locals 5

    .line 491
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 493
    .local v0, "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 494
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v2, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    .line 495
    .local v1, "adDurationUs":J
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v3

    return-wide v3

    .line 497
    .end local v0    # "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .end local v1    # "adDurationUs":J
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadataComponent()Landroidx/media2/exoplayer/external/Player$MetadataComponent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    return-object v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1

    .line 354
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 576
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .line 581
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v0, v0, p1

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 284
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getSeekParameters()Landroidx/media2/exoplayer/external/SeekParameters;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public getTextComponent()Landroidx/media2/exoplayer/external/Player$TextComponent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 4

    .line 523
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoComponent()Landroidx/media2/exoplayer/external/Player$VideoComponent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method handleEvent(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 606
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 627
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 622
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 623
    .local v0, "playbackError":Landroidx/media2/exoplayer/external/ExoPlaybackException;
    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 624
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$5;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$5;-><init>(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    .line 625
    goto :goto_1

    .line 615
    .end local v0    # "playbackError":Landroidx/media2/exoplayer/external/ExoPlaybackException;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 616
    .local v0, "playbackParameters":Landroidx/media2/exoplayer/external/PlaybackParameters;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 618
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$4;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$4;-><init>(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_1

    .line 616
    :cond_0
    goto :goto_1

    .line 608
    .end local v0    # "playbackParameters":Landroidx/media2/exoplayer/external/PlaybackParameters;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->handlePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;IZI)V

    .line 613
    nop

    .line 629
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isLoading()Z
    .locals 1

    .line 303
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 528
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    .line 226
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V
    .locals 7
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 231
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 232
    nop

    .line 233
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getResetPlaybackInfo(ZZI)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    .line 239
    .local v0, "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingPrepare:Z

    .line 240
    iget v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    .line 241
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    .line 242
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;ZIIZ)V

    .line 248
    return-void
.end method

.method public release()V
    .locals 6

    .line 408
    const-string v0, "ExoPlayerImpl"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 410
    invoke-static {}, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Release "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.10.1"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 412
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->release()V

    .line 413
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 414
    nop

    .line 415
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getResetPlaybackInfo(ZZI)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 419
    return-void
.end method

.method public removeListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;

    .line 196
    .local v1, "listenerHolder":Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->release()V

    .line 198
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_0
    nop

    .line 200
    .end local v1    # "listenerHolder":Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
    :goto_1
    goto :goto_0

    .line 201
    :cond_1
    return-void
.end method

.method public retry()V
    .locals 2

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    goto :goto_0

    .line 217
    :cond_1
    nop

    .line 221
    :goto_0
    return-void
.end method

.method public seekTo(IJ)V
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .line 308
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 309
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    if-ltz p1, :cond_5

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 312
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingSeek:Z

    .line 313
    iget v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    .line 314
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 318
    const-string v2, "ExoPlayerImpl"

    const-string v4, "seekTo ignored because an ad is playing"

    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 v4, -0x1

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 320
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 326
    return-void

    .line 328
    :cond_1
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    .line 329
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    .line 330
    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    move-wide v1, p2

    :goto_0
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 331
    iput v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    goto :goto_2

    .line 333
    :cond_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    .line 334
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v1

    :goto_1
    move-wide v5, v1

    .line 335
    .local v5, "windowPositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 336
    move-object v1, v0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 337
    .local v1, "periodUidAndPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 338
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 340
    .end local v1    # "periodUidAndPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v5    # "windowPositionUs":J
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekTo(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    .line 341
    sget-object v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$3;->$instance:Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    .line 342
    return-void

    .line 309
    :cond_5
    nop

    .line 310
    new-instance v1, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    throw v1
.end method

.method public varargs sendMessages([Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;)V
    .locals 5
    .param p1, "messages"    # [Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 426
    .local v2, "message":Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v3

    iget v4, v2, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->messageType:I

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v3

    iget-object v4, v2, Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 425
    .end local v2    # "message":Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 1
    .param p1, "foregroundMode"    # Z

    .line 375
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->foregroundMode:Z

    if-eq v0, p1, :cond_0

    .line 376
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->foregroundMode:Z

    .line 377
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setForegroundMode(Z)V

    goto :goto_0

    .line 375
    :cond_0
    nop

    .line 379
    :goto_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setPlayWhenReady(ZZ)V

    .line 253
    return-void
.end method

.method public setPlayWhenReady(ZZ)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "suppressPlayback"    # Z

    .line 256
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    .local v0, "internalPlayWhenReady":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayWhenReady:Z

    if-eq v1, v0, :cond_1

    .line 258
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayWhenReady:Z

    .line 259
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    goto :goto_1

    .line 257
    :cond_1
    nop

    .line 261
    :goto_1
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    if-eq v1, p1, :cond_2

    .line 262
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    .line 263
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    .line 264
    .local v1, "playbackState":I
    new-instance v2, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$0;

    invoke-direct {v2, p1, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$0;-><init>(ZI)V

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_2

    .line 261
    .end local v1    # "playbackState":I
    :cond_2
    nop

    .line 266
    :goto_2
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 346
    if-nez p1, :cond_0

    .line 347
    sget-object p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    goto :goto_0

    .line 346
    :cond_0
    nop

    .line 349
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    .line 350
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 275
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    .line 276
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    .line 277
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setRepeatMode(I)V

    .line 278
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$1;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$1;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_0

    .line 275
    :cond_0
    nop

    .line 280
    :goto_0
    return-void
.end method

.method public setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V
    .locals 1
    .param p1, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 359
    if-nez p1, :cond_0

    .line 360
    sget-object p1, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    goto :goto_0

    .line 359
    :cond_0
    nop

    .line 362
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 364
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V

    goto :goto_1

    .line 362
    :cond_1
    nop

    .line 366
    :goto_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 289
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 290
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 291
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setShuffleModeEnabled(Z)V

    .line 292
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$2;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$2;-><init>(Z)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_0

    .line 289
    :cond_0
    nop

    .line 294
    :goto_0
    return-void
.end method

.method public stop(Z)V
    .locals 8
    .param p1, "reset"    # Z

    .line 383
    if-eqz p1, :cond_0

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 385
    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    goto :goto_0

    .line 383
    :cond_0
    nop

    .line 387
    :goto_0
    nop

    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, p1, p1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getResetPlaybackInfo(ZZI)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v7

    .line 396
    .local v7, "playbackInfo":Landroidx/media2/exoplayer/external/PlaybackInfo;
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    .line 397
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stop(Z)V

    .line 398
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;ZIIZ)V

    .line 404
    return-void
.end method
