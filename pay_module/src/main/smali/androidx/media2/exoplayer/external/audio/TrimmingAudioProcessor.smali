.class final Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "TrimmingAudioProcessor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final OUTPUT_ENCODING:I = 0x2


# instance fields
.field private bytesPerFrame:I

.field private endBuffer:[B

.field private endBufferSize:I

.field private isActive:Z

.field private pendingTrimStartBytes:I

.field private receivedInputSinceConfigure:Z

.field private trimEndFrames:I

.field private trimStartFrames:I

.field private trimmedFrameCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    .line 48
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    .line 49
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 6
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 84
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v1, :cond_0

    .line 85
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    goto :goto_0

    .line 84
    :cond_0
    nop

    .line 87
    :goto_0
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    .line 88
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimEndFrames:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    mul-int v2, v0, v1

    new-array v2, v2, [B

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    .line 89
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 90
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimStartFrames:I

    mul-int v1, v1, v3

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 91
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    .line 92
    .local v1, "wasActive":Z
    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    .line 93
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->setInputFormat(III)Z

    .line 95
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    if-eq v1, v0, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    return v2

    .line 82
    .end local v1    # "wasActive":Z
    :cond_4
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 4

    .line 156
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v0, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    goto :goto_0

    .line 156
    :cond_0
    nop

    .line 165
    :goto_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTrimmedFrameCount()J
    .locals 2

    .line 75
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 171
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFlush()V
    .locals 2

    .line 176
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    goto :goto_0

    .line 176
    :cond_0
    nop

    .line 184
    :goto_0
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 185
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 189
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    .line 190
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 106
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 107
    .local v1, "limit":I
    sub-int v2, v1, v0

    .line 109
    .local v2, "remaining":I
    if-nez v2, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    .line 115
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 116
    .local v3, "trimBytes":I
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    .line 117
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 118
    add-int v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    if-lez v4, :cond_1

    .line 121
    return-void

    .line 123
    :cond_1
    sub-int/2addr v2, v3

    .line 129
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v4, v2

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    .line 130
    .local v4, "remainingBytesToOutput":I
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 133
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    iget v6, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v6

    .line 134
    .local v6, "endBufferBytesToOutput":I
    iget-object v8, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-virtual {v5, v8, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 135
    sub-int/2addr v4, v6

    .line 138
    invoke-static {v4, v7, v2}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v8

    .line 139
    .local v8, "inputBufferBytesToOutput":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 142
    sub-int/2addr v2, v8

    .line 145
    iget v9, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    sub-int/2addr v9, v6

    iput v9, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 146
    iget-object v9, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v10, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-static {v9, v6, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v7, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v9, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-virtual {p1, v7, v9, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 148
    iget v7, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v7, v2

    iput v7, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 150
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 151
    return-void
.end method

.method public resetTrimmedFrameCount()V
    .locals 2

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    .line 68
    return-void
.end method

.method public setTrimFrameCount(II)V
    .locals 0
    .param p1, "trimStartFrames"    # I
    .param p2, "trimEndFrames"    # I

    .line 61
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimStartFrames:I

    .line 62
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimEndFrames:I

    .line 63
    return-void
.end method
