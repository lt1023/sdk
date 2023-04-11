.class public final Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioProcessor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CLOSE_THRESHOLD:F = 0.01f

.field public static final MAXIMUM_PITCH:F = 8.0f

.field public static final MAXIMUM_SPEED:F = 8.0f

.field public static final MINIMUM_PITCH:F = 0.1f

.field public static final MINIMUM_SPEED:F = 0.1f

.field private static final MIN_BYTES_FOR_SPEEDUP_CALCULATION:I = 0x400

.field public static final SAMPLE_RATE_NO_CHANGE:I = -0x1


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputBytes:J

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBytes:J

.field private outputSampleRateHz:I

.field private pendingOutputSampleRateHz:I

.field private pendingSonicRecreation:Z

.field private pitch:F

.field private sampleRateHz:I

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private sonic:Landroidx/media2/exoplayer/external/audio/Sonic;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->speed:F

    .line 92
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pitch:F

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->channelCount:I

    .line 94
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 95
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    .line 96
    sget-object v1, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 97
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 98
    sget-object v1, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    .line 100
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 2
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 173
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 174
    move v0, p1

    goto :goto_0

    :cond_0
    nop

    .line 175
    .local v0, "outputSampleRateHz":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->channelCount:I

    if-ne v1, p2, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    if-ne v1, v0, :cond_1

    .line 177
    const/4 v1, 0x0

    return v1

    .line 175
    :cond_1
    nop

    .line 179
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 180
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->channelCount:I

    .line 181
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    .line 183
    return v1

    .line 171
    .end local v0    # "outputSampleRateHz":I
    :cond_2
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public flush()V
    .locals 7

    .line 257
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Landroidx/media2/exoplayer/external/audio/Sonic;

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->channelCount:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->speed:F

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pitch:F

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/audio/Sonic;-><init>(IIFFI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sonic:Landroidx/media2/exoplayer/external/audio/Sonic;

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sonic:Landroidx/media2/exoplayer/external/audio/Sonic;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->flush()V

    goto :goto_0

    .line 260
    :cond_1
    goto :goto_0

    .line 257
    :cond_2
    nop

    .line 264
    :goto_0
    sget-object v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputBytes:J

    .line 266
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBytes:J

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputEnded:Z

    .line 268
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 246
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 247
    return-object v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    .line 196
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .locals 1

    .line 206
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .locals 3

    .line 188
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 189
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v1

    .line 190
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    :goto_0
    goto :goto_1

    .line 189
    :cond_2
    nop

    .line 190
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 188
    :cond_3
    nop

    .line 190
    :goto_2
    const/4 v0, 0x0

    .line 188
    :goto_3
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sonic:Landroidx/media2/exoplayer/external/audio/Sonic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->getFramesAvailable()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueEndOfStream()V
    .locals 1

    .line 237
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sonic:Landroidx/media2/exoplayer/external/audio/Sonic;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->queueEndOfStream()V

    goto :goto_0

    .line 237
    :cond_0
    nop

    .line 240
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputEnded:Z

    .line 241
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sonic:Landroidx/media2/exoplayer/external/audio/Sonic;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/Sonic;

    .line 212
    .local v0, "sonic":Landroidx/media2/exoplayer/external/audio/Sonic;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 214
    .local v1, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 215
    .local v2, "inputSize":I
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputBytes:J

    .line 216
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->queueInput(Ljava/nio/ShortBuffer;)V

    .line 217
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 212
    .end local v1    # "shortBuffer":Ljava/nio/ShortBuffer;
    .end local v2    # "inputSize":I
    :cond_0
    nop

    .line 219
    :goto_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->getFramesAvailable()I

    move-result v1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->channelCount:I

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 220
    .local v1, "outputSize":I
    if-lez v1, :cond_2

    .line 221
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 222
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 223
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    goto :goto_1

    .line 225
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 226
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 228
    :goto_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->getOutput(Ljava/nio/ShortBuffer;)V

    .line 229
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBytes:J

    .line 230
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 220
    :cond_2
    nop

    .line 233
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 3

    .line 272
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->speed:F

    .line 273
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pitch:F

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->channelCount:I

    .line 275
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 276
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    .line 277
    sget-object v1, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 278
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 279
    sget-object v1, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 280
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sonic:Landroidx/media2/exoplayer/external/audio/Sonic;

    .line 283
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputBytes:J

    .line 284
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBytes:J

    .line 285
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputEnded:Z

    .line 286
    return-void
.end method

.method public scaleDurationForSpeedup(J)J
    .locals 15
    .param p1, "duration"    # J

    .line 157
    move-object v0, p0

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputBytes:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    .line 158
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->outputSampleRateHz:I

    iget v2, v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->sampleRateHz:I

    if-ne v1, v2, :cond_0

    .line 159
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputBytes:J

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    goto :goto_0

    .line 160
    :cond_0
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 158
    :goto_0
    return-wide v1

    .line 163
    :cond_1
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->speed:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    double-to-long v1, v1

    return-wide v1
.end method

.method public setOutputSampleRateHz(I)V
    .locals 0
    .param p1, "sampleRateHz"    # I

    .line 145
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    .line 146
    return-void
.end method

.method public setPitch(F)F
    .locals 2
    .param p1, "pitch"    # F

    .line 127
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 128
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pitch:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 129
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pitch:F

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    goto :goto_0

    .line 128
    :cond_0
    nop

    .line 132
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->flush()V

    .line 133
    return p1
.end method

.method public setSpeed(F)F
    .locals 2
    .param p1, "speed"    # F

    .line 110
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 111
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->speed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 112
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->speed:F

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    goto :goto_0

    .line 111
    :cond_0
    nop

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SonicAudioProcessor;->flush()V

    .line 116
    return p1
.end method
