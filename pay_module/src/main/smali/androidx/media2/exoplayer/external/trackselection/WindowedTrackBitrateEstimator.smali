.class public final Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;
.super Ljava/lang/Object;
.source "WindowedTrackBitrateEstimator.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final maxFutureDurationUs:J

.field private final maxPastDurationUs:J

.field private final useFormatBitrateAsLowerBound:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 2
    .param p1, "maxPastDurationMs"    # J
    .param p3, "maxFutureDurationMs"    # J
    .param p5, "useFormatBitrateAsLowerBound"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->maxPastDurationUs:J

    .line 52
    invoke-static {p3, p4}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->maxFutureDurationUs:J

    .line 53
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->useFormatBitrateAsLowerBound:Z

    .line 54
    return-void
.end method


# virtual methods
.method public getBitrates([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[I)[I
    .locals 10
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p3, "iterators"    # [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .param p4, "bitrates"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            "[I)[I"
        }
    .end annotation

    .line 62
    .local p2, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->maxFutureDurationUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->maxPastDurationUs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p1, p4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getFormatBitrates([Landroidx/media2/exoplayer/external/Format;[I)[I

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    :goto_0
    nop

    .line 63
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->maxPastDurationUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->maxFutureDurationUs:J

    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/trackselection/WindowedTrackBitrateEstimator;->useFormatBitrateAsLowerBound:Z

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->getBitratesUsingPastAndFutureInfo([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;J[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;JZ[I)[I

    move-result-object v0

    return-object v0
.end method
