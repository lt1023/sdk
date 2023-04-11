.class final Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field private isSeeking:Z

.field private lastReportedPlayingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaPeriodIdToInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodInfoQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeline:Landroidx/media2/exoplayer/external/Timeline;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    .line 704
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 705
    sget-object v0, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 706
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;

    .line 687
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method private updateLastReportedPlayingMediaPeriod()V
    .locals 2

    .line 854
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->lastReportedPlayingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    goto :goto_0

    .line 854
    :cond_0
    nop

    .line 857
    :goto_0
    return-void
.end method

.method private updateMediaPeriodInfoToNewTimeline(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .locals 4
    .param p1, "info"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .param p2, "newTimeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 861
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 862
    .local v0, "newPeriodIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 864
    return-object p1

    .line 866
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {p2, v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 867
    .local v1, "newWindowIndex":I
    new-instance v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-direct {v2, v3, p2, v1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;I)V

    return-object v2
.end method


# virtual methods
.method public getLastReportedPlayingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 731
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->lastReportedPlayingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    return-object v0
.end method

.method public getLoadingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 750
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x0

    goto :goto_0

    .line 752
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 750
    :goto_0
    return-object v0
.end method

.method public getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .locals 1
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 758
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    return-object v0
.end method

.method public getPlayingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 717
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    goto :goto_1

    .line 717
    :cond_1
    :goto_0
    nop

    .line 718
    const/4 v0, 0x0

    .line 717
    :goto_1
    return-object v0
.end method

.method public getReadingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 740
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    return-object v0
.end method

.method public isSeeking()Z
    .locals 1

    .line 763
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    return v0
.end method

.method public onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 4
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 821
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 822
    .local v0, "isInTimeline":Z
    :goto_0
    new-instance v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 823
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    goto :goto_1

    :cond_1
    sget-object v3, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    :goto_1
    invoke-direct {v2, p2, v3, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;I)V

    .line 824
    .local v2, "mediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 827
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    goto :goto_2

    .line 826
    :cond_2
    nop

    .line 829
    :goto_2
    return-void
.end method

.method public onMediaPeriodReleased(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z
    .locals 3
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 836
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 837
    .local v0, "mediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 839
    return v1

    .line 841
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 842
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 843
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    goto :goto_1

    .line 842
    :cond_2
    nop

    .line 845
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 790
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    .line 791
    return-void
.end method

.method public onReadingStarted(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 850
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 851
    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    .line 816
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    .line 817
    return-void
.end method

.method public onSeekStarted()V
    .locals 1

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    .line 811
    return-void
.end method

.method public onTimelineChanged(Landroidx/media2/exoplayer/external/Timeline;)V
    .locals 4
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 795
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 796
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    .line 797
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    invoke-direct {p0, v1, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodInfoToNewTimeline(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v1

    .line 798
    .local v1, "newMediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .end local v1    # "newMediaPeriodInfo":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    if-eqz v0, :cond_1

    .line 802
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodInfoToNewTimeline(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    goto :goto_1

    .line 801
    :cond_1
    nop

    .line 804
    :goto_1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 805
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    .line 806
    return-void
.end method

.method public tryResolveWindowIndex(I)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .locals 6
    .param p1, "windowIndex"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "match":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 774
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 775
    .local v2, "info":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 776
    .local v3, "periodIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 777
    invoke-virtual {v4, v3, v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    if-ne v4, p1, :cond_1

    .line 778
    if-eqz v0, :cond_0

    .line 780
    const/4 v4, 0x0

    return-object v4

    .line 782
    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 777
    :cond_1
    goto :goto_1

    .line 776
    :cond_2
    nop

    .line 773
    .end local v2    # "info":Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .end local v3    # "periodIndex":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method
