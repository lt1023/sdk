.class final Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultBandwidthProvider"
.end annotation


# instance fields
.field private allocationCheckpoints:[[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bandwidthFraction:F

.field private final bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

.field private nonAllocatableBandwidth:J


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;F)V
    .locals 0
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p2, "bandwidthFraction"    # F

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 682
    iput p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->bandwidthFraction:F

    .line 683
    return-void
.end method


# virtual methods
.method experimental_setBandwidthAllocationCheckpoints([[J)V
    .locals 2
    .param p1, "allocationCheckpoints"    # [[J

    .line 710
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 711
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->allocationCheckpoints:[[J

    .line 712
    return-void
.end method

.method experimental_setNonAllocatableBandwidth(J)V
    .locals 0
    .param p1, "nonAllocatableBandwidth"    # J

    .line 705
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->nonAllocatableBandwidth:J

    .line 706
    return-void
.end method

.method public getAllocatedBandwidth()J
    .locals 14

    .line 687
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->bandwidthFraction:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 688
    .local v0, "totalBandwidth":J
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->nonAllocatableBandwidth:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 689
    .local v2, "allocatableBandwidth":J
    iget-object v4, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->allocationCheckpoints:[[J

    if-nez v4, :cond_0

    .line 690
    return-wide v2

    .line 692
    :cond_0
    const/4 v4, 0x1

    .line 693
    .local v4, "nextIndex":I
    :goto_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->allocationCheckpoints:[[J

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    aget-wide v9, v5, v8

    cmp-long v5, v9, v2

    if-gez v5, :cond_1

    .line 695
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 693
    :cond_1
    nop

    .line 697
    iget-object v5, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->allocationCheckpoints:[[J

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v5, v6

    .line 698
    .local v6, "previous":[J
    aget-object v5, v5, v4

    .line 699
    .local v5, "next":[J
    aget-wide v9, v6, v8

    sub-long v9, v2, v9

    long-to-float v9, v9

    aget-wide v10, v5, v8

    aget-wide v12, v6, v8

    sub-long/2addr v10, v12

    long-to-float v8, v10

    div-float/2addr v9, v8

    .line 701
    .local v9, "fractionBetweenCheckpoints":F
    aget-wide v10, v6, v7

    aget-wide v12, v5, v7

    aget-wide v7, v6, v7

    sub-long/2addr v12, v7

    long-to-float v7, v12

    mul-float v7, v7, v9

    float-to-long v7, v7

    add-long/2addr v10, v7

    return-wide v10
.end method
