.class final Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;
.super Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.source "BufferSizeAdaptationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferSizeAdaptiveTrackSelection"
.end annotation


# static fields
.field private static final BITRATE_BLACKLISTED:I = -0x1


# instance fields
.field private final bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

.field private final bitrateToBufferFunctionIntercept:D

.field private final bitrateToBufferFunctionSlope:D

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final dynamicFormatFilter:Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

.field private final formatBitrates:[I

.field private final hysteresisBufferUs:J

.field private isInSteadyState:Z

.field private final maxBitrate:I

.field private final maxBufferUs:J

.field private final minBitrate:I

.field private final minBufferUs:J

.field private playbackSpeed:F

.field private selectedIndex:I

.field private selectionReason:I

.field private final startUpBandwidthFraction:F

.field private final startUpMinBufferForQualityIncreaseUs:J


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIFILandroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;Landroidx/media2/exoplayer/external/util/Clock;)V
    .locals 15
    .param p1, "trackGroup"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p4, "minBufferMs"    # I
    .param p5, "maxBufferMs"    # I
    .param p6, "hysteresisBufferMs"    # I
    .param p7, "startUpBandwidthFraction"    # F
    .param p8, "startUpMinBufferForQualityIncreaseMs"    # I
    .param p9, "dynamicFormatFilter"    # Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;
    .param p10, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 322
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 323
    move-object/from16 v1, p3

    iput-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 324
    move/from16 v2, p4

    int-to-long v3, v2

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBufferUs:J

    .line 325
    move/from16 v3, p5

    int-to-long v4, v3

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->maxBufferUs:J

    .line 326
    move/from16 v4, p6

    int-to-long v5, v4

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->hysteresisBufferUs:J

    .line 327
    move/from16 v5, p7

    iput v5, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->startUpBandwidthFraction:F

    .line 328
    move/from16 v6, p8

    int-to-long v7, v6

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->startUpMinBufferForQualityIncreaseUs:J

    .line 329
    move-object/from16 v7, p9

    iput-object v7, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->dynamicFormatFilter:Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

    .line 330
    move-object/from16 v8, p10

    iput-object v8, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 332
    iget v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->length:I

    new-array v9, v9, [I

    iput-object v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    .line 333
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    iget v10, v10, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iput v10, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->maxBitrate:I

    .line 334
    iget v10, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->length:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    iget v10, v10, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iput v10, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBitrate:I

    .line 335
    iput v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectionReason:I

    .line 336
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->playbackSpeed:F

    .line 341
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->maxBufferUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->hysteresisBufferUs:J

    sub-long/2addr v9, v11

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBufferUs:J

    sub-long/2addr v9, v11

    long-to-double v9, v9

    iget v11, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->maxBitrate:I

    int-to-double v11, v11

    iget v13, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBitrate:I

    int-to-double v13, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    .line 343
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->bitrateToBufferFunctionSlope:D

    .line 344
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBufferUs:J

    long-to-double v9, v9

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->bitrateToBufferFunctionSlope:D

    iget v13, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBitrate:I

    int-to-double v13, v13

    .line 345
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v11

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->bitrateToBufferFunctionIntercept:D

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIFILandroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;Landroidx/media2/exoplayer/external/util/Clock;Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "x1"    # [I
    .param p3, "x2"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # F
    .param p8, "x7"    # I
    .param p9, "x8"    # Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;
    .param p10, "x9"    # Landroidx/media2/exoplayer/external/util/Clock;
    .param p11, "x10"    # Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$1;

    .line 288
    invoke-direct/range {p0 .. p10}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIFILandroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;Landroidx/media2/exoplayer/external/util/Clock;)V

    return-void
.end method

.method private static getCurrentPeriodBufferedDurationUs(JJ)J
    .locals 3
    .param p0, "playbackPositionUs"    # J
    .param p2, "bufferedDurationUs"    # J

    .line 497
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    add-long v0, p0, p2

    :goto_0
    return-wide v0
.end method

.method private getTargetBufferForBitrateUs(I)J
    .locals 4
    .param p1, "bitrate"    # I

    .line 485
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBitrate:I

    if-gt p1, v0, :cond_0

    .line 486
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->minBufferUs:J

    return-wide v0

    .line 488
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->maxBitrate:I

    if-lt p1, v0, :cond_1

    .line 489
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->maxBufferUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->hysteresisBufferUs:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 491
    :cond_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->bitrateToBufferFunctionSlope:D

    int-to-double v2, p1

    .line 492
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->bitrateToBufferFunctionIntercept:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 491
    return-wide v0
.end method

