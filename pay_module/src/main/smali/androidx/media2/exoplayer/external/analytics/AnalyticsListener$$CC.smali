.class public abstract synthetic Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static onAudioAttributesChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 395
    return-void
.end method

.method public static onAudioSessionId$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSessionId"    # I

    .line 387
    return-void
.end method

.method public static onAudioUnderrun$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "bufferSize"    # I
    .param p3, "bufferSizeMs"    # J
    .param p5, "elapsedSinceLastFeedMs"    # J

    .line 416
    return-void
.end method

.method public static onBandwidthEstimate$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 316
    return-void
.end method

.method public static onDecoderDisabled$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "decoderCounters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 379
    return-void
.end method

.method public static onDecoderEnabled$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "decoderCounters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 346
    return-void
.end method

.method public static onDecoderInitialized$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "decoderName"    # Ljava/lang/String;
    .param p4, "initializationDurationMs"    # J

    .line 358
    return-void
.end method

.method public static onDecoderInputFormatChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/Format;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackType"    # I
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 368
    return-void
.end method

.method public static onDownstreamFormatChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 275
    return-void
.end method

.method public static onDrmKeysLoaded$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 471
    return-void
.end method

.method public static onDrmKeysRemoved$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 494
    return-void
.end method

.method public static onDrmKeysRestored$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 487
    return-void
.end method

.method public static onDrmSessionAcquired$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 464
    return-void
.end method

.method public static onDrmSessionManagerError$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 480
    return-void
.end method

.method public static onDrmSessionReleased$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 501
    return-void
.end method

.method public static onDroppedVideoFrames$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "droppedFrames"    # I
    .param p3, "elapsedMs"    # J

    .line 427
    return-void
.end method

.method public static onLoadCanceled$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 250
    return-void
.end method

.method public static onLoadCompleted$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 240
    return-void
.end method

.method public static onLoadError$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 267
    return-void
.end method

.method public static onLoadStarted$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 230
    return-void
.end method

.method public static onLoadingChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z

    .line 202
    return-void
.end method

.method public static onMediaPeriodCreated$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 291
    return-void
.end method

.method public static onMediaPeriodReleased$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 298
    return-void
.end method

.method public static onMetadata$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 335
    return-void
.end method

.method public static onPlaybackParametersChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 178
    return-void
.end method

.method public static onPlayerError$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 210
    return-void
.end method

.method public static onPlayerStateChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "playbackState"    # I

    .line 139
    return-void
.end method

.method public static onPositionDiscontinuity$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 155
    return-void
.end method

.method public static onReadingStarted$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 305
    return-void
.end method

.method public static onRenderedFirstFrame$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 457
    return-void
.end method

.method public static onRepeatModeChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "repeatMode"    # I

    .line 186
    return-void
.end method

.method public static onSeekProcessed$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 169
    return-void
.end method

.method public static onSeekStarted$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;

    .line 162
    return-void
.end method

.method public static onShuffleModeChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "shuffleModeEnabled"    # Z

    .line 194
    return-void
.end method

.method public static onSurfaceSizeChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;II)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 327
    return-void
.end method

.method public static onTimelineChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 147
    return-void
.end method

.method public static onTracksChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "trackSelections"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 220
    return-void
.end method

.method public static onUpstreamDiscarded$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 284
    return-void
.end method

.method public static onVideoSizeChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "unappliedRotationDegrees"    # I
    .param p5, "pixelWidthHeightRatio"    # F

    .line 447
    return-void
.end method

.method public static onVolumeChanged$$dflt$$(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;F)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
    .param p1, "eventTime"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # F

    .line 403
    return-void
.end method
