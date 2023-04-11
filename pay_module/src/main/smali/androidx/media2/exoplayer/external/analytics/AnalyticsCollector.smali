.class public Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/Player$EventListener;
.implements Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
.implements Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
.implements Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
.implements Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
.implements Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;
.implements Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;
.implements Landroidx/media2/exoplayer/external/video/VideoListener;
.implements Landroidx/media2/exoplayer/external/audio/AudioListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;,
        Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;,
        Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
    }
.end annotation


# instance fields
.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

.field private player:Landroidx/media2/exoplayer/external/Player;

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method protected constructor <init>(Landroidx/media2/exoplayer/external/Player;Landroidx/media2/exoplayer/external/util/Clock;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    goto :goto_0

    .line 109
    :cond_0
    nop

    .line 112
    :goto_0
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/util/Clock;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 114
    new-instance v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 115
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 116
    return-void
.end method

.method private generateEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .locals 5
    .param p1, "mediaPeriodInfo"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 640
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    if-nez p1, :cond_3

    .line 642
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Player;->getCurrentWindowIndex()I

    move-result v0

    .line 643
    .local v0, "windowIndex":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->tryResolveWindowIndex(I)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object p1

    .line 644
    if-nez p1, :cond_2

    .line 645
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v1

    .line 646
    .local v1, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 647
    .local v2, "windowIsInTimeline":Z
    :goto_0
    nop

    .line 648
    if-eqz v2, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    sget-object v3, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    :goto_1
    const/4 v4, 0x0

    .line 647
    invoke-virtual {p0, v3, v0, v4}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/Timeline;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v3

    return-object v3

    .line 644
    .end local v1    # "timeline":Landroidx/media2/exoplayer/external/Timeline;
    .end local v2    # "windowIsInTimeline":Z
    :cond_2
    goto :goto_2

    .line 641
    .end local v0    # "windowIndex":I
    :cond_3
    nop

    .line 651
    :goto_2
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->windowIndex:I

    iget-object v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/Timeline;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateLastReportedPlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 656
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getLastReportedPlayingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateLoadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 668
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .locals 4
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 673
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    if-eqz p2, :cond_1

    .line 675
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v0

    .line 676
    .local v0, "mediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    goto :goto_0

    .line 678
    :cond_0
    sget-object v1, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {p0, v1, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/Timeline;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 676
    :goto_0
    return-object v1

    .line 680
    .end local v0    # "mediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Player;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    .line 681
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 682
    .local v1, "windowIsInTimeline":Z
    :goto_1
    nop

    .line 683
    if-eqz v1, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    sget-object v2, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    :goto_2
    const/4 v3, 0x0

    .line 682
    invoke-virtual {p0, v2, p1, v3}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/Timeline;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    return-object v2
.end method

.method private generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 664
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateEventTime(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method protected generateEventTime(Landroidx/media2/exoplayer/external/Timeline;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .locals 22
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_0

    .line 606
    :cond_0
    move-object/from16 v15, p3

    .line 610
    .end local p3    # "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .local v15, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    :goto_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v16

    .line 612
    .local v16, "realtimeMs":J
    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    .line 613
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v13, v1, :cond_1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getCurrentWindowIndex()I

    move-result v1

    if-ne v14, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v18, v1

    .line 614
    .local v18, "isInCurrentWindow":Z
    const-wide/16 v4, 0x0

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 615
    if-eqz v18, :cond_4

    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    .line 617
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getCurrentAdGroupIndex()I

    move-result v1

    iget v6, v15, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v6, :cond_3

    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    .line 618
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v6, v15, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v6, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_2

    .line 617
    :cond_3
    goto :goto_2

    .line 615
    :cond_4
    nop

    .line 618
    :goto_2
    const/4 v2, 0x0

    :goto_3
    move v1, v2

    .line 620
    .local v1, "isCurrentAd":Z
    if-eqz v1, :cond_5

    iget-object v2, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Player;->getCurrentPosition()J

    move-result-wide v4

    nop

    :cond_5
    move-wide v1, v4

    .line 621
    .local v1, "eventPositionMs":J
    move-wide/from16 v19, v1

    goto :goto_5

    .line 614
    .end local v1    # "eventPositionMs":J
    :cond_6
    nop

    .line 621
    if-eqz v18, :cond_7

    .line 622
    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getContentPosition()J

    move-result-wide v1

    move-wide/from16 v19, v1

    goto :goto_5

    .line 627
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v13, v14, v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v4

    :goto_4
    move-wide v1, v4

    move-wide/from16 v19, v1

    .line 629
    .local v19, "eventPositionMs":J
    :goto_5
    new-instance v21, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    .line 635
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getCurrentPosition()J

    move-result-wide v9

    iget-object v1, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    .line 636
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Player;->getTotalBufferedDuration()J

    move-result-wide v11

    move-object/from16 v1, v21

    move-wide/from16 v2, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v15

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v12}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;-><init>(JLandroidx/media2/exoplayer/external/Timeline;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    .line 629
    return-object v21
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final notifySeekStarted()V
    .locals 3

    .line 155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 157
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onSeekStarted()V

    .line 158
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 159
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onSeekStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 160
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 158
    :cond_0
    goto :goto_1

    .line 155
    .end local v0    # "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    :cond_1
    nop

    .line 162
    :goto_1
    return-void
.end method

.method public onAudioAttributesChanged(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .locals 3
    .param p1, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 247
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 248
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 249
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onAudioAttributesChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    .line 250
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 201
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    .line 202
    .local v6, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 203
    .local v8, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v2, 0x1

    move-object v0, v8

    move-object v1, v6

    move-object v3, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderInitialized(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    .line 205
    .end local v8    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public final onAudioDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 4
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 229
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateLastReportedPlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 230
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 231
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderDisabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 232
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public final onAudioEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 4
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 192
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 193
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 194
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderEnabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 195
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public final onAudioInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 4
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 210
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 211
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 212
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/Format;)V

    .line 213
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public final onAudioSessionId(I)V
    .locals 3
    .param p1, "audioSessionId"    # I

    .line 239
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 240
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 241
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onAudioSessionId(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V

    .line 242
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public final onAudioSinkUnderrun(IJJ)V
    .locals 10
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 219
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 220
    .local v7, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 221
    .local v9, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    move-object v0, v9

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onAudioUnderrun(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V

    .line 222
    .end local v9    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 10
    .param p1, "elapsedMs"    # I
    .param p2, "bytes"    # J
    .param p4, "bitrate"    # J

    .line 539
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateLoadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 540
    .local v7, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 541
    .local v9, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    move-object v0, v9

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onBandwidthEstimate(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V

    .line 542
    .end local v9    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 433
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 434
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 435
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p3}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDownstreamFormatChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 436
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method public final onDrmKeysLoaded()V
    .locals 3

    .line 557
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 558
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 559
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDrmKeysLoaded(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 560
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method public final onDrmKeysRemoved()V
    .locals 3

    .line 581
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 582
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 583
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDrmKeysRemoved(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 584
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 585
    :cond_0
    return-void
.end method

.method public final onDrmKeysRestored()V
    .locals 3

    .line 573
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 574
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 575
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDrmKeysRestored(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 576
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 577
    :cond_0
    return-void
.end method

.method public final onDrmSessionAcquired()V
    .locals 3

    .line 549
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 550
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 551
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDrmSessionAcquired(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 552
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 553
    :cond_0
    return-void
.end method

.method public final onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .line 565
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 566
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 567
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDrmSessionManagerError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    .line 568
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method public final onDrmSessionReleased()V
    .locals 3

    .line 589
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateLastReportedPlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 590
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 591
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDrmSessionReleased(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 592
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 593
    :cond_0
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 292
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateLastReportedPlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 293
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 294
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDroppedVideoFrames(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJ)V

    .line 295
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 392
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 393
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 394
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p3, p4}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onLoadCanceled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 395
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 396
    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 380
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 381
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 382
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p3, p4}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onLoadCompleted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 383
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public final onLoadError(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 9
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 406
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    .line 407
    .local v6, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 408
    .local v8, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    move-object v0, v8

    move-object v1, v6

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onLoadError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    .line 409
    .end local v8    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 368
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 369
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 370
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p3, p4}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onLoadStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 371
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 3
    .param p1, "isLoading"    # Z

    .line 466
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 467
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 468
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onLoadingChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Z)V

    .line 469
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 470
    :cond_0
    return-void
.end method

.method public final onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 346
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 347
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 348
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onMediaPeriodCreated(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 349
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method public final onMediaPeriodReleased(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 354
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 355
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onMediaPeriodReleased(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 357
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onMediaPeriodReleased(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 358
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 356
    :cond_0
    goto :goto_1

    .line 355
    :cond_1
    nop

    .line 360
    :goto_1
    return-void
.end method

.method public final onMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 3
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 181
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 182
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 183
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onMetadata(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 184
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public final onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 3
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 518
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 519
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 520
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    .line 521
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public final onPlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 3
    .param p1, "error"    # Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 499
    iget v0, p1, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    if-nez v0, :cond_0

    .line 500
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateLoadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    :goto_0
    nop

    .line 502
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 503
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onPlayerError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    .line 504
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_1

    .line 505
    :cond_1
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 474
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 475
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 476
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onPlayerStateChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ZI)V

    .line 477
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 478
    :cond_0
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 509
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(I)V

    .line 510
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 511
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 512
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onPositionDiscontinuity(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V

    .line 513
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 514
    :cond_0
    return-void
.end method

.method public final onReadingStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 414
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onReadingStarted(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 415
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 416
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 417
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onReadingStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 418
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 419
    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 0

    .line 321
    return-void
.end method

.method public final onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 310
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 311
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 312
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onRenderedFirstFrame(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V

    .line 313
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3
    .param p1, "repeatMode"    # I

    .line 482
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 483
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 484
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onRepeatModeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V

    .line 485
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 526
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onSeekProcessed()V

    .line 528
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 529
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 530
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onSeekProcessed(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V

    .line 531
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 529
    :cond_0
    goto :goto_1

    .line 526
    .end local v0    # "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    :cond_1
    nop

    .line 533
    :goto_1
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 490
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 491
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 492
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onShuffleModeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Z)V

    .line 493
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 335
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 336
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 337
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onSurfaceSizeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;II)V

    .line 338
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "reason"    # I

    .line 448
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 449
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 450
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 451
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p3}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onTimelineChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V

    .line 452
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method public final onTracksChanged(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .locals 3
    .param p1, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "trackSelections"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 458
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 459
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 460
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onTracksChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V

    .line 461
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method public final onUpstreamDiscarded(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 424
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 425
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 426
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p3}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onUpstreamDiscarded(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 427
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 275
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    .line 276
    .local v6, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 277
    .local v8, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v2, 0x2

    move-object v0, v8

    move-object v1, v6

    move-object v3, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderInitialized(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    .line 279
    .end local v8    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public final onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 4
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 302
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateLastReportedPlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 303
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 304
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderDisabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 305
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 306
    :cond_0
    return-void
.end method

.method public final onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 4
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 266
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 267
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 268
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderEnabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 269
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method public final onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 4
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 284
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 285
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 286
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/Format;)V

    .line 287
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(IIIF)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .line 326
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    .line 327
    .local v6, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 328
    .local v8, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    move-object v0, v8

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onVideoSizeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IIIF)V

    .line 330
    .end local v8    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 3
    .param p1, "audioVolume"    # F

    .line 255
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 256
    .local v0, "eventTime":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 257
    .local v2, "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    invoke-interface {v2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;->onVolumeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;F)V

    .line 258
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public removeListener(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public final resetForNewMediaSource()V
    .locals 5

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 171
    invoke-static {v1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->access$000(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v0, "mediaPeriodInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 173
    .local v2, "mediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    iget v3, v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->windowIndex:I

    iget-object v4, v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v3, v4}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->onMediaPeriodReleased(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 174
    .end local v2    # "mediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public setPlayer(Landroidx/media2/exoplayer/external/Player;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 144
    invoke-static {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->access$000(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    :cond_1
    nop

    .line 144
    :goto_0
    const/4 v0, 0x1

    .line 143
    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 145
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/Player;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->player:Landroidx/media2/exoplayer/external/Player;

    .line 146
    return-void
.end method
