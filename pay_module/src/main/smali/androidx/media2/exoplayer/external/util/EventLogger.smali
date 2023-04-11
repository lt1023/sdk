.class public Landroidx/media2/exoplayer/external/util/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "EventLogger"

.field private static final MAX_TIMELINE_ITEM_LINES:I = 0x3

.field private static final TIME_FORMAT:Ljava/text/NumberFormat;


# instance fields
.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private final startTimeMs:J

.field private final tag:Ljava/lang/String;

.field private final trackSelector:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    .line 60
    sget-object v0, Landroidx/media2/exoplayer/external/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 61
    sget-object v0, Landroidx/media2/exoplayer/external/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 62
    sget-object v0, Landroidx/media2/exoplayer/external/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;)V
    .locals 1
    .param p1, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    const-string v0, "EventLogger"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;-><init>(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;Ljava/lang/String;)V
    .locals 2
    .param p1, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;

    .line 90
    iput-object p2, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->tag:Ljava/lang/String;

    .line 91
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 92
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->startTimeMs:J

    .line 94
    return-void
.end method

.method private static getAdaptiveSupportString(II)Ljava/lang/String;
    .locals 1
    .param p0, "trackCount"    # I
    .param p1, "adaptiveSupport"    # I

    .line 545
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 546
    const-string v0, "N/A"

    return-object v0

    .line 548
    :cond_0
    if-eqz p1, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    .line 556
    const-string v0, "?"

    return-object v0

    .line 550
    :cond_1
    const-string v0, "YES"

    return-object v0

    .line 552
    :cond_2
    const-string v0, "YES_NOT_SEAMLESS"

    return-object v0

    .line 554
    :cond_3
    const-string v0, "NO"

    return-object v0
.end method

.method private static getDiscontinuityReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 587
    packed-switch p0, :pswitch_data_0

    .line 599
    const-string v0, "?"

    return-object v0

    .line 597
    :pswitch_0
    const-string v0, "INTERNAL"

    return-object v0

    .line 595
    :pswitch_1
    const-string v0, "AD_INSERTION"

    return-object v0

    .line 593
    :pswitch_2
    const-string v0, "SEEK_ADJUSTMENT"

    return-object v0

    .line 591
    :pswitch_3
    const-string v0, "SEEK"

    return-object v0

    .line 589
    :pswitch_4
    const-string v0, "PERIOD_TRANSITION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEventString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;

    .line 484
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventTimeString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEventString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventDescription"    # Ljava/lang/String;

    .line 488
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventTimeString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEventTimeString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;
    .locals 5
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 492
    iget v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->windowIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "windowPeriodString":Ljava/lang/String;
    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_1

    .line 494
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 495
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adGroup="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ad="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_0
    goto :goto_0

    .line 493
    :cond_1
    nop

    .line 501
    :goto_0
    iget-wide v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->startTimeMs:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 503
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    return-object v1
.end method

