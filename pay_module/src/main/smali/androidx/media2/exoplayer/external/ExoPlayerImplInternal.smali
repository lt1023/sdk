.class final Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
.implements Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;
.implements Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
.implements Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;
.implements Landroidx/media2/exoplayer/external/PlayerMessage$Sender;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;,
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;,
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x9

.field public static final MSG_PLAYBACK_INFO_CHANGED:I = 0x0

.field public static final MSG_PLAYBACK_PARAMETERS_CHANGED:I = 0x1

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x11

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x8

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEND_MESSAGE:I = 0xf

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0x10

.field private static final MSG_SET_FOREGROUND_MODE:I = 0xe

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xc

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xd

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0xa

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xb

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

.field private enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private foregroundMode:Z

.field private final handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private final loadControl:Landroidx/media2/exoplayer/external/LoadControl;

.field private final mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

.field private mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private nextPendingMessageIndex:I

.field private pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPrepareCount:I

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

.field private final playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private repeatMode:I

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

.field private shuffleModeEnabled:Z

.field private final trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;ZIZLandroid/os/Handler;Landroidx/media2/exoplayer/external/util/Clock;)V
    .locals 3
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "emptyTrackSelectorResult"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .param p4, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p5, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p6, "playWhenReady"    # Z
    .param p7, "repeatMode"    # I
    .param p8, "shuffleModeEnabled"    # Z
    .param p9, "eventHandler"    # Landroid/os/Handler;
    .param p10, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 146
    iput-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 147
    iput-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 148
    iput-object p4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    .line 149
    iput-object p5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 150
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    .line 151
    iput p7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->repeatMode:I

    .line 152
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 153
    iput-object p9, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 154
    iput-object p10, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 155
    new-instance v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    .line 157
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 158
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 160
    sget-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 161
    nop

    .line 162
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, p3}, Landroidx/media2/exoplayer/external/PlaybackInfo;->createDummy(JLandroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 163
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$1;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 164
    array-length v0, p1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/RendererCapabilities;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 166
    aget-object v1, p1, v0

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/Renderer;->setIndex(I)V

    .line 167
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    aget-object v2, p1, v0

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Renderer;->getCapabilities()Landroidx/media2/exoplayer/external/RendererCapabilities;

    move-result-object v2

    aput-object v2, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-direct {v0, p0, p10}, Landroidx/media2/exoplayer/external/DefaultMediaClock;-><init>(Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;Landroidx/media2/exoplayer/external/util/Clock;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Renderer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 172
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 173
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 174
    invoke-virtual {p2, p0, p5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->init(Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {p10, v0, p0}, Landroidx/media2/exoplayer/external/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    .line 182
    return-void
.end method

.method private deliverMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .locals 4
    .param p1, "message"    # Landroidx/media2/exoplayer/external/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 969
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    return-void

    .line 973
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getTarget()Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    .line 976
    nop

    .line 977
    return-void

    .line 975
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    throw v1
.end method

.method private disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V
    .locals 1
    .param p1, "renderer"    # Landroidx/media2/exoplayer/external/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->onRendererDisabled(Landroidx/media2/exoplayer/external/Renderer;)V

    .line 1087
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->ensureStopped(Landroidx/media2/exoplayer/external/Renderer;)V

    .line 1088
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->disable()V

    .line 1089
    return-void
.end method

.method private doSomeWork()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 559
    .local v1, "operationStartTimeMs":J
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePeriods()V

    .line 560
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v3

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 562
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 563
    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 564
    return-void

    .line 566
    :cond_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    .line 568
    .local v3, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    const-string v6, "doSomeWork"

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 570
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 573
    .local v6, "rendererPositionElapsedRealtimeUs":J
    iget-object v10, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v11, v11, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v10, v11, v12, v13}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    .line 576
    const/4 v10, 0x1

    .line 577
    .local v10, "renderersEnded":Z
    const/4 v11, 0x1

    .line 578
    .local v11, "renderersReadyOrEnded":Z
    iget-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v13, v12

    move v15, v10

    const/4 v10, 0x0

    .end local v10    # "renderersEnded":Z
    .local v15, "renderersEnded":Z
    :goto_0
    if-ge v10, v13, :cond_6

    aget-object v14, v12, v10

    .line 582
    .local v14, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v14, v8, v9, v6, v7}, Landroidx/media2/exoplayer/external/Renderer;->render(JJ)V

    .line 583
    const/4 v8, 0x1

    if-eqz v15, :cond_1

    invoke-interface {v14}, Landroidx/media2/exoplayer/external/Renderer;->isEnded()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move v15, v9

    .line 588
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/Renderer;->isReady()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v14}, Landroidx/media2/exoplayer/external/Renderer;->isEnded()Z

    move-result v9

    if-nez v9, :cond_3

    .line 589
    invoke-direct {v0, v14}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererWaitingForNextStream(Landroidx/media2/exoplayer/external/Renderer;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 588
    :cond_3
    nop

    .line 589
    :goto_2
    const/4 v9, 0x1

    .line 590
    .local v9, "rendererReadyOrEnded":Z
    :goto_3
    if-nez v9, :cond_4

    .line 591
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/Renderer;->maybeThrowStreamError()V

    goto :goto_4

    .line 590
    :cond_4
    nop

    .line 593
    :goto_4
    if-eqz v11, :cond_5

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    move v11, v8

    .line 578
    .end local v9    # "rendererReadyOrEnded":Z
    .end local v14    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v8, 0x3e8

    goto :goto_0

    .line 595
    :cond_6
    if-nez v11, :cond_7

    .line 596
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    goto :goto_6

    .line 595
    :cond_7
    nop

    .line 599
    :goto_6
    iget-object v8, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v8, v8, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    .line 600
    .local v8, "playingPeriodDurationUs":J
    const/4 v10, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v15, :cond_9

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v8, v17

    if-eqz v14, :cond_8

    iget-object v14, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v4, v14, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v14, v8, v4

    if-gtz v14, :cond_9

    :cond_8
    iget-object v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-eqz v4, :cond_9

    .line 604
    invoke-direct {v0, v10}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 605
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_9

    .line 600
    :cond_9
    nop

    .line 606
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v4, v13, :cond_c

    .line 607
    invoke-direct {v0, v11}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 608
    invoke-direct {v0, v12}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 609
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v4, :cond_a

    .line 610
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_9

    .line 609
    :cond_a
    goto :goto_9

    .line 607
    :cond_b
    goto :goto_7

    .line 606
    :cond_c
    nop

    .line 612
    :goto_7
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v4, v12, :cond_10

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v4, v4

    if-nez v4, :cond_d

    .line 613
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_d
    if-nez v11, :cond_f

    .line 614
    :cond_e
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 615
    invoke-direct {v0, v13}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 616
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_9

    .line 613
    :cond_f
    :goto_8
    goto :goto_9

    .line 612
    :cond_10
    nop

    .line 619
    :goto_9
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v4, v13, :cond_12

    .line 620
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v5, v4

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v5, :cond_11

    aget-object v16, v4, v14

    .line 621
    .local v16, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface/range {v16 .. v16}, Landroidx/media2/exoplayer/external/Renderer;->maybeThrowStreamError()V

    .line 620
    .end local v16    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_11
    goto :goto_b

    .line 619
    :cond_12
    nop

    .line 625
    :goto_b
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v4, :cond_13

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v4, v12, :cond_14

    :cond_13
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v4, v13, :cond_15

    .line 627
    :cond_14
    const-wide/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_c

    .line 628
    :cond_15
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v4, v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v4, v10, :cond_16

    .line 629
    const-wide/16 v4, 0x3e8

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_c

    .line 628
    :cond_16
    nop

    .line 631
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v4, v13}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->removeMessages(I)V

    .line 634
    :goto_c
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 635
    return-void
.end method

.method private enableRenderer(IZI)V
    .locals 18
    .param p1, "rendererIndex"    # I
    .param p2, "wasRendererEnabled"    # Z
    .param p3, "enabledRendererIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1748
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    .line 1749
    .local v2, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v3, v3, v1

    .line 1750
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    aput-object v3, v4, p3

    .line 1751
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v4

    if-nez v4, :cond_3

    .line 1752
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v13

    .line 1753
    .local v13, "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    iget-object v4, v13, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v14, v4, v1

    .line 1755
    .local v14, "rendererConfiguration":Landroidx/media2/exoplayer/external/RendererConfiguration;
    iget-object v4, v13, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v15

    .line 1756
    .local v15, "newSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    invoke-static {v15}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getFormats(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v16

    .line 1758
    .local v16, "formats":[Landroidx/media2/exoplayer/external/Format;
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move/from16 v17, v4

    .line 1760
    .local v17, "playing":Z
    if-nez p2, :cond_1

    if-eqz v17, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 1762
    .local v10, "joining":Z
    :goto_1
    iget-object v4, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v7, v4, v1

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1764
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v11

    .line 1762
    move-object v4, v3

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-interface/range {v4 .. v12}, Landroidx/media2/exoplayer/external/Renderer;->enable(Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;JZJ)V

    .line 1765
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->onRendererEnabled(Landroidx/media2/exoplayer/external/Renderer;)V

    .line 1767
    if-eqz v17, :cond_2

    .line 1768
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->start()V

    goto :goto_2

    .line 1767
    :cond_2
    goto :goto_2

    .line 1751
    .end local v10    # "joining":Z
    .end local v13    # "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .end local v14    # "rendererConfiguration":Landroidx/media2/exoplayer/external/RendererConfiguration;
    .end local v15    # "newSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v16    # "formats":[Landroidx/media2/exoplayer/external/Format;
    .end local v17    # "playing":Z
    :cond_3
    nop

    .line 1771
    :goto_2
    return-void
.end method

.method private enableRenderers([ZI)V
    .locals 5
    .param p1, "rendererWasEnabledFlags"    # [Z
    .param p2, "totalEnabledRendererCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1727
    new-array v0, p2, [Landroidx/media2/exoplayer/external/Renderer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 1728
    const/4 v0, 0x0

    .line 1729
    .local v0, "enabledRendererCount":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 1732
    .local v1, "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1733
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1734
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->reset()V

    goto :goto_1

    .line 1733
    :cond_0
    nop

    .line 1732
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1738
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 1739
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1740
    aget-boolean v3, p1, v2

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "enabledRendererCount":I
    .local v4, "enabledRendererCount":I
    invoke-direct {p0, v2, v3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enableRenderer(IZI)V

    move v0, v4

    goto :goto_3

    .line 1739
    .end local v4    # "enabledRendererCount":I
    .restart local v0    # "enabledRendererCount":I
    :cond_2
    nop

    .line 1738
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1743
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private ensureStopped(Landroidx/media2/exoplayer/external/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroidx/media2/exoplayer/external/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1080
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1081
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->stop()V

    goto :goto_0

    .line 1080
    :cond_0
    nop

    .line 1083
    :goto_0
    return-void
.end method

.method private static getFormats(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)[Landroidx/media2/exoplayer/external/Format;
    .locals 4
    .param p0, "newSelection"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 1820
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1821
    .local v0, "length":I
    :goto_0
    new-array v1, v0, [Landroidx/media2/exoplayer/external/Format;

    .line 1822
    .local v1, "formats":[Landroidx/media2/exoplayer/external/Format;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1823
    invoke-interface {p0, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1822
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1825
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private getMaxRendererReadPositionUs()J
    .locals 9

    .line 1357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1358
    .local v0, "readingHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-nez v0, :cond_0

    .line 1359
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1361
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    .line 1362
    .local v1, "maxReadPositionUs":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 1363
    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v4, v4, v3

    .line 1364
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 1366
    goto :goto_1

    .line 1368
    :cond_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    .line 1369
    .local v4, "readingPositionUs":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 1370
    return-wide v6

    .line 1372
    :cond_2
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    .line 1363
    .end local v4    # "readingPositionUs":J
    :cond_3
    nop

    .line 1362
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1375
    .end local v3    # "i":I
    :cond_4
    return-wide v1
.end method

.method private getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1477
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getTotalBufferedDurationUs()J
    .locals 2

    .line 1803
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .locals 3
    .param p1, "bufferedPositionInLoadingPeriodUs"    # J

    .line 1807
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1808
    .local v0, "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-nez v0, :cond_0

    .line 1809
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1810
    :cond_0
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 1808
    :goto_0
    return-wide v1
.end method

.method private handleContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 3
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 1656
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLoading(Landroidx/media2/exoplayer/external/source/MediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1658
    return-void

    .line 1660
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1661
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1662
    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .locals 6
    .param p1, "loadingTrackSelectionChanged"    # Z

    .line 1780
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1782
    .local v0, "loadingMediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1783
    .local v1, "loadingMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1784
    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1785
    .local v2, "loadingMediaPeriodChanged":Z
    if-eqz v2, :cond_1

    .line 1786
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    goto :goto_1

    .line 1785
    :cond_1
    nop

    .line 1788
    :goto_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1789
    if-nez v0, :cond_2

    .line 1790
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    goto :goto_2

    .line 1791
    :cond_2
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v4

    :goto_2
    iput-wide v4, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    .line 1792
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1793
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_4

    .line 1796
    nop

    .line 1797
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v3

    .line 1798
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v4

    .line 1796
    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)V

    goto :goto_3

    .line 1793
    :cond_4
    nop

    .line 1800
    :goto_3
    return-void
.end method

.method private handlePeriodPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 4
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1637
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLoading(Landroidx/media2/exoplayer/external/source/MediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1639
    return-void

    .line 1641
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1642
    .local v0, "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    .line 1643
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1642
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->handlePrepared(FLandroidx/media2/exoplayer/external/Timeline;)V

    .line 1644
    nop

    .line 1645
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 1644
    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)V

    .line 1646
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1648
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 1649
    .local v1, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1650
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    goto :goto_0

    .line 1646
    .end local v1    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :cond_1
    nop

    .line 1652
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1653
    return-void
.end method

.method private handlePlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 5
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1667
    iget v0, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 1668
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1669
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    if-eqz v3, :cond_0

    .line 1670
    iget v4, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/Renderer;->setOperatingRate(F)V

    goto :goto_1

    .line 1669
    :cond_0
    nop

    .line 1668
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1673
    :cond_1
    return-void
.end method

.method private handleSourceInfoRefreshEndedPlayback()V
    .locals 2

    .line 1379
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 1381
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1386
    return-void
.end method

.method private handleSourceInfoRefreshed(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V
    .locals 24
    .param p1, "sourceRefreshInfo"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->source:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eq v2, v3, :cond_0

    .line 1273
    return-void

    .line 1275
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1276
    const/4 v2, 0x0

    iput v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 1278
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1279
    .local v3, "oldTimeline":Landroidx/media2/exoplayer/external/Timeline;
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1280
    .local v4, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    iget-object v5, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->manifest:Ljava/lang/Object;

    .line 1281
    .local v5, "manifest":Ljava/lang/Object;
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v6, v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->setTimeline(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 1282
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v6, v4, v5}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTimeline(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v6

    iput-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1283
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolvePendingMessagePositions()V

    .line 1285
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1287
    .local v6, "newPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v7, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v7, v7, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    goto :goto_0

    :cond_1
    iget-object v7, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v7, v7, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 1288
    .local v7, "oldContentPositionUs":J
    :goto_0
    move-wide v9, v7

    .line 1289
    .local v9, "newContentPositionUs":J
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    if-eqz v11, :cond_3

    .line 1291
    const/4 v12, 0x1

    .line 1292
    invoke-direct {v0, v11, v12}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v11

    .line 1293
    .local v11, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    const/4 v12, 0x0

    iput-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    .line 1294
    if-nez v11, :cond_2

    .line 1297
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    .line 1298
    return-void

    .line 1300
    :cond_2
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1301
    iget-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v13, v9, v10}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v6

    .line 1302
    .end local v11    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    goto :goto_2

    :cond_3
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v7, v11

    if-nez v13, :cond_4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1304
    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 1306
    invoke-virtual {v4, v13}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result v13

    .line 1305
    invoke-direct {v0, v4, v13, v11, v12}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;

    move-result-object v11

    .line 1307
    .local v11, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1308
    iget-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v13, v9, v10}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v6

    .line 1309
    .end local v11    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    goto :goto_2

    .line 1302
    :cond_4
    nop

    .line 1309
    iget-object v13, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v13}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 1312
    iget-object v13, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v0, v13, v3, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSubsequentPeriod(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Ljava/lang/Object;

    move-result-object v13

    .line 1313
    .local v13, "newPeriodUid":Ljava/lang/Object;
    if-nez v13, :cond_5

    .line 1315
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    .line 1316
    return-void

    .line 1319
    :cond_5
    iget-object v14, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 1321
    invoke-virtual {v4, v13, v14}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v14

    iget v14, v14, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 1320
    invoke-direct {v0, v4, v14, v11, v12}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;

    move-result-object v11

    .line 1322
    .restart local v11    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1323
    iget-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v14, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v14, v9, v10}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v6

    .end local v11    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v13    # "newPeriodUid":Ljava/lang/Object;
    goto :goto_1

    .line 1324
    :cond_6
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1326
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v12, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v11, v12, v9, v10}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v6

    goto :goto_2

    .line 1324
    :cond_7
    :goto_1
    nop

    .line 1329
    :goto_2
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v11, v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    cmp-long v11, v7, v9

    if-nez v11, :cond_9

    .line 1331
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateQueuedPeriods(JJ)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1332
    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_6

    .line 1331
    :cond_8
    goto :goto_6

    .line 1329
    :cond_9
    nop

    .line 1336
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v11

    .line 1337
    .local v11, "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-eqz v11, :cond_c

    .line 1339
    :goto_3
    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 1340
    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v11

    .line 1341
    iget-object v12, v11, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v12, v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1342
    iget-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v13, v11, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    invoke-virtual {v12, v13}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v12

    iput-object v12, v11, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    goto :goto_3

    .line 1341
    :cond_a
    goto :goto_3

    .line 1339
    :cond_b
    move-object/from16 v19, v11

    goto :goto_4

    .line 1337
    :cond_c
    move-object/from16 v19, v11

    .line 1347
    .end local v11    # "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .local v19, "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_4
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v11

    if-eqz v11, :cond_d

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_d
    move-wide v11, v9

    :goto_5
    move-wide v13, v11

    .line 1348
    .local v13, "newPositionUs":J
    invoke-direct {v0, v6, v13, v14}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v20

    .line 1349
    .local v20, "seekedToPositionUs":J
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1351
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v17

    .line 1350
    move-object v12, v6

    move-wide/from16 v22, v13

    .end local v13    # "newPositionUs":J
    .local v22, "newPositionUs":J
    move-wide/from16 v13, v20

    move-wide v15, v9

    invoke-virtual/range {v11 .. v18}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v11

    iput-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1353
    .end local v19    # "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v20    # "seekedToPositionUs":J
    .end local v22    # "newPositionUs":J
    :goto_6
    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1354
    return-void
.end method

.method private isTimelineReady()Z
    .locals 7

    .line 1232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1233
    .local v0, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 1234
    .local v1, "nextPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    .line 1235
    .local v2, "playingPeriodDurationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    if-eqz v1, :cond_1

    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_2

    iget-object v4, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1238
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 1235
    :cond_1
    nop

    .line 1238
    :goto_0
    const/4 v4, 0x0

    goto :goto_2

    .line 1235
    :cond_2
    nop

    .line 1238
    :goto_1
    const/4 v4, 0x1

    .line 1235
    :goto_2
    return v4
.end method

.method private maybeContinueLoading()V
    .locals 8

    .line 1676
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1677
    .local v0, "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v1

    .line 1678
    .local v1, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1679
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1680
    return-void

    .line 1682
    :cond_0
    nop

    .line 1683
    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v3

    .line 1684
    .local v3, "bufferedDurationUs":J
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    .line 1686
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v6

    iget v6, v6, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 1685
    invoke-interface {v5, v3, v4, v6}, Landroidx/media2/exoplayer/external/LoadControl;->shouldContinueLoading(JF)Z

    move-result v5

    .line 1687
    .local v5, "continueLoading":Z
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1688
    if-eqz v5, :cond_1

    .line 1689
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v6, v7}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->continueLoading(J)V

    goto :goto_0

    .line 1688
    :cond_1
    nop

    .line 1691
    :goto_0
    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .locals 5

    .line 430
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingUpdate(Landroidx/media2/exoplayer/external/PlaybackInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 434
    invoke-static {v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v2

    .line 435
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$200(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$300(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v3

    goto :goto_0

    .line 437
    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 432
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 440
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->reset(Landroidx/media2/exoplayer/external/PlaybackInfo;)V

    goto :goto_1

    .line 430
    :cond_1
    nop

    .line 442
    :goto_1
    return-void
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1256
    .local v0, "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 1257
    .local v1, "readingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-eqz v0, :cond_4

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_1

    .line 1259
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 1257
    :cond_1
    nop

    .line 1260
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1261
    .local v5, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1262
    return-void

    .line 1261
    :cond_2
    nop

    .line 1260
    .end local v5    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1265
    :cond_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_2

    .line 1257
    :cond_4
    nop

    .line 1267
    :goto_2
    return-void
.end method

.method private maybeThrowSourceInfoRefreshError()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1243
    .local v0, "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-eqz v0, :cond_2

    .line 1245
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1246
    .local v4, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1247
    return-void

    .line 1246
    :cond_0
    nop

    .line 1245
    .end local v4    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 1243
    :cond_2
    nop

    .line 1251
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1252
    return-void
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .locals 7
    .param p1, "oldPeriodPositionUs"    # J
    .param p3, "newPeriodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 1026
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 1027
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    goto :goto_0

    .line 1026
    :cond_1
    nop

    .line 1030
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1031
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1033
    .local v0, "currentPeriodIndex":I
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 1034
    .local v1, "previousInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_1
    if-eqz v1, :cond_5

    iget v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v3, v0, :cond_3

    iget v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v3, v0, :cond_5

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_5

    .line 1038
    :cond_3
    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1040
    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    if-lez v3, :cond_4

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    move-object v1, v3

    goto :goto_1

    .line 1034
    :cond_5
    nop

    .line 1043
    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1044
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_3

    .line 1045
    :cond_6
    move-object v3, v2

    :goto_3
    nop

    .line 1046
    .local v3, "nextInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    :goto_4
    if-eqz v3, :cond_9

    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_9

    iget v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v4, v0, :cond_7

    iget v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_9

    iget-wide v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_9

    .line 1051
    :cond_7
    iget v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1053
    iget v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1054
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_5

    .line 1055
    :cond_8
    move-object v4, v2

    :goto_5
    move-object v3, v4

    goto :goto_4

    .line 1046
    :cond_9
    nop

    .line 1058
    :goto_6
    if-eqz v3, :cond_f

    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_f

    iget v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_f

    iget-wide v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_f

    iget-wide v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p3

    if-gtz v6, :cond_f

    .line 1064
    :try_start_0
    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    .line 1069
    :cond_a
    iget v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1071
    goto :goto_8

    .line 1066
    :cond_b
    :goto_7
    nop

    .line 1067
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1073
    :goto_8
    iget v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 1074
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_9

    .line 1075
    :cond_c
    move-object v4, v2

    :goto_9
    move-object v3, v4

    goto :goto_6

    .line 1066
    :catchall_0
    move-exception v2

    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_a

    .line 1069
    :cond_d
    iget v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    goto :goto_b

    .line 1066
    :cond_e
    :goto_a
    nop

    .line 1067
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1069
    :goto_b
    throw v2

    .line 1058
    :cond_f
    nop

    .line 1077
    return-void

    .line 1021
    .end local v0    # "currentPeriodIndex":I
    .end local v1    # "previousInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    .end local v3    # "nextInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    :cond_10
    :goto_c
    nop

    .line 1022
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1617
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1618
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getNextMediaPeriodInfo(JLandroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    .line 1619
    .local v0, "info":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    if-nez v0, :cond_0

    .line 1620
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    .line 1622
    :cond_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    .line 1626
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/LoadControl;->getAllocator()Landroidx/media2/exoplayer/external/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 1623
    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->enqueueNextMediaPeriod([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v1

    .line 1629
    .local v1, "mediaPeriod":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v1, p0, v2, v3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    .line 1630
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1631
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    goto :goto_0

    .line 1617
    .end local v0    # "info":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .end local v1    # "mediaPeriod":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    :cond_1
    nop

    .line 1634
    :goto_0
    return-void
.end method

.method private notifyTrackSelectionDiscontinuity()V
    .locals 6

    .line 1195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1196
    .local v0, "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_0
    if-eqz v0, :cond_3

    .line 1197
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 1198
    .local v1, "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    if-eqz v1, :cond_2

    .line 1199
    iget-object v2, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->getAll()[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v2

    .line 1200
    .local v2, "trackSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1201
    .local v5, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-eqz v5, :cond_0

    .line 1202
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->onDiscontinuity()V

    goto :goto_2

    .line 1201
    :cond_0
    nop

    .line 1200
    .end local v5    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    .line 1198
    .end local v2    # "trackSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :cond_2
    nop

    .line 1206
    :goto_3
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1207
    .end local v1    # "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    goto :goto_0

    .line 1208
    :cond_3
    return-void
.end method

.method private prepareInternal(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .line 445
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 448
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/LoadControl;->onPrepared()V

    .line 449
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 450
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 451
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->getTransferListener()Landroidx/media2/exoplayer/external/upstream/TransferListener;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 452
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 453
    return-void
.end method

.method private releaseInternal()V
    .locals 2

    .line 826
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 831
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/LoadControl;->onReleased()V

    .line 832
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 833
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 834
    monitor-enter p0

    .line 835
    :try_start_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z

    .line 836
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 837
    monitor-exit p0

    .line 838
    return-void

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rendererWaitingForNextStream(Landroidx/media2/exoplayer/external/Renderer;)Z
    .locals 3
    .param p1, "renderer"    # Landroidx/media2/exoplayer/external/Renderer;

    .line 1774
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1775
    .local v0, "readingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 1776
    .local v1, "nextPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private reselectTracksInternal()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 1098
    .local v1, "playbackSpeed":F
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    .line 1099
    .local v2, "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    .line 1100
    .local v3, "readingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    const/4 v4, 0x1

    .line 1103
    .local v4, "selectionsChangedForReadPeriod":Z
    :goto_0
    if-eqz v2, :cond_e

    iget-boolean v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v5, :cond_1

    goto/16 :goto_9

    .line 1107
    :cond_1
    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v2, v1, v5}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->selectTracks(FLandroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v5

    .line 1108
    .local v5, "newTrackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    if-eqz v5, :cond_c

    .line 1110
    nop

    .line 1119
    const/4 v13, 0x4

    if-eqz v4, :cond_9

    .line 1121
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v15

    .line 1122
    .local v15, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v6, v15}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result v16

    .line 1124
    .local v16, "recreateStreams":Z
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v6, v6

    new-array v11, v6, [Z

    .line 1125
    .local v11, "streamResetFlags":[Z
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v8, v6, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 1126
    move-object v6, v15

    move-object v7, v5

    move/from16 v10, v16

    move-object/from16 v17, v11

    .end local v11    # "streamResetFlags":[Z
    .local v17, "streamResetFlags":[Z
    invoke-virtual/range {v6 .. v11}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v6

    .line 1128
    .local v6, "periodPositionUs":J
    iget-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v8, v8, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v8, v13, :cond_2

    iget-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v8, v8, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 1130
    iget-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v9, v8, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v10, v10, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    .line 1135
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v24

    .line 1131
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    invoke-virtual/range {v18 .. v25}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v8

    iput-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1136
    iget-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v8, v13}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1137
    invoke-direct {v0, v6, v7}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_1

    .line 1128
    :cond_2
    nop

    .line 1140
    :goto_1
    const/4 v8, 0x0

    .line 1141
    .local v8, "enabledRendererCount":I
    iget-object v9, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v9, v9

    new-array v9, v9, [Z

    .line 1142
    .local v9, "rendererWasEnabledFlags":[Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v13, v11

    if-ge v10, v13, :cond_8

    .line 1143
    aget-object v11, v11, v10

    .line 1144
    .local v11, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v11}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    aput-boolean v13, v9, v10

    .line 1145
    iget-object v13, v15, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v13, v13, v10

    .line 1146
    .local v13, "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    if-eqz v13, :cond_4

    .line 1147
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1146
    :cond_4
    nop

    .line 1149
    :goto_4
    aget-boolean v19, v9, v10

    if-eqz v19, :cond_7

    .line 1150
    invoke-interface {v11}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v14

    if-eq v13, v14, :cond_5

    .line 1152
    invoke-direct {v0, v11}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V

    goto :goto_5

    .line 1153
    :cond_5
    aget-boolean v14, v17, v10

    if-eqz v14, :cond_6

    .line 1155
    move-object/from16 v20, v13

    .end local v13    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    .local v20, "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    iget-wide v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v11, v12, v13}, Landroidx/media2/exoplayer/external/Renderer;->resetPosition(J)V

    goto :goto_5

    .line 1153
    .end local v20    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    .restart local v13    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :cond_6
    move-object/from16 v20, v13

    .end local v13    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    .restart local v20    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    goto :goto_5

    .line 1149
    .end local v20    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    .restart local v13    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :cond_7
    move-object/from16 v20, v13

    .line 1142
    .end local v11    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .end local v13    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x4

    goto :goto_2

    .line 1159
    .end local v10    # "i":I
    :cond_8
    iget-object v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1161
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v11

    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v12

    .line 1160
    invoke-virtual {v10, v11, v12}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTrackInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v10

    iput-object v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1162
    invoke-direct {v0, v9, v8}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 1163
    .end local v6    # "periodPositionUs":J
    .end local v8    # "enabledRendererCount":I
    .end local v9    # "rendererWasEnabledFlags":[Z
    .end local v15    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v16    # "recreateStreams":Z
    .end local v17    # "streamResetFlags":[Z
    goto :goto_6

    .line 1165
    :cond_9
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    .line 1166
    iget-boolean v6, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v6, :cond_a

    .line 1167
    iget-object v6, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v6, v6, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1169
    invoke-virtual {v2, v8, v9}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v8

    .line 1168
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1170
    .local v6, "loadingPeriodPositionUs":J
    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ)J

    goto :goto_6

    .line 1166
    .end local v6    # "loadingPeriodPositionUs":J
    :cond_a
    nop

    .line 1173
    :goto_6
    const/4 v6, 0x1

    invoke-direct {v0, v6}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1174
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v6, v6, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_b

    .line 1175
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1176
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1177
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 1174
    :cond_b
    nop

    .line 1179
    :goto_7
    return-void

    .line 1112
    :cond_c
    if-ne v2, v3, :cond_d

    .line 1114
    const/4 v4, 0x0

    goto :goto_8

    .line 1112
    :cond_d
    nop

    .line 1116
    :goto_8
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    goto/16 :goto_0

    .line 1103
    .end local v5    # "newTrackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    :cond_e
    :goto_9
    nop

    .line 1105
    return-void
.end method

.method private resetInternal(ZZZZ)V
    .locals 23
    .param p1, "resetRenderers"    # Z
    .param p2, "releaseMediaSource"    # Z
    .param p3, "resetPosition"    # Z
    .param p4, "resetState"    # Z

    .line 845
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->removeMessages(I)V

    .line 846
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 847
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->stop()V

    .line 848
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 849
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 851
    .local v6, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :try_start_0
    invoke-direct {v1, v6}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    goto :goto_2

    .line 852
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v7, "ExoPlayerImplInternal"

    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 857
    :cond_0
    if-eqz p1, :cond_2

    .line 858
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 860
    .restart local v6    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :try_start_1
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/Renderer;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 864
    goto :goto_4

    .line 861
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 863
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "ExoPlayerImplInternal"

    const-string v8, "Reset failed."

    invoke-static {v7, v8, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    goto :goto_5

    .line 857
    :cond_2
    nop

    .line 867
    :goto_5
    new-array v0, v2, [Landroidx/media2/exoplayer/external/Renderer;

    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 869
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 870
    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    goto :goto_6

    .line 871
    :cond_3
    if-eqz p4, :cond_5

    .line 874
    const/4 v3, 0x1

    .line 875
    .end local p3    # "resetPosition":Z
    .local v3, "resetPosition":Z
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    if-nez v4, :cond_4

    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 876
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v4, v5, v6}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 877
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    iget-object v6, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 878
    .local v4, "windowPositionUs":J
    new-instance v6, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    sget-object v7, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v8, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v8, v8, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    invoke-direct {v6, v7, v8, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    iput-object v6, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    goto :goto_7

    .line 875
    .end local v4    # "windowPositionUs":J
    :cond_4
    goto :goto_7

    .line 871
    .end local v3    # "resetPosition":Z
    .restart local p3    # "resetPosition":Z
    :cond_5
    nop

    .line 883
    :goto_6
    move/from16 v3, p3

    .end local p3    # "resetPosition":Z
    .restart local v3    # "resetPosition":Z
    :goto_7
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    if-nez v3, :cond_6

    const/4 v5, 0x1

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->clear(Z)V

    .line 884
    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 885
    if-eqz p4, :cond_8

    .line 886
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    sget-object v5, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->setTimeline(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 887
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    .line 888
    .local v5, "pendingMessageInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    iget-object v6, v5, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    .line 889
    .end local v5    # "pendingMessageInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    goto :goto_9

    .line 890
    :cond_7
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 891
    iput v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    goto :goto_a

    .line 885
    :cond_8
    nop

    .line 894
    :goto_a
    if-eqz v3, :cond_9

    .line 895
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v5, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v2, v4, v5}, Landroidx/media2/exoplayer/external/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v2

    move-object v7, v2

    goto :goto_b

    .line 896
    :cond_9
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v7, v2

    :goto_b
    nop

    .line 898
    .local v7, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_a

    move-wide v8, v4

    goto :goto_c

    :cond_a
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v8, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 899
    .local v8, "startPositionUs":J
    :goto_c
    if-eqz v3, :cond_b

    goto :goto_d

    :cond_b
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v4, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    :goto_d
    move-wide v10, v4

    .line 900
    .local v10, "contentPositionUs":J
    new-instance v2, Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 902
    if-eqz p4, :cond_c

    sget-object v4, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    goto :goto_e

    :cond_c
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    :goto_e
    move-object v5, v4

    .line 903
    if-eqz p4, :cond_d

    move-object v6, v0

    goto :goto_f

    :cond_d
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    move-object v6, v4

    :goto_f
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v12, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v13, 0x0

    .line 909
    if-eqz p4, :cond_e

    sget-object v4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_10

    :cond_e
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_10
    move-object v14, v4

    .line 910
    if-eqz p4, :cond_f

    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    goto :goto_11

    :cond_f
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    :goto_11
    move-object v15, v4

    const-wide/16 v19, 0x0

    move-object v4, v2

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move-wide/from16 v21, v8

    invoke-direct/range {v4 .. v22}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    iput-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 915
    if-eqz p2, :cond_11

    .line 916
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v2, :cond_10

    .line 917
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    .line 918
    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    goto :goto_12

    .line 916
    :cond_10
    goto :goto_12

    .line 915
    :cond_11
    nop

    .line 921
    :goto_12
    return-void
.end method

.method private resetRendererPosition(J)V
    .locals 6
    .param p1, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 772
    nop

    .line 773
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    move-wide v0, p1

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 776
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->resetPosition(J)V

    .line 777
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 778
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v3, v4, v5}, Landroidx/media2/exoplayer/external/Renderer;->resetPosition(J)V

    .line 777
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 780
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    .line 781
    return-void
.end method

.method private resolvePendingMessagePosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)Z
    .locals 6
    .param p1, "pendingMessageInfo"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    .line 992
    iget-object v0, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 994
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 997
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/PlayerMessage;->getTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    iget-object v3, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 998
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/PlayerMessage;->getWindowIndex()I

    move-result v3

    iget-object v4, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 999
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->getPositionMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    .line 995
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v0

    .line 1001
    .local v0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 1002
    return v1

    .line 1004
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1005
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1006
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1004
    invoke-virtual {p1, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 1008
    .end local v0    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    goto :goto_0

    .line 1010
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1011
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1012
    return v1

    .line 1014
    :cond_2
    iput v0, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 1016
    .end local v0    # "index":I
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private resolvePendingMessagePositions()V
    .locals 3

    .line 980
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 981
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 983
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    .line 984
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 981
    :cond_0
    nop

    .line 980
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 988
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 989
    return-void
.end method

.method private resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;
    .locals 10
    .param p1, "seekPosition"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;
    .param p2, "trySubsequentPeriods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1429
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    iget-object v1, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1430
    .local v1, "seekTimeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1432
    return-object v3

    .line 1434
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1437
    move-object v1, v0

    goto :goto_0

    .line 1434
    :cond_1
    nop

    .line 1442
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v7, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v8, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    .local v2, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    nop

    .line 1448
    if-ne v0, v1, :cond_2

    .line 1450
    return-object v2

    .line 1453
    :cond_2
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 1454
    .local v4, "periodIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 1456
    return-object v2

    .line 1458
    :cond_3
    if-eqz p2, :cond_5

    .line 1460
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, v5, v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSubsequentPeriod(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Ljava/lang/Object;

    move-result-object v5

    .line 1461
    .local v5, "periodUid":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 1463
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 1464
    invoke-virtual {v0, v4, v3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1463
    invoke-direct {p0, v0, v3, v6, v7}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 1461
    :cond_4
    goto :goto_1

    .line 1458
    .end local v5    # "periodUid":Ljava/lang/Object;
    :cond_5
    nop

    .line 1468
    :goto_1
    return-object v3

    .line 1444
    .end local v2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v4    # "periodIndex":I
    :catch_0
    move-exception v2

    .line 1446
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v3
.end method

.method private resolveSubsequentPeriod(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Ljava/lang/Object;
    .locals 11
    .param p1, "oldPeriodUid"    # Ljava/lang/Object;
    .param p2, "oldTimeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p3, "newTimeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1400
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1401
    .local v0, "oldPeriodIndex":I
    const/4 v1, -0x1

    .line 1402
    .local v1, "newPeriodIndex":I
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v2

    .line 1403
    .local v2, "maxIterations":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v10, -0x1

    if-ge v3, v2, :cond_1

    if-ne v1, v10, :cond_1

    .line 1404
    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v9, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object v4, p2

    move v5, v0

    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/Timeline;->getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I

    move-result v0

    .line 1406
    if-ne v0, v10, :cond_0

    .line 1408
    goto :goto_1

    .line 1410
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 1403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1412
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-ne v1, v10, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p3, v1}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method private scheduleNextWork(JJ)V
    .locals 4
    .param p1, "thisOperationStartTimeMs"    # J
    .param p3, "intervalMs"    # J

    .line 638
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->removeMessages(I)V

    .line 639
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    add-long v2, p1, p3

    invoke-interface {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    .line 640
    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .locals 11
    .param p1, "sendDiscontinuity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 493
    .local v0, "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 494
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v9

    .line 495
    .local v9, "newPositionUs":J
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v3, v9, v1

    if-eqz v3, :cond_1

    .line 496
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    .line 501
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v7

    .line 497
    move-object v2, v0

    move-wide v3, v9

    invoke-virtual/range {v1 .. v8}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 502
    if-eqz p1, :cond_0

    .line 503
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_0

    .line 502
    :cond_0
    goto :goto_0

    .line 495
    :cond_1
    nop

    .line 506
    :goto_0
    return-void
.end method

.method private seekToInternal(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;)V
    .locals 25
    .param p1, "seekPosition"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 643
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 649
    nop

    .line 650
    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v4

    .line 651
    .local v4, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 654
    iget-object v7, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v9, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v7, v8, v9}, Landroidx/media2/exoplayer/external/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v7

    .line 655
    .local v7, "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 656
    .local v8, "periodPositionUs":J
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 657
    .local v10, "contentPositionUs":J
    const/4 v12, 0x1

    move-wide/from16 v23, v8

    move-object v8, v7

    move v7, v12

    move-wide/from16 v12, v23

    goto :goto_1

    .line 660
    .end local v7    # "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .end local v8    # "periodPositionUs":J
    .end local v10    # "contentPositionUs":J
    :cond_0
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 661
    .local v7, "periodUid":Ljava/lang/Object;
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 662
    .restart local v10    # "contentPositionUs":J
    iget-object v8, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v8, v7, v10, v11}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v8

    .line 663
    .local v8, "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 664
    const-wide/16 v12, 0x0

    .line 665
    .local v12, "periodPositionUs":J
    const/4 v9, 0x1

    move v7, v9

    goto :goto_1

    .line 667
    .end local v12    # "periodPositionUs":J
    :cond_1
    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 668
    .restart local v12    # "periodPositionUs":J
    iget-wide v14, v2, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v9, v14, v5

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    move v7, v9

    .line 673
    .local v7, "seekPositionAdjusted":Z
    :goto_1
    const/4 v9, 0x2

    :try_start_0
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v14, :cond_a

    iget v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-lez v14, :cond_3

    move-object/from16 v22, v4

    goto/16 :goto_6

    .line 676
    :cond_3
    cmp-long v14, v12, v5

    if-nez v14, :cond_4

    .line 678
    const/4 v5, 0x4

    :try_start_1
    invoke-direct {v1, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 679
    invoke-direct {v1, v0, v0, v3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v22, v4

    goto/16 :goto_7

    .line 705
    :catchall_0
    move-exception v0

    move-object/from16 v22, v4

    goto/16 :goto_9

    .line 686
    :cond_4
    move-wide v5, v12

    .line 687
    .local v5, "newPeriodPositionUs":J
    :try_start_2
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8, v14}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 688
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v15, v14

    .line 689
    .local v15, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-eqz v15, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v14, v5, v16

    if-eqz v14, :cond_5

    .line 690
    :try_start_3
    iget-object v14, v15, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 691
    invoke-interface {v14, v5, v6, v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J

    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v5, v17

    goto :goto_2

    .line 689
    :cond_5
    nop

    .line 694
    :goto_2
    :try_start_4
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v17

    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v22, v4

    .end local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .local v22, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :try_start_5
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v3

    cmp-long v0, v17, v3

    if-nez v0, :cond_7

    .line 696
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide/from16 v16, v3

    .line 705
    .end local v12    # "periodPositionUs":J
    .local v16, "periodPositionUs":J
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 707
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    .line 706
    move-object v0, v15

    .end local v15    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .local v0, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    move-object v15, v8

    move-wide/from16 v18, v10

    invoke-virtual/range {v14 .. v21}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v3

    iput-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 708
    if-eqz v7, :cond_6

    .line 709
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_3

    .line 708
    :cond_6
    nop

    .line 697
    :goto_3
    return-void

    .line 694
    .end local v0    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v16    # "periodPositionUs":J
    .restart local v12    # "periodPositionUs":J
    .restart local v15    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :cond_7
    move-object v0, v15

    .end local v15    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v0    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    goto :goto_4

    .line 687
    .end local v0    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v22    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :cond_8
    move-object/from16 v22, v4

    .line 700
    .end local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v22    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :goto_4
    :try_start_6
    invoke-direct {v1, v8, v5, v6}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v3

    .line 701
    .end local v5    # "newPeriodPositionUs":J
    .local v3, "newPeriodPositionUs":J
    cmp-long v0, v12, v3

    if-eqz v0, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    or-int/2addr v7, v14

    .line 702
    move-wide v12, v3

    goto :goto_7

    .line 673
    .end local v3    # "newPeriodPositionUs":J
    .end local v22    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :cond_a
    move-object/from16 v22, v4

    .line 675
    .end local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v22    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :goto_6
    iput-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 705
    :goto_7
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 707
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    .line 706
    move-object v15, v8

    move-wide/from16 v16, v12

    move-wide/from16 v18, v10

    invoke-virtual/range {v14 .. v21}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 708
    if-eqz v7, :cond_b

    .line 709
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_8

    .line 708
    :cond_b
    nop

    .line 712
    :goto_8
    return-void

    .line 705
    :catchall_1
    move-exception v0

    goto :goto_9

    .end local v22    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v22, v4

    .end local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .restart local v22    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :goto_9
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 707
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    .line 706
    move-object v15, v8

    move-wide/from16 v16, v12

    move-wide/from16 v18, v10

    invoke-virtual/range {v14 .. v21}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v3

    iput-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 708
    if-eqz v7, :cond_c

    .line 709
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_a

    .line 708
    :cond_c
    nop

    .line 709
    :goto_a
    throw v0
.end method

.method private seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J
    .locals 2
    .param p1, "periodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 717
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    .line 718
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 717
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JZ)J
    .locals 8
    .param p1, "periodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "periodPositionUs"    # J
    .param p4, "forceDisableRenderers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 724
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 726
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 729
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    .line 730
    .local v2, "oldPlayingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    move-object v3, v2

    .line 731
    .local v3, "newPlayingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_0
    if-eqz v3, :cond_1

    .line 732
    iget-object v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_0

    .line 733
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    .line 734
    goto :goto_1

    .line 732
    :cond_0
    nop

    .line 736
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    goto :goto_0

    .line 731
    :cond_1
    nop

    .line 740
    :goto_1
    if-ne v2, v3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_4

    .line 741
    :cond_3
    :goto_2
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 742
    .local v7, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-direct {p0, v7}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V

    .line 741
    .end local v7    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 744
    :cond_4
    new-array v4, v0, [Landroidx/media2/exoplayer/external/Renderer;

    iput-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 745
    const/4 v2, 0x0

    .line 749
    :goto_4
    if-eqz v3, :cond_6

    .line 750
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    .line 751
    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v4, :cond_5

    .line 752
    iget-object v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v4, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 753
    iget-object v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long v5, p2, v5

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    goto :goto_5

    .line 751
    :cond_5
    nop

    .line 756
    :goto_5
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 757
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_6

    .line 759
    :cond_6
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->clear(Z)V

    .line 761
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    sget-object v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 762
    invoke-virtual {v4, v5, v6}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTrackInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 763
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 766
    :goto_6
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 767
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 768
    return-wide p2
.end method

.method private sendMessageInternal(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .locals 5
    .param p1, "message"    # Landroidx/media2/exoplayer/external/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 924
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 926
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    goto :goto_1

    .line 927
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 931
    :cond_1
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    .line 932
    .local v0, "pendingMessageInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    .line 937
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    goto :goto_1

    .line 927
    .end local v0    # "pendingMessageInfo":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
    :cond_3
    :goto_0
    nop

    .line 929
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    :goto_1
    return-void
.end method

.method private sendMessageToTarget(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .locals 3
    .param p1, "message"    # Landroidx/media2/exoplayer/external/PlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 943
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 944
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->deliverMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    .line 945
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 948
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 951
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 953
    :goto_1
    return-void
.end method

.method private sendMessageToTargetThread(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .locals 2
    .param p1, "message"    # Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 956
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 957
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;Landroidx/media2/exoplayer/external/PlayerMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 966
    return-void
.end method

.method private setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5
    .param p1, "foregroundMode"    # Z
    .param p2, "processedFlag"    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 793
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_3

    .line 794
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->foregroundMode:Z

    .line 795
    if-nez p1, :cond_2

    .line 796
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 797
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 798
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->reset()V

    goto :goto_1

    .line 797
    :cond_0
    nop

    .line 796
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    .line 795
    :cond_2
    goto :goto_2

    .line 793
    :cond_3
    nop

    .line 803
    :goto_2
    if-eqz p2, :cond_4

    .line 804
    monitor-enter p0

    .line 805
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 806
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 807
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 803
    :cond_4
    nop

    .line 809
    :goto_3
    return-void
.end method

.method private setIsLoading(Z)V
    .locals 1
    .param p1, "isLoading"    # Z

    .line 424
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 425
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithIsLoading(Z)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    goto :goto_0

    .line 424
    :cond_0
    nop

    .line 427
    :goto_0
    return-void
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 457
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    .line 458
    if-nez p1, :cond_0

    .line 459
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    .line 460
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 463
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->startRenderers()V

    .line 464
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v0, v2, :cond_2

    .line 466
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 465
    :cond_2
    nop

    .line 469
    :goto_0
    return-void
.end method

.method private setPlaybackParametersInternal(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 784
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 785
    return-void
.end method

.method private setRepeatModeInternal(I)V
    .locals 1
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 473
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->repeatMode:I

    .line 474
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateRepeatMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_0

    .line 474
    :cond_0
    nop

    .line 477
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 478
    return-void
.end method

.method private setSeekParametersInternal(Landroidx/media2/exoplayer/external/SeekParameters;)V
    .locals 0
    .param p1, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 788
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 789
    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 482
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 483
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateShuffleModeEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_0

    .line 483
    :cond_0
    nop

    .line 486
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 487
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 418
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_0

    .line 419
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    goto :goto_0

    .line 418
    :cond_0
    nop

    .line 421
    :goto_0
    return-void
.end method

.method private shouldTransitionToReadyState(Z)Z
    .locals 9
    .param p1, "renderersReadyOrEnded"    # Z

    .line 1211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1213
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v0

    return v0

    .line 1215
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1216
    return v0

    .line 1218
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1221
    return v2

    .line 1224
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 1225
    .local v1, "loadingHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1226
    .local v3, "bufferedToEnd":Z
    :goto_0
    if-nez v3, :cond_5

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    .line 1228
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 1227
    invoke-interface {v4, v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/LoadControl;->shouldStartPlayback(JFZ)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    .line 1226
    :cond_5
    nop

    .line 1227
    :goto_1
    const/4 v0, 0x1

    .line 1226
    :goto_2
    return v0
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 510
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->start()V

    .line 511
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 512
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->start()V

    .line 511
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    return-void
.end method

.method private stopInternal(ZZZ)V
    .locals 4
    .param p1, "forceResetRenderers"    # Z
    .param p2, "resetPositionAndState"    # Z
    .param p3, "acknowledgeStop"    # Z

    .line 813
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2, v1, p2, p2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 818
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 819
    nop

    add-int/2addr v3, p3

    .line 818
    nop

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 820
    nop

    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 821
    nop

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/LoadControl;->onStopped()V

    .line 822
    nop

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 823
    nop

    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->stop()V

    .line 518
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 519
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->ensureStopped(Landroidx/media2/exoplayer/external/Renderer;)V

    .line 518
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    return-void
.end method

.method private updateLoadControlTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)V
    .locals 3
    .param p1, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "trackSelectorResult"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 1815
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-interface {v0, v1, p1, v2}, Landroidx/media2/exoplayer/external/LoadControl;->onTracksSelected([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V

    .line 1816
    return-void
.end method

.method private updatePeriods()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-nez v1, :cond_0

    .line 1483
    return-void

    .line 1485
    :cond_0
    iget v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v2, :cond_1

    .line 1487
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1488
    return-void

    .line 1492
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1493
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 1494
    .local v1, "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1496
    :cond_2
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    if-nez v3, :cond_3

    .line 1497
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_1

    .line 1496
    :cond_3
    goto :goto_1

    .line 1494
    :cond_4
    :goto_0
    nop

    .line 1495
    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1500
    :goto_1
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1502
    return-void

    .line 1506
    :cond_5
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    .line 1507
    .local v3, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v4

    .line 1508
    .local v4, "readingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    const/4 v5, 0x0

    .line 1509
    .local v5, "advancedPlayingPeriod":Z
    :goto_2
    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v6, :cond_9

    if-eq v3, v4, :cond_9

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1511
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_8

    .line 1514
    if-eqz v5, :cond_6

    .line 1516
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto :goto_3

    .line 1514
    :cond_6
    nop

    .line 1519
    :goto_3
    iget-object v6, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v6, v6, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v6, :cond_7

    .line 1520
    const/4 v6, 0x0

    goto :goto_4

    .line 1521
    :cond_7
    const/4 v6, 0x3

    :goto_4
    nop

    .line 1522
    .local v6, "discontinuityReason":I
    move-object v7, v3

    .line 1523
    .local v7, "oldPlayingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    .line 1524
    invoke-direct {v0, v7}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    .line 1525
    iget-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v9, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v10, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v10, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-object v12, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v12, v12, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    .line 1530
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v14

    .line 1526
    invoke-virtual/range {v8 .. v15}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v8

    iput-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1531
    iget-object v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v8, v6}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1532
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1533
    const/4 v5, 0x1

    .line 1534
    .end local v6    # "discontinuityReason":I
    .end local v7    # "oldPlayingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    goto :goto_2

    .line 1511
    :cond_8
    goto :goto_5

    .line 1509
    :cond_9
    nop

    .line 1536
    :goto_5
    iget-object v6, v4, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v6, v6, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-eqz v6, :cond_d

    .line 1537
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v7, v6

    if-ge v2, v7, :cond_c

    .line 1538
    aget-object v6, v6, v2

    .line 1539
    .local v6, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    iget-object v7, v4, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v7, v7, v2

    .line 1542
    .local v7, "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    if-eqz v7, :cond_b

    invoke-interface {v6}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v8

    if-ne v8, v7, :cond_b

    .line 1543
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1544
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/Renderer;->setCurrentStreamFinal()V

    goto :goto_7

    .line 1543
    :cond_a
    goto :goto_7

    .line 1542
    :cond_b
    nop

    .line 1537
    .end local v6    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .end local v7    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1547
    .end local v2    # "i":I
    :cond_c
    return-void

    .line 1551
    :cond_d
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v6

    if-nez v6, :cond_e

    .line 1553
    return-void

    .line 1556
    :cond_e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    iget-object v7, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v8, v7

    if-ge v6, v8, :cond_12

    .line 1557
    aget-object v7, v7, v6

    .line 1558
    .local v7, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    iget-object v8, v4, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v8, v8, v6

    .line 1559
    .local v8, "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v9

    if-ne v9, v8, :cond_11

    if-eqz v8, :cond_10

    .line 1560
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_a

    :cond_f
    goto :goto_9

    .line 1559
    :cond_10
    nop

    .line 1556
    .end local v7    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .end local v8    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1559
    .restart local v7    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .restart local v8    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :cond_11
    nop

    .line 1562
    :goto_a
    return-void

    .line 1556
    .end local v7    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .end local v8    # "sampleStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :cond_12
    nop

    .line 1566
    .end local v6    # "i":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v6

    iget-boolean v6, v6, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_13

    .line 1568
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 1569
    return-void

    .line 1572
    :cond_13
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v6

    .line 1573
    .local v6, "oldTrackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    iget-object v7, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advanceReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v4

    .line 1574
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v7

    .line 1576
    .local v7, "newTrackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    iget-object v8, v4, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 1577
    invoke-interface {v8}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v8, v10

    if-eqz v13, :cond_14

    const/4 v8, 0x1

    goto :goto_b

    :cond_14
    const/4 v8, 0x0

    .line 1578
    .local v8, "initialDiscontinuity":Z
    :goto_b
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c
    iget-object v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v11, v10

    if-ge v9, v11, :cond_1a

    .line 1579
    aget-object v10, v10, v9

    .line 1580
    .local v10, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-virtual {v6, v9}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v11

    .line 1581
    .local v11, "rendererWasEnabled":Z
    if-nez v11, :cond_15

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    goto :goto_e

    .line 1583
    :cond_15
    if-eqz v8, :cond_16

    .line 1586
    invoke-interface {v10}, Landroidx/media2/exoplayer/external/Renderer;->setCurrentStreamFinal()V

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    goto :goto_e

    .line 1587
    :cond_16
    invoke-interface {v10}, Landroidx/media2/exoplayer/external/Renderer;->isCurrentStreamFinal()Z

    move-result v13

    if-nez v13, :cond_19

    .line 1588
    iget-object v13, v7, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v13, v9}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v13

    .line 1589
    .local v13, "newSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    invoke-virtual {v7, v9}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v14

    .line 1590
    .local v14, "newRendererEnabled":Z
    iget-object v15, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    aget-object v15, v15, v9

    invoke-interface {v15}, Landroidx/media2/exoplayer/external/RendererCapabilities;->getTrackType()I

    move-result v15

    const/4 v2, 0x6

    if-ne v15, v2, :cond_17

    const/4 v2, 0x1

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    .line 1591
    .local v2, "isNoSampleRenderer":Z
    :goto_d
    iget-object v15, v6, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v15, v15, v9

    .line 1592
    .local v15, "oldConfig":Landroidx/media2/exoplayer/external/RendererConfiguration;
    iget-object v12, v7, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v12, v12, v9

    .line 1593
    .local v12, "newConfig":Landroidx/media2/exoplayer/external/RendererConfiguration;
    if-eqz v14, :cond_18

    invoke-virtual {v12, v15}, Landroidx/media2/exoplayer/external/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    if-nez v2, :cond_18

    .line 1600
    invoke-static {v13}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getFormats(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 1601
    .local v0, "formats":[Landroidx/media2/exoplayer/external/Format;
    move-object/from16 v16, v1

    .end local v1    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .local v16, "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v1, v4, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v1, v1, v9

    .line 1602
    move/from16 v18, v2

    move-object/from16 v17, v3

    .end local v2    # "isNoSampleRenderer":Z
    .end local v3    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .local v17, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .local v18, "isNoSampleRenderer":Z
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v2

    .line 1601
    invoke-interface {v10, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Renderer;->replaceStream([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;J)V

    .line 1603
    .end local v0    # "formats":[Landroidx/media2/exoplayer/external/Format;
    goto :goto_e

    .line 1593
    .end local v16    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v17    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v18    # "isNoSampleRenderer":Z
    .restart local v1    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v2    # "isNoSampleRenderer":Z
    .restart local v3    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :cond_18
    move-object/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v17, v3

    .line 1609
    .end local v1    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v2    # "isNoSampleRenderer":Z
    .end local v3    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v16    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v17    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v18    # "isNoSampleRenderer":Z
    invoke-interface {v10}, Landroidx/media2/exoplayer/external/Renderer;->setCurrentStreamFinal()V

    goto :goto_e

    .line 1587
    .end local v12    # "newConfig":Landroidx/media2/exoplayer/external/RendererConfiguration;
    .end local v13    # "newSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v14    # "newRendererEnabled":Z
    .end local v15    # "oldConfig":Landroidx/media2/exoplayer/external/RendererConfiguration;
    .end local v16    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v17    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v18    # "isNoSampleRenderer":Z
    .restart local v1    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v3    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :cond_19
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 1578
    .end local v1    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v3    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v10    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .end local v11    # "rendererWasEnabled":Z
    .restart local v16    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v17    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto :goto_c

    .end local v16    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v17    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v1    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v3    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :cond_1a
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 1613
    .end local v1    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v3    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v9    # "i":I
    .restart local v16    # "loadingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .restart local v17    # "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    return-void
.end method

.method private updatePlaybackPositions()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 530
    .local v0, "playingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v10

    .line 531
    .local v10, "periodPositionUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v1

    if-eqz v3, :cond_2

    .line 532
    invoke-direct {p0, v10, v11}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 535
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v3, v10, v1

    if-eqz v3, :cond_1

    .line 536
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    .line 541
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v8

    .line 537
    move-wide v4, v10

    invoke-virtual/range {v2 .. v9}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 542
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_0

    .line 535
    :cond_1
    goto :goto_0

    .line 545
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->syncAndGetPositionUs()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 546
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v10

    .line 547
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v1, v2, v10, v11}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 548
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iput-wide v10, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 552
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 553
    .local v1, "loadingPeriod":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    .line 554
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    .line 555
    return-void
.end method

.method private updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V
    .locals 7
    .param p1, "oldPlayingPeriodHolder"    # Landroidx/media2/exoplayer/external/MediaPeriodHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1696
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1697
    .local v0, "newPlayingPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-eqz v0, :cond_8

    if-ne p1, v0, :cond_0

    goto :goto_5

    .line 1700
    :cond_0
    const/4 v1, 0x0

    .line 1701
    .local v1, "enabledRendererCount":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v2

    new-array v2, v2, [Z

    .line 1702
    .local v2, "rendererWasEnabledFlags":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 1703
    aget-object v4, v4, v3

    .line 1704
    .local v4, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v2, v3

    .line 1705
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1706
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1705
    :cond_2
    nop

    .line 1708
    :goto_2
    aget-boolean v5, v2, v3

    if-eqz v5, :cond_6

    .line 1709
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1710
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1711
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v5

    iget-object v6, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v6, v6, v3

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    .line 1710
    :cond_4
    goto :goto_4

    .line 1709
    :cond_5
    nop

    .line 1715
    :goto_3
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V

    goto :goto_4

    .line 1708
    :cond_6
    nop

    .line 1702
    .end local v4    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1718
    .end local v3    # "i":I
    :cond_7
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1720
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v4

    .line 1721
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v5

    .line 1719
    invoke-virtual {v3, v4, v5}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTrackInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1722
    invoke-direct {p0, v2, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 1723
    return-void

    .line 1697
    .end local v1    # "enabledRendererCount":I
    .end local v2    # "rendererWasEnabledFlags":[Z
    :cond_8
    :goto_5
    nop

    .line 1698
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .locals 5
    .param p1, "playbackSpeed"    # F

    .line 1182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1183
    .local v0, "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_2

    .line 1184
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->getAll()[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    .line 1185
    .local v1, "trackSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1186
    .local v4, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-eqz v4, :cond_0

    .line 1187
    invoke-interface {v4, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->onPlaybackSpeed(F)V

    goto :goto_2

    .line 1186
    :cond_0
    nop

    .line 1185
    .end local v4    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1190
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1191
    .end local v1    # "trackSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    goto :goto_0

    .line 1183
    :cond_2
    nop

    .line 1192
    return-void
.end method


# virtual methods
.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 272
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 316
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 380
    return v2

    .line 367
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    .line 368
    goto/16 :goto_6

    .line 373
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageToTargetThread(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    .line 374
    goto/16 :goto_6

    .line 370
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageInternal(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    .line 371
    goto/16 :goto_6

    .line 345
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 347
    goto/16 :goto_6

    .line 330
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    .line 331
    goto/16 :goto_6

    .line 327
    :pswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    .line 328
    goto/16 :goto_6

    .line 364
    :pswitch_6
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->reselectTracksInternal()V

    .line 365
    goto/16 :goto_6

    .line 361
    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 362
    goto :goto_6

    .line 355
    :pswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handlePeriodPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 356
    goto :goto_6

    .line 358
    :pswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V

    .line 359
    goto :goto_6

    .line 376
    :pswitch_a
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->releaseInternal()V

    .line 378
    return v1

    .line 349
    :pswitch_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v2, v3, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    .line 353
    goto :goto_6

    .line 342
    :pswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setSeekParametersInternal(Landroidx/media2/exoplayer/external/SeekParameters;)V

    .line 343
    goto :goto_6

    .line 339
    :pswitch_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlaybackParametersInternal(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    .line 340
    goto :goto_6

    .line 336
    :pswitch_e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToInternal(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;)V

    .line 337
    goto :goto_6

    .line 333
    :pswitch_f
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->doSomeWork()V

    .line 334
    goto :goto_6

    .line 324
    :pswitch_10
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    .line 325
    goto :goto_6

    .line 318
    :pswitch_11
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/source/MediaSource;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    invoke-direct {p0, v3, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->prepareInternal(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    .line 322
    nop

    .line 382
    :goto_6
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 399
    :catch_0
    move-exception v3

    goto :goto_7

    :catch_1
    move-exception v3

    .line 400
    .local v3, "e":Ljava/lang/Throwable;
    :goto_7
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Internal runtime error."

    invoke-static {v4, v5, v3}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    instance-of v4, v3, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_6

    .line 403
    move-object v4, v3

    check-cast v4, Ljava/lang/OutOfMemoryError;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForOutOfMemoryError(Ljava/lang/OutOfMemoryError;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v4

    goto :goto_8

    .line 404
    :cond_6
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v4

    :goto_8
    nop

    .line 405
    .local v4, "error":Landroidx/media2/exoplayer/external/ExoPlaybackException;
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 406
    invoke-direct {p0, v1, v2, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    .line 410
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto :goto_a

    .line 391
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "error":Landroidx/media2/exoplayer/external/ExoPlaybackException;
    :catch_2
    move-exception v3

    .line 392
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Source error."

    invoke-static {v4, v5, v3}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 394
    invoke-direct {p0, v2, v2, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    .line 398
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 383
    :catch_3
    move-exception v3

    .line 384
    .local v3, "e":Landroidx/media2/exoplayer/external/ExoPlaybackException;
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Playback error."

    invoke-static {v4, v5, v3}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 386
    invoke-direct {p0, v1, v2, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    .line 390
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 411
    .end local v3    # "e":Landroidx/media2/exoplayer/external/ExoPlaybackException;
    :goto_9
    nop

    .line 412
    :goto_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final synthetic lambda$sendMessageToTargetThread$0$ExoPlayerImplInternal(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .locals 3
    .param p1, "message"    # Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 960
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->deliverMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    nop

    .line 965
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Landroidx/media2/exoplayer/external/ExoPlaybackException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 292
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .locals 0

    .line 57
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 306
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    .line 307
    const/16 v1, 0x11

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void
.end method

.method public onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void
.end method

.method public onSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "source"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p3, "manifest"    # Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 300
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    .line 186
    nop

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 187
    nop

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    nop

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 254
    monitor-exit p0

    return-void

    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "wasInterrupted":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 260
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    goto :goto_0

    .line 261
    .end local p0    # "this":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 263
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 265
    :cond_1
    if-eqz v0, :cond_2

    .line 267
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 265
    :cond_2
    nop

    .line 269
    :goto_1
    monitor-exit p0

    return-void

    .line 252
    .end local v0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public seekTo(Landroidx/media2/exoplayer/external/Timeline;IJ)V
    .locals 3
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method public declared-synchronized sendMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .locals 2
    .param p1, "message"    # Landroidx/media2/exoplayer/external/PlayerMessage;

    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 226
    .end local p0    # "this":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 220
    .end local p1    # "message":Landroidx/media2/exoplayer/external/PlayerMessage;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setForegroundMode(Z)V
    .locals 4
    .param p1, "foregroundMode"    # Z

    monitor-enter p0

    .line 230
    const/16 v0, 0xe

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 231
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 233
    .end local p0    # "this":Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 234
    .local v2, "processedFlag":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    .line 235
    invoke-interface {v3, v0, v1, v1, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    nop

    move v0, v1

    .line 238
    .local v0, "wasInterrupted":Z
    :goto_0
    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    if-nez v1, :cond_1

    nop

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-nez v1, :cond_1

    .line 240
    nop

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :goto_1
    nop

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    nop

    .line 242
    .local v1, "e":Ljava/lang/InterruptedException;
    nop

    const/4 v0, 0x1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 238
    :cond_1
    nop

    .line 245
    nop

    if-eqz v0, :cond_2

    .line 247
    nop

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    goto :goto_2

    .line 245
    :cond_2
    nop

    .line 250
    .end local v0    # "wasInterrupted":Z
    .end local v2    # "processedFlag":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_2
    nop

    monitor-exit p0

    return-void

    .line 229
    .end local p1    # "foregroundMode":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z

    .line 191
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 208
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method

.method public setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V
    .locals 2
    .param p1, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-interface {v0, v2, p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void
.end method

.method public stop(Z)V
    .locals 3
    .param p1, "reset"    # Z

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {v0, v2, p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method
