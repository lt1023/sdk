.class public final Landroidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline;
.super Landroidx/media2/exoplayer/external/source/ForwardingTimeline;
.source "SinglePeriodAdTimeline.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation


# instance fields
.field private final adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V
    .locals 3
    .param p1, "contentTimeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "adPlaybackState"    # Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 46
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ForwardingTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 47
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 48
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 49
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 50
    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 10
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 55
    iget-object v2, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v3, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    iget v4, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    iget-wide v5, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->durationUs:J

    .line 60
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v7

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 55
    move-object v1, p2

    invoke-virtual/range {v1 .. v9}, Landroidx/media2/exoplayer/external/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 62
    return-object p2
.end method

.method public getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;
    .locals 5
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p3, "setTag"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .line 68
    invoke-super/range {p0 .. p5}, Landroidx/media2/exoplayer/external/source/ForwardingTimeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object p2

    .line 69
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    goto :goto_0

    .line 69
    :cond_0
    nop

    .line 72
    :goto_0
    return-object p2
.end method
