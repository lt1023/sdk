.class final Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "ResamplingAudioProcessor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 1
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    .line 37
    :cond_1
    :goto_0
    nop

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->setInputFormat(III)Z

    move-result v0

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    .line 51
    const/4 v0, 0x2

    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 46
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 58
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 59
    .local v1, "limit":I
    sub-int v2, v1, v0

    .line 61
    .local v2, "size":I
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x3

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v4, :cond_0

    .line 69
    div-int/lit8 v3, v2, 0x2

    .line 70
    .local v3, "resampledSize":I
    goto :goto_0

    .line 78
    .end local v3    # "resampledSize":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 63
    :cond_1
    mul-int/lit8 v3, v2, 0x2

    .line 64
    .restart local v3    # "resampledSize":I
    goto :goto_0

    .line 66
    .end local v3    # "resampledSize":I
    :cond_2
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 67
    .restart local v3    # "resampledSize":I
    nop

    .line 82
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 83
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    iget v8, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    if-eq v8, v5, :cond_7

    if-eq v8, v6, :cond_5

    if-ne v8, v4, :cond_4

    .line 100
    move v4, v0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 101
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    add-int/lit8 v5, v4, 0x3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 104
    .end local v4    # "i":I
    :cond_3
    goto :goto_4

    .line 113
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 86
    :cond_5
    move v4, v0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 87
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x80

    int-to-byte v5, v5

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 90
    .end local v4    # "i":I
    :cond_6
    goto :goto_4

    .line 93
    :cond_7
    move v4, v0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v1, :cond_8

    .line 94
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 93
    add-int/lit8 v4, v4, 0x3

    goto :goto_3

    .line 97
    .end local v4    # "i":I
    :cond_8
    nop

    .line 115
    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 117
    return-void
.end method
