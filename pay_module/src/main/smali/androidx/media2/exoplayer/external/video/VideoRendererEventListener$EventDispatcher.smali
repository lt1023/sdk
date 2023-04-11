.class public final Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 130
    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 131
    return-void
.end method


# virtual methods
.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v8, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 143
    :cond_0
    nop

    .line 149
    :goto_0
    return-void
.end method

.method public disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 188
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->ensureUpdated()V

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$6;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$6;-><init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 189
    :cond_0
    nop

    .line 196
    :goto_0
    return-void
.end method

.method public droppedFrames(IJ)V
    .locals 2
    .param p1, "droppedFrameCount"    # I
    .param p2, "elapsedMs"    # J

    .line 160
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$3;-><init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 160
    :cond_0
    nop

    .line 163
    :goto_0
    return-void
.end method

.method public enabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "decoderCounters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 135
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 135
    :cond_0
    nop

    .line 138
    :goto_0
    return-void
.end method

.method public inputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$2;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$2;-><init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 153
    :cond_0
    nop

    .line 156
    :goto_0
    return-void
.end method

.method final synthetic lambda$decoderInitialized$1$VideoRendererEventListener$EventDispatcher(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic lambda$disabled$6$VideoRendererEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 192
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->ensureUpdated()V

    .line 193
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 194
    return-void
.end method

.method final synthetic lambda$droppedFrames$3$VideoRendererEventListener$EventDispatcher(IJ)V
    .locals 1
    .param p1, "droppedFrameCount"    # I
    .param p2, "elapsedMs"    # J

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    return-void
.end method

.method final synthetic lambda$enabled$0$VideoRendererEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "decoderCounters"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 136
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    return-void
.end method

.method final synthetic lambda$inputFormatChanged$2$VideoRendererEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method

.method final synthetic lambda$renderedFirstFrame$5$VideoRendererEventListener$EventDispatcher(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    return-void
.end method

.method final synthetic lambda$videoSizeChanged$4$VideoRendererEventListener$EventDispatcher(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .line 174
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    return-void
.end method

.method public renderedFirstFrame(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$5;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$5;-><init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 181
    :cond_0
    nop

    .line 184
    :goto_0
    return-void
.end method

.method public videoSizeChanged(IIIF)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .line 171
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v7, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher$$Lambda$4;-><init>(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 171
    :cond_0
    nop

    .line 177
    :goto_0
    return-void
.end method
