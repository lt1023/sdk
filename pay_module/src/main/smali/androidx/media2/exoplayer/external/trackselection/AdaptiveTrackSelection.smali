.class public Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
.super Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;,
        Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;,
        Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field public static final DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x7d0L


# instance fields
.field private final bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final formatBitrates:[I

.field private final formats:[Landroidx/media2/exoplayer/external/Format;

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private final minTimeBetweenBufferReevaluationMs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I

.field private trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

.field private final trackBitrates:[I


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;)V
    .locals 10
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthProvider"    # Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;
    .param p4, "minDurationForQualityIncreaseMs"    # J
    .param p6, "maxDurationForQualityDecreaseMs"    # J
    .param p8, "minDurationToRetainAfterDiscardMs"    # J
    .param p10, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p11, "minTimeBetweenBufferReevaluationMs"    # J
    .param p13, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 419
    move-object v0, p0

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 420
    move-object v1, p3

    iput-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    .line 421
    const-wide/16 v2, 0x3e8

    mul-long v4, p4, v2

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    .line 422
    mul-long v4, p6, v2

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    .line 423
    mul-long v2, v2, p8

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 424
    move/from16 v2, p10

    iput v2, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 426
    move-wide/from16 v3, p11

    iput-wide v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    .line 427
    move-object/from16 v5, p13

    iput-object v5, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 428
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 429
    const/4 v6, 0x0

    iput v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    .line 430
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 431
    sget-object v6, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    iput-object v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    .line 432
    iget v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    new-array v6, v6, [Landroidx/media2/exoplayer/external/Format;

    iput-object v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 433
    iget v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    new-array v6, v6, [I

    iput-object v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formatBitrates:[I

    .line 434
    iget v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    new-array v6, v6, [I

    iput-object v6, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    .line 435
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v6, v7, :cond_0

    .line 437
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 438
    .local v7, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v8, v6

    .line 439
    iget-object v9, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formatBitrates:[I

    aget-object v8, v8, v6

    iget v8, v8, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    aput v8, v9, v6

    .line 435
    .end local v7    # "format":Landroidx/media2/exoplayer/external/Format;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 441
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "x1"    # [I
    .param p3, "x2"    # Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # F
    .param p11, "x7"    # J
    .param p13, "x8"    # Landroidx/media2/exoplayer/external/util/Clock;
    .param p14, "x9"    # Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$1;

    .line 43
    invoke-direct/range {p0 .. p13}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V
    .locals 15
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 346
    sget-object v14, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x61a8

    const-wide/16 v8, 0x61a8

    const/high16 v10, 0x3f400000    # 0.75f

    const/high16 v11, 0x3f400000    # 0.75f

    const-wide/16 v12, 0x7d0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v14}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/BandwidthMeter;JJJFFJLandroidx/media2/exoplayer/external/util/Clock;)V

    .line 357
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/BandwidthMeter;JJJFFJLandroidx/media2/exoplayer/external/util/Clock;)V
    .locals 16
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p4, "minDurationForQualityIncreaseMs"    # J
    .param p6, "maxDurationForQualityDecreaseMs"    # J
    .param p8, "minDurationToRetainAfterDiscardMs"    # J
    .param p10, "bandwidthFraction"    # F
    .param p11, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p12, "minTimeBetweenBufferReevaluationMs"    # J
    .param p14, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 397
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    move-object/from16 v14, p3

    move/from16 v15, p10

    invoke-direct {v3, v14, v15}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;-><init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p11

    move-wide/from16 v11, p12

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;)V

    .line 407
    return-void
.end method

.method static synthetic access$000([[J)[[[J
    .locals 1
    .param p0, "x0"    # [[J

    .line 43
    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getAllocationCheckpoints([[J)[[[J

    move-result-object v0

    return-object v0
.end method

.method private static countArrayElements([[D)I
    .locals 5
    .param p0, "array"    # [[D

    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 799
    .local v3, "subArray":[D
    array-length v4, v3

    add-int/2addr v0, v4

    .line 798
    .end local v3    # "subArray":[D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 801
    :cond_0
    return v0
.end method

.method private determineIdealSelectedIndex(J[I)I
    .locals 11
    .param p1, "nowMs"    # J
    .param p3, "trackBitrates"    # [I

    .line 641
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;->getAllocatedBandwidth()J

    move-result-wide v7

    .line 642
    .local v7, "effectiveBitrate":J
    const/4 v0, 0x0

    .line 643
    .local v0, "lowestBitrateNonBlacklistedIndex":I
    const/4 v1, 0x0

    move v9, v0

    move v0, v1

    .local v0, "i":I
    .local v9, "lowestBitrateNonBlacklistedIndex":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v0, v1, :cond_3

    .line 644
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    .line 645
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 646
    .local v10, "format":Landroidx/media2/exoplayer/external/Format;
    aget v3, p3, v0

    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    move-object v1, p0

    move-object v2, v10

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->canSelectFormat(Landroidx/media2/exoplayer/external/Format;IFJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    return v0

    .line 649
    :cond_2
    move v1, v0

    move v9, v1

    .line 643
    .end local v10    # "format":Landroidx/media2/exoplayer/external/Format;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "i":I
    :cond_3
    return v9
.end method

.method private static getAllocationCheckpoints([[J)[[[J
    .locals 17
    .param p0, "trackBitrates"    # [[J

    .line 728
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getLogArrayValues([[J)[[D

    move-result-object v1

    .line 729
    .local v1, "logBitrates":[[D
    invoke-static {v1}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getSwitchPoints([[D)[[D

    move-result-object v2

    .line 734
    .local v2, "switchPoints":[[D
    invoke-static {v2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->countArrayElements([[D)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    .line 735
    .local v3, "checkpointCount":I
    array-length v4, v1

    const/4 v5, 0x2

    filled-new-array {v4, v3, v5}, [I

    move-result-object v4

    const-class v5, J

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[J

    .line 736
    .local v4, "checkpoints":[[[J
    array-length v5, v1

    new-array v5, v5, [I

    .line 737
    .local v5, "currentSelection":[I
    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    .line 738
    const/4 v7, 0x2

    .local v7, "checkpointIndex":I
    :goto_0
    add-int/lit8 v8, v3, -0x1

    if-ge v7, v8, :cond_3

    .line 739
    const/4 v8, 0x0

    .line 740
    .local v8, "nextUpdateIndex":I
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 741
    .local v9, "nextUpdateSwitchPoint":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_2

    .line 742
    aget v12, v5, v11

    add-int/2addr v12, v6

    aget-object v13, v1, v11

    array-length v13, v13

    if-ne v12, v13, :cond_0

    .line 743
    goto :goto_2

    .line 745
    :cond_0
    aget-object v12, v2, v11

    aget v13, v5, v11

    aget-wide v13, v12, v13

    .line 746
    .local v13, "switchPoint":D
    cmpg-double v12, v13, v9

    if-gez v12, :cond_1

    .line 747
    move-wide v9, v13

    .line 748
    move v8, v11

    goto :goto_2

    .line 746
    :cond_1
    nop

    .line 741
    .end local v13    # "switchPoint":D
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 751
    .end local v11    # "i":I
    :cond_2
    aget v11, v5, v8

    add-int/2addr v11, v6

    aput v11, v5, v8

    .line 752
    invoke-static {v4, v7, v0, v5}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    .line 738
    .end local v8    # "nextUpdateIndex":I
    .end local v9    # "nextUpdateSwitchPoint":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 754
    .end local v7    # "checkpointIndex":I
    :cond_3
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_4

    aget-object v10, v4, v9

    .line 755
    .local v10, "points":[[J
    add-int/lit8 v11, v3, -0x1

    aget-object v11, v10, v11

    add-int/lit8 v12, v3, -0x2

    aget-object v12, v10, v12

    aget-wide v13, v12, v8

    const-wide/16 v15, 0x2

    mul-long v13, v13, v15

    aput-wide v13, v11, v8

    .line 756
    add-int/lit8 v11, v3, -0x1

    aget-object v11, v10, v11

    add-int/lit8 v12, v3, -0x2

    aget-object v12, v10, v12

    aget-wide v13, v12, v6

    mul-long v13, v13, v15

    aput-wide v13, v11, v6

    .line 754
    .end local v10    # "points":[[J
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 758
    :cond_4
    return-object v4
.end method

.method private static getLogArrayValues([[J)[[D
    .locals 7
    .param p0, "values"    # [[J

    .line 763
    array-length v0, p0

    new-array v0, v0, [[D

    .line 764
    .local v0, "logValues":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 765
    aget-object v2, p0, v1

    array-length v2, v2

    new-array v2, v2, [D

    aput-object v2, v0, v1

    .line 766
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 767
    aget-object v3, v0, v1

    aget-object v4, p0, v1

    aget-wide v5, v4, v2

    long-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 764
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static getSwitchPoints([[D)[[D
    .locals 13
    .param p0, "logBitrates"    # [[D

    .line 780
    array-length v0, p0

    new-array v0, v0, [[D

    .line 781
    .local v0, "switchPoints":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 782
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [D

    aput-object v2, v0, v1

    .line 783
    aget-object v2, v0, v1

    array-length v2, v2

    if-nez v2, :cond_0

    .line 784
    goto :goto_2

    .line 786
    :cond_0
    aget-object v2, p0, v1

    aget-object v3, p0, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    aget-object v2, p0, v1

    const/4 v5, 0x0

    aget-wide v6, v2, v5

    sub-double/2addr v3, v6

    .line 787
    .local v3, "totalBitrateDiff":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v6, p0, v1

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 788
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-object v8, p0, v1

    aget-wide v9, v8, v2

    aget-object v8, p0, v1

    add-int/lit8 v11, v2, 0x1

    aget-wide v11, v8, v11

    add-double/2addr v9, v11

    mul-double v9, v9, v6

    .line 789
    .local v9, "switchBitrate":D
    aget-object v6, v0, v1

    aget-object v7, p0, v1

    aget-wide v11, v7, v5

    sub-double v7, v9, v11

    div-double/2addr v7, v3

    aput-wide v7, v6, v2

    .line 787
    .end local v9    # "switchBitrate":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 781
    .end local v2    # "j":I
    .end local v3    # "totalBitrateDiff":D
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .locals 3
    .param p1, "availableDurationUs"    # J

    .line 657
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 659
    .local v0, "isAvailableDurationTooShort":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 660
    long-to-float v1, p1

    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float v1, v1, v2

    float-to-long v1, v1

    goto :goto_1

    .line 661
    :cond_1
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    .line 659
    :goto_1
    return-wide v1
.end method

.method private static setCheckpointValues([[[JI[[J[I)V
    .locals 7
    .param p0, "checkpoints"    # [[[J
    .param p1, "checkpointIndex"    # I
    .param p2, "trackBitrates"    # [[J
    .param p3, "selectedTracks"    # [I

    .line 815
    const-wide/16 v0, 0x0

    .line 816
    .local v0, "totalBitrate":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 817
    aget-object v3, p0, v2

    aget-object v3, v3, p1

    aget-object v4, p2, v2

    aget v5, p3, v2

    aget-wide v5, v4, v5

    const/4 v4, 0x1

    aput-wide v5, v3, v4

    .line 818
    aget-object v3, p0, v2

    aget-object v3, v3, p1

    aget-wide v4, v3, v4

    add-long/2addr v0, v4

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v2    # "i":I
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 821
    .local v5, "points":[[J
    aget-object v6, v5, p1

    aput-wide v0, v6, v3

    .line 820
    .end local v5    # "points":[[J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 823
    :cond_1
    return-void
.end method


# virtual methods
.method protected canSelectFormat(Landroidx/media2/exoplayer/external/Format;IFJ)Z
    .locals 3
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "trackBitrate"    # I
    .param p3, "playbackSpeed"    # F
    .param p4, "effectiveBitrate"    # J

    .line 607
    int-to-float v0, p2

    mul-float v0, v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, p4

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enable()V
    .locals 2

    .line 479
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 480
    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 19
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 553
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 554
    .local v2, "nowMs":J
    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 555
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    return v4

    .line 558
    :cond_0
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 559
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 560
    const/4 v4, 0x0

    return v4

    .line 563
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 564
    .local v4, "queueSize":I
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;

    .line 565
    .local v5, "lastChunk":Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;
    iget-wide v6, v5, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v6, p1

    iget v8, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 566
    invoke-static {v6, v7, v8}, Landroidx/media2/exoplayer/external/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v6

    .line 568
    .local v6, "playoutBufferedDurationBeforeLastChunkUs":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v8

    .line 569
    .local v8, "minDurationToRetainAfterDiscardUs":J
    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    .line 570
    return v4

    .line 572
    :cond_2
    iget-object v10, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formatBitrates:[I

    invoke-direct {v0, v2, v3, v10}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J[I)I

    move-result v10

    .line 573
    .local v10, "idealSelectedIndex":I
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    .line 577
    .local v11, "idealFormat":Landroidx/media2/exoplayer/external/Format;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v4, :cond_4

    .line 578
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;

    .line 579
    .local v13, "chunk":Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;
    iget-object v14, v13, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 580
    .local v14, "format":Landroidx/media2/exoplayer/external/Format;
    move-wide v15, v2

    .end local v2    # "nowMs":J
    .local v15, "nowMs":J
    iget-wide v1, v13, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v1, v1, p1

    .line 581
    .local v1, "mediaDurationBeforeThisChunkUs":J
    iget v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 582
    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v17

    .line 583
    .local v17, "playoutDurationBeforeThisChunkUs":J
    cmp-long v3, v17, v8

    if-ltz v3, :cond_3

    iget v3, v14, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v0, v11, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-ge v3, v0, :cond_3

    iget v0, v14, Landroidx/media2/exoplayer/external/Format;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget v0, v14, Landroidx/media2/exoplayer/external/Format;->height:I

    const/16 v3, 0x2d0

    if-ge v0, v3, :cond_3

    iget v0, v14, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget v0, v14, Landroidx/media2/exoplayer/external/Format;->width:I

    const/16 v3, 0x500

    if-ge v0, v3, :cond_3

    iget v0, v14, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v3, v11, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ge v0, v3, :cond_3

    .line 588
    return v12

    .line 583
    :cond_3
    nop

    .line 577
    .end local v1    # "mediaDurationBeforeThisChunkUs":J
    .end local v13    # "chunk":Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;
    .end local v14    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v17    # "playoutDurationBeforeThisChunkUs":J
    add-int/lit8 v12, v12, 0x1

    move-wide v2, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    goto :goto_0

    .end local v15    # "nowMs":J
    .restart local v2    # "nowMs":J
    :cond_4
    move-wide v15, v2

    .line 591
    .end local v2    # "nowMs":J
    .end local v12    # "i":I
    .restart local v15    # "nowMs":J
    return v4
.end method

.method public experimental_setBandwidthAllocationCheckpoints([[J)V
    .locals 1
    .param p1, "allocationCheckpoints"    # [[J

    .line 473
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    .line 474
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->experimental_setBandwidthAllocationCheckpoints([[J)V

    .line 475
    return-void
.end method

.method public experimental_setNonAllocatableBandwidth(J)V
    .locals 1
    .param p1, "nonAllocatableBandwidth"    # J

    .line 462
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    .line 463
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->experimental_setNonAllocatableBandwidth(J)V

    .line 464
    return-void
.end method

.method public experimental_setTrackBitrateEstimator(Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;)V
    .locals 0
    .param p1, "trackBitrateEstimator"    # Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    .line 451
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    .line 452
    return-void
.end method

.method protected getMinDurationToRetainAfterDiscardUs()J
    .locals 2

    .line 629
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 537
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 542
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0
    .param p1, "playbackSpeed"    # F

    .line 484
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 485
    return-void
.end method

.method protected shouldEvaluateQueueSize(J)Z
    .locals 5
    .param p1, "nowMs"    # J

    .line 618
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .locals 13
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

    .line 494
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    move-object v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 497
    .local v1, "nowMs":J
    iget-object v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-interface {v3, v4, v6, v7, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;->getBitrates([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[I)[I

    .line 500
    iget v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez v3, :cond_0

    .line 501
    const/4 v3, 0x1

    iput v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    .line 502
    iget-object v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    invoke-direct {p0, v1, v2, v3}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J[I)I

    move-result v3

    iput v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 503
    return-void

    .line 507
    :cond_0
    iget v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 508
    .local v3, "currentSelectedIndex":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    invoke-direct {p0, v1, v2, v4}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J[I)I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 509
    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-ne v4, v3, :cond_1

    .line 510
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0, v3, v1, v2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v4

    if-nez v4, :cond_5

    .line 515
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 516
    .local v4, "currentFormat":Landroidx/media2/exoplayer/external/Format;
    iget v5, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 517
    .local v5, "selectedFormat":Landroidx/media2/exoplayer/external/Format;
    iget v8, v5, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v9, v4, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-le v8, v9, :cond_3

    .line 518
    move-wide/from16 v8, p5

    invoke-direct {p0, v8, v9}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide v10

    cmp-long v12, p3, v10

    if-gez v12, :cond_2

    .line 521
    iput v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_1

    .line 518
    :cond_2
    goto :goto_0

    .line 517
    :cond_3
    move-wide/from16 v8, p5

    .line 522
    :goto_0
    iget v10, v5, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v11, v4, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-ge v10, v11, :cond_4

    iget-wide v10, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v12, p3, v10

    if-ltz v12, :cond_4

    .line 526
    iput v3, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_1

    .line 522
    :cond_4
    goto :goto_1

    .line 513
    .end local v4    # "currentFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v5    # "selectedFormat":Landroidx/media2/exoplayer/external/Format;
    :cond_5
    move-wide/from16 v8, p5

    .line 530
    :goto_1
    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-eq v4, v3, :cond_6

    .line 531
    const/4 v4, 0x3

    iput v4, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    goto :goto_2

    .line 530
    :cond_6
    nop

    .line 533
    :goto_2
    return-void
.end method
