.class public abstract synthetic Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static onDroppedFrames$$dflt$$(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;IJ)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 76
    return-void
.end method

.method public static onRenderedFirstFrame$$dflt$$(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroid/view/Surface;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p1, "surface"    # Landroid/view/Surface;

    .line 105
    return-void
.end method

.method public static onVideoDecoderInitialized$$dflt$$(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 57
    return-void
.end method

.method public static onVideoDisabled$$dflt$$(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 112
    return-void
.end method

.method public static onVideoEnabled$$dflt$$(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 46
    return-void
.end method

.method public static onVideoInputFormatChanged$$dflt$$(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroidx/media2/exoplayer/external/Format;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 64
    return-void
.end method

.method public static onVideoSizeChanged$$dflt$$(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;IIIF)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .line 96
    return-void
.end method
