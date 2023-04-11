.class final Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodInfo"
.end annotation


# instance fields
.field public final mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field public final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;I)V
    .locals 0
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p3, "windowIndex"    # I

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 889
    iput-object p2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 890
    iput p3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->windowIndex:I

    .line 891
    return-void
.end method
