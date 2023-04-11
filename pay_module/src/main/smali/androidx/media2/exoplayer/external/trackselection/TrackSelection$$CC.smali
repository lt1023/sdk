.class public abstract synthetic Landroidx/media2/exoplayer/external/trackselection/TrackSelection$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static onDiscontinuity$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 220
    return-void
.end method

.method public static updateSelectedTrack$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;JJJ)V
    .locals 1
    .param p0, "this"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static updateSelectedTrack$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .param p8, "mediaChunkIterators"    # [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    .line 262
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    invoke-interface/range {p0 .. p6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    .line 263
    return-void
.end method
