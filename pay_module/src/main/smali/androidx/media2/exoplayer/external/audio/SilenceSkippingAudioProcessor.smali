.class public final Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "SilenceSkippingAudioProcessor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor$State;
    }
.end annotation


# static fields
.field private static final MINIMUM_SILENCE_DURATION_US:J = 0x249f0L

.field private static final PADDING_SILENCE_US:J = 0x4e20L

.field private static final SILENCE_THRESHOLD_LEVEL:S = 0x400s

.field private static final SILENCE_THRESHOLD_LEVEL_MSB:B = 0x4t

.field private static final STATE_MAYBE_SILENT:I = 0x1

.field private static final STATE_NOISY:I = 0x0

.field private static final STATE_SILENT:I = 0x2


# instance fields
.field private bytesPerFrame:I

.field private enabled:Z

.field private hasOutputNoise:Z

.field private maybeSilenceBuffer:[B

.field private maybeSilenceBufferSize:I

.field private paddingBuffer:[B

.field private paddingSize:I

.field private skippedFrames:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    .line 102
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 103
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    .line 104
    return-void
.end method

.method private durationUsToFrames(J)I
    .locals 4
    .param p1, "durationUs"    # J

    .line 326
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->sampleRateHz:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private findNoiseLimit(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 350
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 351
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 353
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int v2, v0, v1

    mul-int v2, v2, v1

    add-int/2addr v2, v1

    return v2

    .line 350
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 356
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method private findNoisePosition(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 336
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 338
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int v2, v0, v1

    mul-int v1, v1, v2

    return v1

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method private output(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 298
    .local v0, "length":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 299
    if-lez v0, :cond_0

    .line 300
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    goto :goto_0

    .line 299
    :cond_0
    nop

    .line 302
    :goto_0
    return-void
.end method

.method private output([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .line 287
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 288
    if-lez p2, :cond_0

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    goto :goto_0

    .line 288
    :cond_0
    nop

    .line 291
    :goto_0
    return-void
.end method

.method private processMaybeSilence(Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 228
    .local v0, "limit":I
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 229
    .local v1, "noisePosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    .line 230
    .local v2, "maybeSilenceInputSize":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v4, v3

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    sub-int/2addr v4, v5

    .line 231
    .local v4, "maybeSilenceBufferRemaining":I
    const/4 v6, 0x0

    if-ge v1, v0, :cond_0

    if-ge v2, v4, :cond_0

    .line 233
    invoke-direct {p0, v3, v5}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 234
    iput v6, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 235
    iput v6, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_2

    .line 231
    :cond_0
    nop

    .line 238
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 239
    .local v3, "bytesToWrite":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 240
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-virtual {p1, v5, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 241
    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 242
    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iget-object v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v8, v7

    if-ne v5, v8, :cond_2

    .line 245
    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    const/4 v9, 0x2

    if-eqz v8, :cond_1

    .line 246
    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v7, v5}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 247
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iget v10, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v5, v10

    iget v10, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v5, v10

    int-to-long v10, v5

    add-long/2addr v7, v10

    iput-wide v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    goto :goto_0

    .line 249
    :cond_1
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v10, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v5, v10

    iget v10, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v5, v10

    int-to-long v10, v5

    add-long/2addr v7, v10

    iput-wide v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 251
    :goto_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-direct {p0, p1, v5, v7}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    .line 252
    iput v6, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 253
    iput v9, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_1

    .line 242
    :cond_2
    nop

    .line 257
    :goto_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 259
    .end local v3    # "bytesToWrite":I
    :goto_2
    return-void
.end method

.method private processNoisy(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 208
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 209
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->findNoiseLimit(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 210
    .local v1, "noiseLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 212
    const/4 v2, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 215
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output(Ljava/nio/ByteBuffer;)V

    .line 219
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 220
    return-void
.end method

.method private processSilence(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 266
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 267
    .local v0, "limit":I
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 268
    .local v1, "noisyPosition":I
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 269
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 270
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, p1, v2, v3}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    .line 271
    if-ge v1, v0, :cond_0

    .line 274
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 275
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    .line 278
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 271
    :cond_0
    nop

    .line 280
    :goto_0
    return-void
.end method

.method private updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V
    .locals 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "buffer"    # [B
    .param p3, "size"    # I

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 311
    .local v0, "fromInputSize":I
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v1, v0

    .line 312
    .local v1, "fromBufferSize":I
    sub-int v2, p3, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    const/4 v4, 0x0

    invoke-static {p2, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 320
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

    .line 130
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 133
    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->setInputFormat(III)Z

    move-result v0

    return v0

    .line 131
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public getSkippedFrames()J
    .locals 2

    .line 122
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 139
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFlush()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-wide/32 v0, 0x249f0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v0, v0, v1

    .line 176
    .local v0, "maybeSilenceBufferSize":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 177
    new-array v1, v0, [B

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    goto :goto_0

    .line 176
    :cond_0
    nop

    .line 179
    :goto_0
    const-wide/16 v1, 0x4e20

    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v1, v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 180
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    array-length v1, v1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    if-eq v1, v2, :cond_1

    .line 181
    new-array v1, v2, [B

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    goto :goto_1

    .line 180
    :cond_1
    goto :goto_1

    .line 174
    .end local v0    # "maybeSilenceBufferSize":I
    :cond_2
    nop

    .line 184
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    .line 185
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 186
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 187
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    .line 188
    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 4

    .line 163
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    if-lez v0, :cond_0

    .line 165
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    goto :goto_0

    .line 163
    :cond_0
    nop

    .line 167
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    if-nez v0, :cond_1

    .line 168
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    goto :goto_1

    .line 167
    :cond_1
    nop

    .line 170
    :goto_1
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->enabled:Z

    .line 193
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 194
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 195
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    .line 196
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 144
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasPendingOutput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    packed-switch v0, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 153
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->processSilence(Ljava/nio/ByteBuffer;)V

    .line 154
    goto :goto_0

    .line 150
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->processMaybeSilence(Ljava/nio/ByteBuffer;)V

    .line 151
    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->processNoisy(Ljava/nio/ByteBuffer;)V

    .line 148
    goto :goto_0

    .line 144
    :cond_0
    nop

    .line 159
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 113
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->enabled:Z

    .line 114
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->flush()V

    .line 115
    return-void
.end method
