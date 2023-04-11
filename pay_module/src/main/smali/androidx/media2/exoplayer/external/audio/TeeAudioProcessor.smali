.class public final Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "TeeAudioProcessor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink;,
        Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;
    }
.end annotation


# instance fields
.field private final audioBufferSink:Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;)V
    .locals 1
    .param p1, "audioBufferSink"    # Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;

    .line 68
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    .line 69
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->audioBufferSink:Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;

    .line 70
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 1
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->setInputFormat(III)Z

    move-result v0

    return v0
.end method

.method protected onFlush()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->audioBufferSink:Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->sampleRateHz:I

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->channelCount:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->encoding:I

    invoke-interface {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;->flush(III)V

    goto :goto_0

    .line 89
    :cond_0
    nop

    .line 92
    :goto_0
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 80
    .local v0, "remaining":I
    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->audioBufferSink:Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink;->handleBuffer(Ljava/nio/ByteBuffer;)V

    .line 84
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/TeeAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 85
    return-void
.end method
