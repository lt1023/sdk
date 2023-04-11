.class final Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;
.super Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Landroidx/media2/exoplayer/external/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;I)V
    .locals 3
    .param p1, "childTimeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "loopCount"    # I

    .line 134
    new-instance v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;)V

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 136
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 137
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 138
    iput p2, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    if-lez v0, :cond_1

    .line 140
    const v2, 0x7fffffff

    div-int/2addr v2, v0

    if-gt p2, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    const-string v0, "LoopingMediaSource contains too many periods"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_1
    nop

    .line 143
    :goto_0
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1
    .param p1, "childUid"    # Ljava/lang/Object;

    .line 167
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, -0x1

    return v0

    .line 170
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 1
    .param p1, "periodIndex"    # I

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int v0, p1, v0

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 1
    .param p1, "windowIndex"    # I

    .line 162
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int v0, p1, v0

    return v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "childIndex"    # I

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 180
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int v0, v0, p1

    return v0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 185
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int v0, v0, p1

    return v0
.end method

.method public getPeriodCount()I
    .locals 2

    .line 152
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method

.method protected getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;
    .locals 1
    .param p1, "childIndex"    # I

    .line 175
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Landroidx/media2/exoplayer/external/Timeline;

    return-object v0
.end method

.method public getWindowCount()I
    .locals 2

    .line 147
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method
