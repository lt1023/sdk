.class public abstract Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;
.super Landroidx/media2/exoplayer/external/BaseRenderer;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/MediaClock;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer$AudioSinkListener;,
        Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer$ReinitializationState;
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<",
            "Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;",
            "+",
            "Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;",
            "+",
            "Landroidx/media2/exoplayer/external/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation
.end field

.field private decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

.field private decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private final drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

.field private final formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

.field private inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

.field private inputFormat:Landroidx/media2/exoplayer/external/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

.field private sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;)V
    .locals 8
    .param p1, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "audioCapabilities"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 163
    const/4 v0, 0x0

    new-array v7, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Z[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    .line 169
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Z[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 6
    .param p1, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "audioCapabilities"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "playClearSamplesWithoutKeys"    # Z
    .param p6, "audioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Landroidx/media2/exoplayer/external/audio/AudioCapabilities;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;Z[",
            "Landroidx/media2/exoplayer/external/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .line 193
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    new-instance v5, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-direct {v5, p3, p6}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroidx/media2/exoplayer/external/audio/AudioSink;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroidx/media2/exoplayer/external/audio/AudioSink;)V
    .locals 3
    .param p1, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "audioSink"    # Landroidx/media2/exoplayer/external/audio/AudioSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;Z",
            "Landroidx/media2/exoplayer/external/audio/AudioSink;",
            ")V"
        }
    .end annotation

    .line 216
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/BaseRenderer;-><init>(I)V

    .line 217
    iput-object p3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    .line 218
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    .line 219
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    .line 220
    iput-object p5, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    .line 221
    new-instance v1, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer$AudioSinkListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer$AudioSinkListener;-><init>(Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer$1;)V

    invoke-interface {p5, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setListener(Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;)V

    .line 222
    new-instance v1, Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/FormatHolder;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    .line 223
    invoke-static {}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 224
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 225
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 226
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 7
    .param p1, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "audioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 143
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Z[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    .line 150
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;)Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;

    .line 73
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private drainOutputBuffer()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;,
            Landroidx/media2/exoplayer/external/audio/AudioDecoderException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeueOutputBuffer()Landroidx/media2/exoplayer/external/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    .line 372
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_0

    .line 373
    return v1

    .line 375
    :cond_0
    iget v0, v0, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_1

    .line 376
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v2, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    iget v3, v3, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 377
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleDiscontinuity()V

    goto :goto_0

    .line 375
    :cond_1
    goto :goto_0

    .line 370
    :cond_2
    nop

    .line 381
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 382
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 384
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 385
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 387
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_1

    .line 389
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->release()V

    .line 390
    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    .line 391
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    .line 393
    :goto_1
    return v1

    .line 396
    :cond_4
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_5

    .line 397
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getOutputFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 398
    .local v0, "outputFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v7, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->encoderDelay:I

    iget v11, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->encoderPadding:I

    invoke-interface/range {v4 .. v11}, Landroidx/media2/exoplayer/external/audio/AudioSink;->configure(IIII[III)V

    .line 400
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_2

    .line 396
    .end local v0    # "outputFormat":Landroidx/media2/exoplayer/external/Format;
    :cond_5
    nop

    .line 403
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 405
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->release()V

    .line 406
    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    .line 407
    return v3

    .line 410
    :cond_6
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioDecoderException;,
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 420
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    if-nez v2, :cond_2

    .line 421
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->dequeueInputBuffer()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 422
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 423
    return v1

    .line 422
    :cond_1
    goto :goto_0

    .line 420
    :cond_2
    nop

    .line 427
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 428
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 429
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    .line 430
    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 431
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 432
    return v1

    .line 436
    :cond_3
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_4

    .line 438
    const/4 v0, -0x4

    goto :goto_1

    .line 440
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 443
    .local v0, "result":I
    :goto_1
    const/4 v3, -0x3

    if-ne v0, v3, :cond_5

    .line 444
    return v1

    .line 446
    :cond_5
    const/4 v3, -0x5

    if-ne v0, v3, :cond_6

    .line 447
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 448
    return v4

    .line 450
    :cond_6
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 451
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 452
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    .line 453
    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 454
    return v1

    .line 456
    :cond_7
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v3

    .line 457
    .local v3, "bufferEncrypted":Z
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->shouldWaitForKeys(Z)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 458
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v5, :cond_8

    .line 459
    return v1

    .line 461
    :cond_8
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->flip()V

    .line 462
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    .line 463
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->queueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    .line 464
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 465
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v5, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v5, v4

    iput v5, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->inputBufferCount:I

    .line 466
    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 467
    return v4

    .line 414
    .end local v0    # "result":I
    .end local v3    # "bufferEncrypted":Z
    :cond_9
    :goto_2
    nop

    .line 417
    return v1
.end method

.method private flushDecoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 492
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 493
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 494
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_1

    .line 496
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 497
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;->release()V

    .line 499
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    goto :goto_0

    .line 497
    :cond_1
    nop

    .line 501
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->flush()V

    .line 502
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 504
    :goto_1
    return-void
.end method

.method private maybeInitDecoder()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    if-eqz v0, :cond_0

    .line 607
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->setDecoderDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "mediaCrypto":Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v1, :cond_3

    .line 614
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    move-result-object v0

    .line 615
    if-nez v0, :cond_2

    .line 616
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 617
    .local v1, "drmError":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 622
    :cond_1
    return-void

    .line 615
    .end local v1    # "drmError":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    :cond_2
    goto :goto_0

    .line 613
    :cond_3
    nop

    .line 628
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 629
    .local v1, "codecInitializingTimestamp":J
    const-string v3, "createAudioDecoder"

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 630
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v3, v0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->createDecoder(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;)Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    .line 631
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 633
    .local v3, "codecInitializedTimestamp":J
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->getName()Ljava/lang/String;

    move-result-object v6

    sub-long v9, v3, v1

    move-wide v7, v3

    invoke-virtual/range {v5 .. v10}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 635
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v6, v5, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v1    # "codecInitializingTimestamp":J
    .end local v3    # "codecInitializedTimestamp":J
    nop

    .line 639
    return-void

    .line 636
    :catch_0
    move-exception v1

    .line 637
    .local v1, "e":Landroidx/media2/exoplayer/external/audio/AudioDecoderException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2
.end method

.method private onInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 6
    .param p1, "newFormat"    # Landroidx/media2/exoplayer/external/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 674
    .local v0, "oldFormat":Landroidx/media2/exoplayer/external/Format;
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 676
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 677
    :cond_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 676
    :goto_0
    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 678
    .local v1, "drmInitDataChanged":Z
    if-eqz v1, :cond_5

    .line 679
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v4, :cond_4

    .line 680
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    if-eqz v2, :cond_3

    .line 684
    nop

    .line 685
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-interface {v2, v4, v5}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object v2

    .line 686
    .local v2, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v2, v4, :cond_2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 689
    :cond_2
    :goto_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-interface {v4, v2}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 691
    :goto_2
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 692
    .end local v2    # "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    goto :goto_3

    .line 681
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Media requires a DrmSessionManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v3

    .line 681
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 693
    :cond_4
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    goto :goto_3

    .line 678
    :cond_5
    nop

    .line 697
    :goto_3
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    if-eqz v2, :cond_6

    .line 699
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_4

    .line 702
    :cond_6
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 703
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 704
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 707
    :goto_4
    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->encoderDelay:I

    .line 708
    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->encoderPadding:I

    .line 710
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 711
    return-void
.end method

.method private onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .locals 5
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 714
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 719
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    goto :goto_0

    .line 718
    :cond_0
    nop

    .line 721
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    goto :goto_1

    .line 714
    :cond_1
    nop

    .line 723
    :goto_1
    return-void
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 484
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    nop

    .line 488
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method private releaseDecoder()V
    .locals 3

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 643
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    .line 644
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 645
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 646
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;->release()V

    .line 648
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    .line 649
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v2, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderReleaseCount:I

    goto :goto_0

    .line 646
    :cond_0
    nop

    .line 651
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->setDecoderDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 652
    return-void
.end method

.method private releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media2/exoplayer/external/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 667
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    goto :goto_0

    .line 667
    :cond_0
    nop

    .line 670
    :goto_0
    return-void
.end method

.method private setDecoderDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media2/exoplayer/external/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 662
    .local v0, "previous":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 663
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 664
    return-void
.end method

.method private setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media2/exoplayer/external/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 655
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 656
    .local v0, "previous":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 657
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 658
    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 4
    .param p1, "bufferEncrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getState()I

    move-result v0

    .line 475
    .local v0, "drmSessionState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 478
    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 476
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 471
    .end local v0    # "drmSessionState":I
    :cond_3
    :goto_0
    nop

    .line 472
    return v1
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 726
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 727
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 728
    nop

    .line 729
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    .line 730
    move-wide v2, v0

    goto :goto_0

    .line 731
    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 732
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    goto :goto_1

    .line 727
    :cond_1
    nop

    .line 734
    :goto_1
    return-void
.end method


# virtual methods
.method protected abstract createDecoder(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;)Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ")",
            "Landroidx/media2/exoplayer/external/decoder/SimpleDecoder<",
            "Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;",
            "+",
            "Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;",
            "+",
            "Landroidx/media2/exoplayer/external/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioDecoderException;
        }
    .end annotation
.end method

.method public getMediaClock()Landroidx/media2/exoplayer/external/util/MediaClock;
    .locals 0

    .line 230
    return-object p0
.end method

.method protected getOutputFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 12

    .line 362
    const-string v1, "audio/raw"

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1

    .line 532
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 519
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 520
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->updateCurrentPosition()V

    goto :goto_0

    .line 519
    :cond_0
    nop

    .line 522
    :goto_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 587
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 600
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 592
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 593
    .local v0, "audioAttributes":Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    .line 594
    goto :goto_0

    .line 589
    .end local v0    # "audioAttributes":Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setVolume(F)V

    .line 590
    goto :goto_0

    .line 596
    :cond_0
    move-object v0, p2

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 597
    .local v0, "auxEffectInfo":Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V

    .line 598
    nop

    .line 603
    .end local v0    # "auxEffectInfo":Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 513
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-nez v0, :cond_2

    .line 514
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputBuffer:Landroidx/media2/exoplayer/external/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_2

    .line 513
    :cond_2
    nop

    .line 514
    :goto_1
    const/4 v0, 0x0

    goto :goto_3

    .line 513
    :cond_3
    nop

    .line 514
    :goto_2
    const/4 v0, 0x1

    .line 513
    :goto_3
    return v0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .line 324
    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .locals 0

    .line 331
    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 339
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 574
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 575
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 577
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 578
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 579
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 582
    nop

    .line 583
    return-void

    .line 581
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 537
    new-instance v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 538
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->enabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 539
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getConfiguration()Landroidx/media2/exoplayer/external/RendererConfiguration;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    .line 540
    .local v0, "tunnelingAudioSessionId":I
    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->enableTunnelingV21(I)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->disableTunneling()V

    .line 545
    :goto_0
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->flush()V

    .line 550
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 552
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 554
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 555
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->flushDecoder()V

    goto :goto_0

    .line 555
    :cond_0
    nop

    .line 558
    :goto_0
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 562
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->play()V

    .line 563
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 567
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->updateCurrentPosition()V

    .line 568
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->pause()V

    .line 569
    return-void
.end method

.method public render(JJ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 268
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    nop

    .line 274
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 278
    .end local v0    # "e":Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 281
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 282
    .local v0, "result":I
    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    .line 283
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 284
    :cond_1
    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    .line 286
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 287
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 288
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    .line 289
    return-void

    .line 292
    :cond_2
    return-void

    .line 278
    .end local v0    # "result":I
    :cond_3
    nop

    .line 297
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoder:Landroidx/media2/exoplayer/external/decoder/SimpleDecoder;

    if-eqz v0, :cond_6

    .line 302
    :try_start_1
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 303
    :goto_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->drainOutputBuffer()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 304
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->feedInputBuffer()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 305
    :cond_5
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/audio/AudioDecoderException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    nop

    .line 310
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_4

    .line 306
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    nop

    .line 312
    :goto_4
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 527
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public final supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .locals 4
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 235
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 236
    return v1

    .line 238
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->supportsFormatInternal(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    .line 239
    .local v0, "formatSupport":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    .line 240
    return v0

    .line 242
    :cond_1
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const/16 v1, 0x20

    nop

    .line 243
    .local v1, "tunnelingSupport":I
    :cond_2
    or-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2
.end method

.method protected abstract supportsFormatInternal(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation
.end method

.method protected final supportsOutput(II)Z
    .locals 1
    .param p1, "channelCount"    # I
    .param p2, "encoding"    # I

    .line 263
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->supportsOutput(II)Z

    move-result v0

    return v0
.end method
