.class public final Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final currentPlaybackPositionMs:J

.field public final eventPlaybackPositionMs:J

.field public final mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final realtimeMs:J

.field public final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field public final totalBufferedDurationMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>(JLandroidx/media2/exoplayer/external/Timeline;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V
    .locals 0
    .param p1, "realtimeMs"    # J
    .param p3, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p4, "windowIndex"    # I
    .param p5, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventPlaybackPositionMs"    # J
    .param p8, "currentPlaybackPositionMs"    # J
    .param p10, "totalBufferedDurationMs"    # J

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 122
    iput-object p3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 123
    iput p4, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 124
    iput-object p5, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 125
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 126
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 127
    iput-wide p10, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    .line 128
    return-void
.end method
