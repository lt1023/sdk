.class public final Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initialBitrateEstimates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resetOnNetworkTypeChange:Z

.field private slidingWindowMaxWeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    .line 106
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    .line 107
    const/16 v0, 0x7d0

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    .line 108
    sget-object v0, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 109
    return-void
.end method

.method private static getCountryGroupIndices(Ljava/lang/String;)[I
    .locals 2
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 218
    sget-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 220
    .local v0, "groupIndices":[I
    if-nez v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private static getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 8
    .param p0, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-static {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->getCountryGroupIndices(Ljava/lang/String;)[I

    move-result-object v0

    .line 205
    .local v0, "groupIndices":[I
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 206
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    const-wide/32 v2, 0xf4240

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 207
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    aget v4, v0, v3

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 208
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

    const/4 v5, 0x1

    aget v5, v0, v5

    aget-wide v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 209
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

    aget v4, v0, v4

    aget-wide v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 210
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

    aget v4, v0, v5

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 212
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    aget v3, v0, v3

    aget-wide v3, v2, v3

    .line 213
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 212
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 214
    return-object v1
.end method


# virtual methods
.method public build()Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    .locals 8

    .line 195
    new-instance v7, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    iget v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/Clock;ZLandroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$1;)V

    return-object v7
.end method

.method public experimental_resetOnNetworkTypeChange(Z)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
    .locals 0
    .param p1, "resetOnNetworkTypeChange"    # Z

    .line 185
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    .line 186
    return-object p0
.end method

.method public setClock(Landroidx/media2/exoplayer/external/util/Clock;)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
    .locals 0
    .param p1, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 172
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 173
    return-object p0
.end method

.method public setInitialBitrateEstimate(IJ)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "initialBitrateEstimate"    # J

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    return-object p0
.end method

.method public setInitialBitrateEstimate(J)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
    .locals 3
    .param p1, "initialBitrateEstimate"    # J

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public setInitialBitrateEstimate(Ljava/lang/String;)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 159
    nop

    .line 160
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    .line 161
    return-object p0
.end method

.method public setSlidingWindowMaxWeight(I)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
    .locals 0
    .param p1, "slidingWindowMaxWeight"    # I

    .line 118
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    .line 119
    return-object p0
.end method