.method private static getFormatSupportString(I)Ljava/lang/String;
    .locals 1
    .param p0, "formatSupport"    # I

    .line 528
    packed-switch p0, :pswitch_data_0

    .line 540
    const-string v0, "?"

    return-object v0

    .line 530
    :pswitch_0
    const-string v0, "YES"

    return-object v0

    .line 532
    :pswitch_1
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    return-object v0

    .line 534
    :pswitch_2
    const-string v0, "NO_UNSUPPORTED_DRM"

    return-object v0

    .line 536
    :pswitch_3
    const-string v0, "NO_UNSUPPORTED_TYPE"

    return-object v0

    .line 538
    :pswitch_4
    const-string v0, "NO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRepeatModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "repeatMode"    # I

    .line 574
    packed-switch p0, :pswitch_data_0

    .line 582
    const-string v0, "?"

    return-object v0

    .line 580
    :pswitch_0
    const-string v0, "ALL"

    return-object v0

    .line 578
    :pswitch_1
    const-string v0, "ONE"

    return-object v0

    .line 576
    :pswitch_2
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 513
    packed-switch p0, :pswitch_data_0

    .line 523
    const-string v0, "?"

    return-object v0

    .line 517
    :pswitch_0
    const-string v0, "ENDED"

    return-object v0

    .line 521
    :pswitch_1
    const-string v0, "READY"

    return-object v0

    .line 515
    :pswitch_2
    const-string v0, "BUFFERING"

    return-object v0

    .line 519
    :pswitch_3
    const-string v0, "IDLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 3
    .param p0, "timeMs"    # J

    .line 509
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    long-to-float v1, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getTimelineChangeReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 604
    packed-switch p0, :pswitch_data_0

    .line 612
    const-string v0, "?"

    return-object v0

    .line 610
    :pswitch_0
    const-string v0, "DYNAMIC"

    return-object v0

    .line 608
    :pswitch_1
    const-string v0, "RESET"

    return-object v0

    .line 606
    :pswitch_2
    const-string v0, "PREPARED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTrackStatusString(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Landroidx/media2/exoplayer/external/source/TrackGroup;I)Ljava/lang/String;
    .locals 2
    .param p0, "selection"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "trackIndex"    # I

    .line 565
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 566
    invoke-interface {p0, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 565
    :cond_1
    nop

    .line 566
    :goto_0
    const/4 v0, 0x0

    .line 565
    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTrackStatusString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "enabled"    # Z

    .line 570
    if-eqz p0, :cond_0

    const-string v0, "[X]"

    goto :goto_0

    :cond_0
    const-string v0, "[ ]"

    :goto_0
    return-object v0
.end method

.method private static getTrackTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "trackType"    # I

    .line 617
    packed-switch p0, :pswitch_data_0

    .line 633
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    const/16 v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "custom ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 627
    :pswitch_0
    const-string v0, "none"

    return-object v0

    .line 625
    :pswitch_1
    const-string v0, "camera motion"

    return-object v0

    .line 623
    :pswitch_2
    const-string v0, "metadata"

    return-object v0

    .line 629
    :pswitch_3
    const-string v0, "text"

    return-object v0

    .line 631
    :pswitch_4
    const-string/jumbo v0, "video"

    return-object v0

    .line 619
    :pswitch_5
    const-string v0, "audio"

    return-object v0

    .line 621
    :pswitch_6
    const-string v0, "default"

    return-object v0

    .line 633
    :cond_0
    const-string v0, "?"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;

    .line 454
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventDescription"    # Ljava/lang/String;

    .line 458
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method private loge(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventDescription"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 470
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Landroidx/media2/exoplayer/external/util/EventLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    return-void
.end method

.method private loge(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 462
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroidx/media2/exoplayer/external/util/EventLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    return-void
.end method

.method private printInternalError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 474
    const-string v0, "internalError"

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/util/EventLogger;->loge(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    return-void
.end method

.method private printMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;)V
    .locals 4
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 479
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 448
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    return-void
.end method

.method public onAudioAttributesChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$$CC;->onAudioAttributesChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    return-void
.end method

.method public onAudioSessionId(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSessionId"    # I

    .line 286
    const-string v0, "audioSessionId"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onAudioUnderrun(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 3
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "bufferSize"    # I
    .param p3, "bufferSizeMs"    # J
    .param p5, "elapsedSinceLastFeedMs"    # J

    .line 311
    const-string v0, "audioTrackUnderrun"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->loge(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    return-void
.end method

.method public onBandwidthEstimate(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 385
    return-void
.end method

.method public onDecoderDisabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 305
    const-string v0, "decoderDisabled"

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onDecoderEnabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 281
    const-string v0, "decoderEnabled"

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onDecoderInitialized(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 4
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "decoderName"    # Ljava/lang/String;
    .param p4, "initializationDurationMs"    # J

    .line 292
    const-string v0, "decoderInitialized"

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onDecoderInputFormatChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/Format;)V
    .locals 5
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 297
    const-string v0, "decoderInputFormatChanged"

    .line 300
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Landroidx/media2/exoplayer/external/Format;->toLogString(Landroidx/media2/exoplayer/external/Format;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onDownstreamFormatChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 399
    const-string v0, "downstreamFormatChanged"

    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/Format;->toLogString(Landroidx/media2/exoplayer/external/Format;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onDrmKeysLoaded(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 424
    const-string v0, "drmKeysLoaded"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public onDrmKeysRemoved(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 419
    const-string v0, "drmKeysRemoved"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public onDrmKeysRestored(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 414
    const-string v0, "drmKeysRestored"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public onDrmSessionAcquired(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 404
    const-string v0, "drmSessionAcquired"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public onDrmSessionManagerError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 409
    const-string v0, "drmSessionManagerError"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->printInternalError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 410
    return-void
.end method

.method public onDrmSessionReleased(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 429
    const-string v0, "drmSessionReleased"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public onDroppedVideoFrames(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "count"    # I
    .param p3, "elapsedMs"    # J

    .line 320
    const-string v0, "droppedFrames"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 368
    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 374
    return-void
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 361
    const-string v0, "loadError"

    invoke-direct {p0, p1, v0, p4}, Landroidx/media2/exoplayer/external/util/EventLogger;->printInternalError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 362
    return-void
.end method

.method public onLoadStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 352
    return-void
.end method

.method public onLoadingChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Z)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z

    .line 100
    const-string v0, "loading"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onMediaPeriodCreated(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 340
    const-string v0, "mediaPeriodCreated"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onMediaPeriodReleased(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 345
    const-string v0, "mediaPeriodReleased"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onMetadata(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 3
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 274
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventTimeString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "metadata ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 275
    const-string v0, "  "

    invoke-direct {p0, p2, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->printMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;)V

    .line 276
    const-string v0, "]"

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 5
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 132
    const-string v0, "playbackParameters"

    const-string v1, "speed=%.2f, pitch=%.2f, skipSilence=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 137
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p2, Landroidx/media2/exoplayer/external/PlaybackParameters;->pitch:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-boolean v3, p2, Landroidx/media2/exoplayer/external/PlaybackParameters;->skipSilence:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 135
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onPlayerError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "e"    # Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 180
    const-string v0, "playerFailed"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->loge(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 4
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "state"    # I

    .line 106
    const-string v0, "state"

    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/EventLogger;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 121
    const-string v0, "positionDiscontinuity"

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getDiscontinuityReasonString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onReadingStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 378
    const-string v0, "mediaPeriodReadingStarted"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public onRenderedFirstFrame(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 335
    const-string v0, "renderedFirstFrame"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "repeatMode"    # I

    .line 111
    const-string v0, "repeatMode"

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getRepeatModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onSeekProcessed(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 269
    const-string v0, "seekProcessed"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onSeekStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 1
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 126
    const-string v0, "seekStarted"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Z)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "shuffleModeEnabled"    # Z

    .line 116
    const-string v0, "shuffleModeEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onSurfaceSizeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;II)V
    .locals 3
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 389
    const-string v0, "surfaceSizeChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public onTimelineChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 9
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 142
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v0

    .line 143
    .local v0, "periodCount":I
    iget-object v1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v1

    .line 144
    .local v1, "windowCount":I
    nop

    .line 146
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventTimeString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTimelineChangeReasonString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4c

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "timelineChanged ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", periodCount="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", windowCount="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 154
    iget-object v3, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v3, v2, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 155
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getDurationMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  period ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_0
    if-le v0, v3, :cond_1

    .line 158
    const-string v2, "  ..."

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_1
    nop

    .line 160
    :goto_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 161
    iget-object v4, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v4, v2, v5}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 162
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 165
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDurationMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-boolean v5, v5, Landroidx/media2/exoplayer/external/Timeline$Window;->isSeekable:Z

    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/EventLogger;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-boolean v6, v6, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "  window ["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    .end local v2    # "i":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 173
    const-string v2, "  ..."

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 172
    :cond_3
    nop

    .line 175
    :goto_3
    const-string v2, "]"

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onTracksChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .locals 18
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "ignored"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "trackSelections"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/EventLogger;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 188
    .local v1, "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    :goto_0
    if-nez v1, :cond_1

    .line 189
    const-string/jumbo v2, "tracksChanged"

    const-string v3, "[]"

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v2, v3}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 192
    :cond_1
    move-object/from16 v4, p1

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/util/EventLogger;->getEventTimeString(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "tracksChanged ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    .line 195
    .local v2, "rendererCount":I
    const/4 v3, 0x0

    .local v3, "rendererIndex":I
    :goto_1
    const/4 v5, 0x0

    if-ge v3, v2, :cond_8

    .line 196
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v6

    .line 197
    .local v6, "rendererTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    move-object/from16 v7, p3

    invoke-virtual {v7, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v8

    .line 198
    .local v8, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    iget v9, v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-lez v9, :cond_7

    .line 199
    const/16 v9, 0x18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "  Renderer:"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ["

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 200
    const/4 v9, 0x0

    .local v9, "groupIndex":I
    :goto_2
    iget v10, v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v9, v10, :cond_3

    .line 201
    invoke-virtual {v6, v9}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    .line 202
    .local v10, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    iget v11, v10, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 205
    invoke-virtual {v1, v3, v9, v5}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v12

    .line 203
    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/util/EventLogger;->getAdaptiveSupportString(II)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "adaptiveSupport":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "    Group:"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", adaptive_supported="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ["

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 207
    const/4 v12, 0x0

    .local v12, "trackIndex":I
    :goto_3
    iget v13, v10, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_2

    .line 208
    invoke-static {v8, v10, v12}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTrackStatusString(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Landroidx/media2/exoplayer/external/source/TrackGroup;I)Ljava/lang/String;

    move-result-object v13

    .line 209
    .local v13, "status":Ljava/lang/String;
    nop

    .line 211
    invoke-virtual {v1, v3, v9, v12}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v14

    .line 210
    invoke-static {v14}, Landroidx/media2/exoplayer/external/util/EventLogger;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, "formatSupport":Ljava/lang/String;
    nop

    .line 218
    invoke-virtual {v10, v12}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v15

    invoke-static {v15}, Landroidx/media2/exoplayer/external/Format;->toLogString(Landroidx/media2/exoplayer/external/Format;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x26

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v5, v16, v17

    move/from16 v16, v2

    .end local v2    # "rendererCount":I
    .local v16, "rendererCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "      "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Track:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", supported="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 207
    .end local v13    # "status":Ljava/lang/String;
    .end local v14    # "formatSupport":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    const/4 v5, 0x0

    goto :goto_3

    .end local v16    # "rendererCount":I
    .restart local v2    # "rendererCount":I
    :cond_2
    move/from16 v16, v2

    .line 222
    .end local v2    # "rendererCount":I
    .end local v12    # "trackIndex":I
    .restart local v16    # "rendererCount":I
    const-string v2, "    ]"

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 200
    .end local v10    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v11    # "adaptiveSupport":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    const/4 v5, 0x0

    goto/16 :goto_2

    .end local v16    # "rendererCount":I
    .restart local v2    # "rendererCount":I
    :cond_3
    move/from16 v16, v2

    .line 225
    .end local v2    # "rendererCount":I
    .end local v9    # "groupIndex":I
    .restart local v16    # "rendererCount":I
    if-eqz v8, :cond_6

    .line 226
    const/4 v2, 0x0

    .local v2, "selectionIndex":I
    :goto_4
    invoke-interface {v8}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 227
    invoke-interface {v8, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 228
    .local v5, "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    if-eqz v5, :cond_4

    .line 229
    const-string v9, "    Metadata ["

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 230
    const-string v9, "      "

    invoke-direct {v0, v5, v9}, Landroidx/media2/exoplayer/external/util/EventLogger;->printMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;)V

    .line 231
    const-string v9, "    ]"

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 232
    goto :goto_5

    .line 228
    :cond_4
    nop

    .line 226
    .end local v5    # "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    goto :goto_5

    .line 225
    .end local v2    # "selectionIndex":I
    :cond_6
    nop

    .line 236
    :goto_5
    const-string v2, "  ]"

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 198
    .end local v16    # "rendererCount":I
    .local v2, "rendererCount":I
    :cond_7
    move/from16 v16, v2

    .line 195
    .end local v2    # "rendererCount":I
    .end local v6    # "rendererTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .end local v8    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v16    # "rendererCount":I
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    .end local v16    # "rendererCount":I
    .restart local v2    # "rendererCount":I
    :cond_8
    move-object/from16 v7, p3

    move/from16 v16, v2

    .line 240
    .end local v2    # "rendererCount":I
    .end local v3    # "rendererIndex":I
    .restart local v16    # "rendererCount":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    .line 241
    .local v2, "unassociatedTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    iget v3, v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-lez v3, :cond_b

    .line 242
    const-string v3, "  Renderer:None ["

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 243
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_7
    iget v5, v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v3, v5, :cond_a

    .line 244
    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "    Group:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    .line 246
    .local v5, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_8
    iget v8, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v6, v8, :cond_9

    .line 247
    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, "status":Ljava/lang/String;
    nop

    .line 249
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/EventLogger;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "formatSupport":Ljava/lang/String;
    nop

    .line 256
    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    invoke-static {v11}, Landroidx/media2/exoplayer/external/Format;->toLogString(Landroidx/media2/exoplayer/external/Format;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x26

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "      "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " Track:"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", supported="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 250
    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 246
    .end local v9    # "status":Ljava/lang/String;
    .end local v10    # "formatSupport":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    .line 260
    .end local v6    # "trackIndex":I
    const-string v6, "    ]"

    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 243
    .end local v5    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 262
    .end local v3    # "groupIndex":I
    :cond_a
    const-string v3, "  ]"

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    goto :goto_9

    .line 241
    :cond_b
    nop

    .line 264
    :goto_9
    const-string v3, "]"

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onUpstreamDiscarded(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 394
    const-string/jumbo v0, "upstreamDiscarded"

    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/Format;->toLogString(Landroidx/media2/exoplayer/external/Format;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 3
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "unappliedRotationDegrees"    # I
    .param p5, "pixelWidthHeightRatio"    # F

    .line 330
    const-string/jumbo v0, "videoSizeChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/util/EventLogger;->logd(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public onVolumeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$$CC;->onVolumeChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method
