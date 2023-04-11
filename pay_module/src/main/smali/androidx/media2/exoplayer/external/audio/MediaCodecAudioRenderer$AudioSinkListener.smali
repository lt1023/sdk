.class final Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;)V
    .locals 0

    .line 857
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$1;

    .line 857
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .line 861
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->access$100(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;)Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 862
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V

    .line 863
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .line 867
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 869
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->access$202(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;Z)Z

    .line 870
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 874
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->access$100(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;)Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 875
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    .line 876
    return-void
.end method
