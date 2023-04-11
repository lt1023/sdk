.class public Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private blockFixedTrackSelectionBandwidth:Z

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I

.field private final minTimeBetweenBufferReevaluationMs:J

.field private trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 62
    sget-object v8, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIFFJLandroidx/media2/exoplayer/external/util/Clock;)V

    .line 70
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "bandwidthFraction"    # F

    .line 110
    sget-object v8, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    const/high16 v5, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIFFJLandroidx/media2/exoplayer/external/util/Clock;)V

    .line 118
    return-void
.end method

.method public constructor <init>(IIIFFJLandroidx/media2/exoplayer/external/util/Clock;)V
    .locals 10
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "bandwidthFraction"    # F
    .param p5, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p6, "minTimeBetweenBufferReevaluationMs"    # J
    .param p8, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 178
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIFFJLandroidx/media2/exoplayer/external/util/Clock;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V
    .locals 10
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    sget-object v9, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    const/16 v2, 0x2710

    const/16 v3, 0x61a8

    const/16 v4, 0x61a8

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIFFJLandroidx/media2/exoplayer/external/util/Clock;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIF)V
    .locals 10
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p2, "minDurationForQualityIncreaseMs"    # I
    .param p3, "maxDurationForQualityDecreaseMs"    # I
    .param p4, "minDurationToRetainAfterDiscardMs"    # I
    .param p5, "bandwidthFraction"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    sget-object v9, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIFFJLandroidx/media2/exoplayer/external/util/Clock;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;IIIFFJLandroidx/media2/exoplayer/external/util/Clock;)V
    .locals 1
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "minDurationForQualityIncreaseMs"    # I
    .param p3, "maxDurationForQualityDecreaseMs"    # I
    .param p4, "minDurationToRetainAfterDiscardMs"    # I
    .param p5, "bandwidthFraction"    # F
    .param p6, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p7, "minTimeBetweenBufferReevaluationMs"    # J
    .param p9, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 204
    iput p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 205
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 206
    iput p4, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 207
    iput p5, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 208
    iput p6, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 210
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    .line 211
    iput-object p9, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 212
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    .line 213
    return-void
.end method


# virtual methods
.method protected createAdaptiveTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
    .locals 18
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p3, "tracks"    # [I

    .line 301
    move-object/from16 v0, p0

    new-instance v16, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;

    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    move-object/from16 v15, p2

    invoke-direct {v4, v15, v1}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;-><init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;F)V

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v5, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v7, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v9, v1

    iget v11, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    iget-object v14, v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$1;)V

    return-object v16
.end method

.method public varargs createTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory$$CC;->createTrackSelection$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object p1

    return-object p1
.end method

.method public final createTrackSelections([Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 11
    .param p1, "definitions"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .param p2, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 239
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    if-eqz v0, :cond_0

    .line 240
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    goto :goto_0

    .line 239
    :cond_0
    nop

    .line 242
    :goto_0
    array-length v0, p1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 243
    .local v0, "selections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, "adaptiveSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;>;"
    const/4 v2, 0x0

    .line 245
    .local v2, "totalFixedBandwidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    .line 246
    aget-object v4, p1, v3

    .line 247
    .local v4, "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    if-nez v4, :cond_1

    .line 248
    goto :goto_2

    .line 250
    :cond_1
    iget-object v6, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    array-length v6, v6

    if-le v6, v5, :cond_2

    .line 251
    iget-object v5, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v6, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    .line 252
    invoke-virtual {p0, v5, p2, v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->createAdaptiveTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;

    move-result-object v5

    .line 253
    .local v5, "adaptiveSelection":Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
    iget-object v6, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->experimental_setTrackBitrateEstimator(Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;)V

    .line 254
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    aput-object v5, v0, v3

    .line 256
    .end local v5    # "adaptiveSelection":Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
    goto :goto_2

    .line 257
    :cond_2
    new-instance v5, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;

    iget-object v6, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v7, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget v9, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->reason:I

    iget-object v10, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->data:Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v9, v10}, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V

    aput-object v5, v0, v3

    .line 260
    iget-object v5, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v6, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iget v5, v5, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 261
    .local v5, "trackBitrate":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 262
    add-int/2addr v2, v5

    goto :goto_2

    .line 261
    :cond_3
    nop

    .line 245
    .end local v4    # "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .end local v5    # "trackBitrate":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v3    # "i":I
    :cond_4
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->blockFixedTrackSelectionBandwidth:Z

    if-eqz v3, :cond_6

    .line 267
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 268
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->experimental_setNonAllocatableBandwidth(J)V

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    goto :goto_4

    .line 266
    .end local v3    # "i":I
    :cond_6
    nop

    .line 271
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_a

    .line 272
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[J

    .line 273
    .local v3, "adaptiveTrackBitrates":[[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 274
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;

    .line 275
    .local v6, "adaptiveSelection":Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length()I

    move-result v7

    new-array v7, v7, [J

    aput-object v7, v3, v4

    .line 276
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 277
    aget-object v8, v3, v4

    .line 278
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length()I

    move-result v9

    sub-int/2addr v9, v7

    sub-int/2addr v9, v5

    invoke-virtual {v6, v9}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    iget v9, v9, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    int-to-long v9, v9

    aput-wide v9, v8, v7

    .line 276
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 273
    .end local v6    # "adaptiveSelection":Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
    .end local v7    # "j":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 281
    .end local v4    # "i":I
    :cond_8
    invoke-static {v3}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->access$000([[J)[[[J

    move-result-object v4

    .line 282
    .local v4, "bandwidthCheckpoints":[[[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 283
    nop

    .line 284
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;

    aget-object v7, v4, v5

    .line 285
    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->experimental_setBandwidthAllocationCheckpoints([[J)V

    .line 282
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    goto :goto_8

    .line 271
    .end local v3    # "adaptiveTrackBitrates":[[J
    .end local v4    # "bandwidthCheckpoints":[[[J
    .end local v5    # "i":I
    :cond_a
    nop

    .line 288
    :goto_8
    return-object v0
.end method

.method public final experimental_enableBlockFixedTrackSelectionBandwidth()V
    .locals 1

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->blockFixedTrackSelectionBandwidth:Z

    .line 234
    return-void
.end method

.method public final experimental_setTrackBitrateEstimator(Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;)V
    .locals 0
    .param p1, "trackBitrateEstimator"    # Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    .line 224
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    .line 225
    return-void
.end method
