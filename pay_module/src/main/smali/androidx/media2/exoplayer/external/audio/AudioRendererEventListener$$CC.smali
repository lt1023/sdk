.class public abstract synthetic Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static onAudioDecoderInitialized$$dflt$$(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 63
    return-void
.end method

.method public static onAudioDisabled$$dflt$$(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 89
    return-void
.end method

.method public static onAudioEnabled$$dflt$$(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 45
    return-void
.end method

.method public static onAudioInputFormatChanged$$dflt$$(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/Format;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 70
    return-void
.end method

.method public static onAudioSessionId$$dflt$$(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;I)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .param p1, "audioSessionId"    # I

    .line 52
    return-void
.end method

.method public static onAudioSinkUnderrun$$dflt$$(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;IJJ)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 82
    return-void
.end method
