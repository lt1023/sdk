.class final Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;
.super Landroidx/media2/exoplayer/external/Player$DefaultEventListener;
.source "ExoPlayerWrapper.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
.implements Landroidx/media2/exoplayer/external/audio/AudioListener;
.implements Landroidx/media2/player/exoplayer/TextRenderer$Output;
.implements Landroidx/media2/exoplayer/external/metadata/MetadataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ExoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/ExoPlayerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    .line 694
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/Player$DefaultEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .locals 0
    .param p1, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 770
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .line 766
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleAudioSessionId(I)V

    .line 767
    return-void
.end method

.method public onCcData([BJ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "timeUs"    # J

    .line 779
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleSubtitleData([BJ)V

    .line 780
    return-void
.end method

.method public onChannelAvailable(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "channel"    # I

    .line 784
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleTextRendererChannelAvailable(II)V

    .line 785
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 757
    return-void
.end method

.method public onMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 791
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    .line 792
    return-void
.end method

.method public onPlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 1
    .param p1, "error"    # Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 723
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handlePlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    .line 724
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .line 702
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handlePlayerStateChanged(ZI)V

    .line 703
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 718
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handlePositionDiscontinuity(I)V

    .line 719
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 746
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleRenderedFirstFrame()V

    .line 747
    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    .line 713
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleSeekProcessed()V

    .line 714
    return-void
.end method

.method public onTracksChanged(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .locals 1
    .param p1, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "trackSelections"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 708
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handlePlayerTracksChanged()V

    .line 709
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 754
    return-void
.end method

.method public onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 760
    return-void
.end method

.method public onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 0
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 750
    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 4
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 739
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleVideoSizeChanged(IIF)V

    goto :goto_0

    .line 739
    :cond_0
    nop

    .line 742
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .line 734
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v0, p1, p2, p4}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->handleVideoSizeChanged(IIF)V

    .line 735
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 773
    return-void
.end method
