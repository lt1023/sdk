.class final synthetic Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;


# static fields
.field static final $instance:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$Lambda$0;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$Lambda$0;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitrates([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[I)[I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$CC;->lambda$static$0$TrackBitrateEstimator$$CC([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[I)[I

    move-result-object p1

    return-object p1
.end method
