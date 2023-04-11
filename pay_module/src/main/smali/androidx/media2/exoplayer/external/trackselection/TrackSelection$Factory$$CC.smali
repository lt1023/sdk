.class public abstract synthetic Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static varargs createTrackSelection$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 1
    .param p0, "this"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p3, "tracks"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static createTrackSelections$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 1
    .param p0, "this"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;
    .param p1, "definitions"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .param p2, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 108
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory$$Lambda$0;

    invoke-direct {v0, p0, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;->createTrackSelectionsForDefinitions([Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createTrackSelections$0$TrackSelection$Factory$$CC(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 2
    .param p0, "this"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p2, "definition"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    .line 110
    iget-object v0, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    invoke-interface {p0, v0, p1, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;->createTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroup;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;[I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v0

    return-object v0
.end method
