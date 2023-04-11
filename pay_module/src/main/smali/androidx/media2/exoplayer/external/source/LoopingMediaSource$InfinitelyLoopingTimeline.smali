.class final Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;
.super Landroidx/media2/exoplayer/external/source/ForwardingTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfinitelyLoopingTimeline"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 198
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ForwardingTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 199
    return-void
.end method


# virtual methods
.method public getNextWindowIndex(IIZ)I
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    .line 206
    .local v0, "childNextWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    goto :goto_0

    .line 207
    :cond_0
    move v1, v0

    .line 206
    :goto_0
    return v1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 213
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    .line 215
    .local v0, "childPreviousWindowIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getLastWindowIndex(Z)I

    move-result v1

    goto :goto_0

    .line 216
    :cond_0
    move v1, v0

    .line 215
    :goto_0
    return v1
.end method
