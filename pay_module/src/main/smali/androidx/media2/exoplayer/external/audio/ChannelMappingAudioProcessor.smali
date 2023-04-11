.class final Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "ChannelMappingAudioProcessor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private active:Z

.field private outputChannels:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingOutputChannels:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 8
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 57
    .local v0, "outputChannelsChanged":Z
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 59
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 60
    .local v2, "outputChannels":[I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 61
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    .line 62
    return v0

    .line 64
    :cond_0
    const/4 v4, 0x2

    if-ne p3, v4, :cond_6

    .line 67
    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->setInputFormat(III)Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    return v3

    .line 67
    :cond_1
    nop

    .line 71
    array-length v4, v2

    if-eq p2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    .line 72
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 73
    aget v5, v2, v4

    .line 74
    .local v5, "channelIndex":I
    if-ge v5, p2, :cond_4

    .line 77
    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    if-eq v5, v4, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    or-int/2addr v6, v7

    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    .line 72
    .end local v5    # "channelIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 75
    .restart local v5    # "channelIndex":I
    :cond_4
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v1

    .line 72
    .end local v5    # "channelIndex":I
    :cond_5
    nop

    .line 79
    .end local v4    # "i":I
    return v1

    .line 65
    :cond_6
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v1

    return-void
.end method

.method public getOutputChannelCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->channelCount:I

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    return v0
.end method

.method protected onReset()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 113
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->active:Z

    .line 115
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 95
    .local v0, "outputChannels":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 96
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 97
    .local v2, "limit":I
    sub-int v3, v2, v1

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    .line 98
    .local v3, "frameCount":I
    array-length v4, v0

    mul-int v4, v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 99
    .local v4, "outputSize":I
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 100
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 101
    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v0, v7

    .line 102
    .local v8, "channelIndex":I
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v1

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 101
    .end local v8    # "channelIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    :cond_0
    iget v6, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 108
    return-void
.end method

.method public setChannelMap([I)V
    .locals 0
    .param p1, "outputChannels"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    .line 51
    return-void
.end method