.method private isOutsideHysteresis(J)Z
    .locals 10
    .param p1, "bufferUs"    # J

    .line 411
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    aget v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 412
    return v3

    .line 414
    :cond_0
    aget v0, v0, v1

    .line 415
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getTargetBufferForBitrateUs(I)J

    move-result-wide v0

    .line 416
    .local v0, "targetBufferForCurrentBitrateUs":J
    sub-long v4, p1, v0

    .line 417
    .local v4, "bufferDiffUs":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->hysteresisBufferUs:J

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private selectIdealIndexUsingBandwidth(Z)I
    .locals 7
    .param p1, "isInitialSelection"    # Z

    .line 456
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 457
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->startUpBandwidthFraction:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 458
    .local v0, "effectiveBitrate":J
    const/4 v2, 0x0

    .line 459
    .local v2, "lowestBitrateNonBlacklistedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 460
    aget v5, v4, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 461
    aget v4, v4, v3

    int-to-float v4, v4

    iget v5, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->playbackSpeed:F

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1

    iget-object v4, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->dynamicFormatFilter:Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

    .line 463
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iget-object v6, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    aget v6, v6, v3

    .line 462
    invoke-interface {v4, v5, v6, p1}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;->isFormatAllowed(Landroidx/media2/exoplayer/external/Format;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    return v3

    .line 462
    :cond_0
    goto :goto_1

    .line 461
    :cond_1
    nop

    .line 466
    :goto_1
    move v2, v3

    goto :goto_2

    .line 460
    :cond_2
    nop

    .line 459
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method private selectIdealIndexUsingBufferSize(J)I
    .locals 6
    .param p1, "bufferUs"    # J

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "lowestBitrateNonBlacklistedIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 423
    aget v3, v2, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 424
    aget v2, v2, v1

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getTargetBufferForBitrateUs(I)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->dynamicFormatFilter:Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;

    .line 426
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    aget v4, v4, v1

    const/4 v5, 0x0

    .line 425
    invoke-interface {v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter;->isFormatAllowed(Landroidx/media2/exoplayer/external/Format;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    return v1

    .line 425
    :cond_0
    goto :goto_1

    .line 424
    :cond_1
    nop

    .line 429
    :goto_1
    move v0, v1

    goto :goto_2

    .line 423
    :cond_2
    nop

    .line 422
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method private selectIndexStartUpPhase(J)V
    .locals 6
    .param p1, "bufferUs"    # J

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectIdealIndexUsingBandwidth(Z)I

    move-result v0

    .line 439
    .local v0, "startUpSelectedIndex":I
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectIdealIndexUsingBufferSize(J)I

    move-result v1

    .line 440
    .local v1, "steadyStateSelectedIndex":I
    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    if-gt v1, v2, :cond_0

    .line 442
    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    .line 443
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->isInSteadyState:Z

    goto :goto_0

    .line 445
    :cond_0
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->startUpMinBufferForQualityIncreaseUs:J

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    aget v2, v3, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 449
    return-void

    .line 445
    :cond_1
    nop

    .line 451
    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    .line 453
    :goto_0
    return-void
.end method

.method private selectIndexSteadyState(J)V
    .locals 1
    .param p1, "bufferUs"    # J

    .line 405
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->isOutsideHysteresis(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectIdealIndexUsingBufferSize(J)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    goto :goto_0

    .line 405
    :cond_0
    nop

    .line 408
    :goto_0
    return-void
.end method

.method private updateFormatBitrates(J)V
    .locals 4
    .param p1, "nowMs"    # J

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->length:I

    if-ge v0, v1, :cond_2

    .line 476
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    goto :goto_2

    .line 476
    :cond_1
    :goto_1
    nop

    .line 477
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->formatBitrates:[I

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    aput v2, v1, v0

    .line 475
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 360
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 365
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectionReason:I

    return v0
.end method

.method public onDiscontinuity()V
    .locals 1

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->isInSteadyState:Z

    .line 356
    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0
    .param p1, "playbackSpeed"    # F

    .line 350
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->playbackSpeed:F

    .line 351
    return-void
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .locals 4
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .param p8, "mediaChunkIterators"    # [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 381
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->updateFormatBitrates(J)V

    .line 384
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectionReason:I

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectionReason:I

    .line 386
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectIdealIndexUsingBandwidth(Z)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    .line 387
    return-void

    .line 390
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->getCurrentPeriodBufferedDurationUs(JJ)J

    move-result-wide v0

    .line 391
    .local v0, "bufferUs":J
    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    .line 392
    .local v2, "oldSelectedIndex":I
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->isInSteadyState:Z

    if-eqz v3, :cond_1

    .line 393
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectIndexSteadyState(J)V

    goto :goto_0

    .line 395
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectIndexStartUpPhase(J)V

    .line 397
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectedIndex:I

    if-eq v3, v2, :cond_2

    .line 398
    const/4 v3, 0x3

    iput v3, p0, Landroidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection;->selectionReason:I

    goto :goto_1

    .line 397
    :cond_2
    nop

    .line 400
    :goto_1
    return-void
.end method
