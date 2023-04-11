.class public final Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory;
.super Ljava/lang/Object;
.source "RandomTrackSelection.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "seed"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    .line 56
    return-void
.end method


# virtual methods
.method public varargs createTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory$$CC;->createTrackSelection$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object p1

    return-object p1
.end method

.method public createTrackSelections([Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 1
    .param p1, "definitions"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .param p2, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 61
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory$$Lambda$0;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory;)V

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->createTrackSelectionsForDefinitions([Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$createTrackSelections$0$RandomTrackSelection$Factory(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 4
    .param p1, "definition"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILjava/util/Random;)V

    return-object v0
.end method
