.class public abstract synthetic Landroidx/media2/exoplayer/external/Player$EventListener$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static onLoadingChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Z)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "isLoading"    # Z

    .line 363
    return-void
.end method

.method public static onPlaybackParametersChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 420
    return-void
.end method

.method public static onPlayerError$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "error"    # Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 395
    return-void
.end method

.method public static onPlayerStateChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;ZI)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 372
    return-void
.end method

.method public static onPositionDiscontinuity$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "reason"    # I

    .line 410
    return-void
.end method

.method public static onRepeatModeChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "repeatMode"    # I

    .line 379
    return-void
.end method

.method public static onSeekProcessed$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 427
    return-void
.end method

.method public static onShuffleModeEnabledChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Z)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "shuffleModeEnabled"    # Z

    .line 386
    return-void
.end method

.method public static onTimelineChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
    .param p3, "reason"    # I

    .line 346
    return-void
.end method

.method public static onTracksChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/Player$EventListener;
    .param p1, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "trackSelections"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 356
    return-void
.end method
