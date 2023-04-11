.class final Landroidx/media2/exoplayer/external/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41


# instance fields
.field private final channelCount:I

.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchFrameCount:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 2
    .param p1, "inputSampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "speed"    # F
    .param p4, "pitch"    # F
    .param p5, "outputSampleRateHz"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputSampleRateHz:I

    .line 76
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    .line 77
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->speed:F

    .line 78
    iput p4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitch:F

    .line 79
    int-to-float v0, p1

    int-to-float v1, p5

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->rate:F

    .line 80
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    .line 81
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    .line 82
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    .line 83
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    new-array v1, v0, [S

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    .line 84
    mul-int v1, v0, p2

    new-array v1, v1, [S

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    .line 85
    mul-int v1, v0, p2

    new-array v1, v1, [S

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 86
    mul-int v0, v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    .line 87
    return-void
.end method

.method private adjustRate(FI)V
    .locals 9
    .param p1, "rate"    # F
    .param p2, "originalOutputFrameCount"    # I

    .line 365
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    if-ne v0, p2, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputSampleRateHz:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 369
    .local v0, "newSampleRate":I
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputSampleRateHz:I

    .line 371
    .local v1, "oldSampleRate":I
    :goto_0
    const/16 v2, 0x4000

    if-gt v0, v2, :cond_7

    if-le v1, v2, :cond_1

    goto :goto_6

    .line 375
    :cond_1
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 377
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_1
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-ge v2, v4, :cond_6

    .line 378
    :goto_2
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v3, 0x1

    mul-int v4, v4, v0

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    mul-int v7, v6, v1

    if-le v4, v7, :cond_3

    .line 379
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 380
    invoke-direct {p0, v3, v4, v5}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 382
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    if-ge v3, v4, :cond_2

    .line 383
    iget-object v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    mul-int v7, v7, v4

    add-int/2addr v7, v3

    iget-object v8, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    mul-int v4, v4, v2

    add-int/2addr v4, v3

    .line 384
    invoke-direct {p0, v8, v4, v1, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->interpolate([SIII)S

    move-result v4

    aput-short v4, v6, v7

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 386
    .end local v3    # "i":I
    :cond_2
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    add-int/2addr v3, v5

    iput v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    .line 387
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int/2addr v3, v5

    iput v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    goto :goto_2

    .line 389
    :cond_3
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    .line 390
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    if-ne v3, v1, :cond_5

    .line 391
    const/4 v3, 0x0

    iput v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    .line 392
    if-ne v6, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 393
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    goto :goto_5

    .line 390
    :cond_5
    nop

    .line 377
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    .end local v2    # "position":I
    :cond_6
    sub-int/2addr v3, v5

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/audio/Sonic;->removePitchFrames(I)V

    .line 397
    return-void

    .line 371
    :cond_7
    :goto_6
    nop

    .line 372
    div-int/lit8 v0, v0, 0x2

    .line 373
    div-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private changeSpeed(F)V
    .locals 8
    .param p1, "speed"    # F

    .line 453
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    if-ge v0, v1, :cond_0

    .line 454
    return-void

    .line 456
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 457
    .local v0, "frameCount":I
    const/4 v1, 0x0

    .line 459
    .local v1, "positionFrames":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    if-lez v2, :cond_1

    .line 460
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 462
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v2, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriod([SI)I

    move-result v2

    .line 463
    .local v2, "period":I
    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    .line 464
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_1

    .line 466
    :cond_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v1, v3

    .line 469
    .end local v2    # "period":I
    :goto_1
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_3

    .line 470
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->removeProcessedInputFrames(I)V

    .line 471
    return-void

    .line 469
    :cond_3
    goto :goto_0
.end method

.method private copyInputToOutput(I)I
    .locals 2
    .param p1, "positionFrames"    # I

    .line 213
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    .local v0, "frameCount":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->copyToOutput([SII)V

    .line 215
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 216
    return v0
.end method

.method private copyToOutput([SII)V
    .locals 4
    .param p1, "samples"    # [S
    .param p2, "positionFrames"    # I
    .param p3, "frameCount"    # I

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v0, v1, p3}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 203
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v1, p2, v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    mul-int v3, v3, v0

    mul-int v0, v0, p3

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 210
    return-void
.end method

.method private downSampleInput([SII)V
    .locals 6
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "skip"    # I

    .line 222
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    div-int/2addr v0, p3

    .line 223
    .local v0, "frameCount":I
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v2, v1, p3

    .line 224
    .local v2, "samplesPerValue":I
    mul-int p2, p2, v1

    .line 225
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, "value":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 228
    mul-int v5, v1, v2

    add-int/2addr v5, p2

    add-int/2addr v5, v4

    aget-short v5, p1, v5

    add-int/2addr v3, v5

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    .end local v4    # "j":I
    :cond_0
    div-int/2addr v3, v2

    .line 231
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    int-to-short v5, v3

    aput-short v5, v4, v1

    .line 225
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .locals 3
    .param p1, "buffer"    # [S
    .param p2, "frameCount"    # I
    .param p3, "additionalFrameCount"    # I

    .line 185
    array-length v0, p1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    .line 186
    .local v0, "currentCapacityFrames":I
    add-int v2, p2, p3

    if-gt v2, v0, :cond_0

    .line 187
    return-object p1

    .line 189
    :cond_0
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 190
    .local v2, "newCapacityFrames":I
    mul-int v1, v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    return-object v1
.end method

.method private findPitchPeriod([SI)I
    .locals 7
    .param p1, "samples"    # [S
    .param p2, "position"    # I

    .line 293
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputSampleRateHz:I

    const/16 v1, 0xfa0

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 294
    .local v0, "skip":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 295
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    goto :goto_3

    .line 294
    :cond_1
    nop

    .line 297
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleInput([SII)V

    .line 298
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3, v4}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    .line 299
    .local v1, "period":I
    if-eq v0, v2, :cond_5

    .line 300
    mul-int v1, v1, v0

    .line 301
    mul-int/lit8 v3, v0, 0x4

    sub-int v3, v1, v3

    .line 302
    .local v3, "minP":I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    .line 303
    .local v4, "maxP":I
    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    if-ge v3, v6, :cond_2

    .line 304
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    goto :goto_1

    .line 303
    :cond_2
    nop

    .line 306
    :goto_1
    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    if-le v4, v6, :cond_3

    .line 307
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    goto :goto_2

    .line 306
    :cond_3
    nop

    .line 309
    :goto_2
    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    if-ne v6, v2, :cond_4

    .line 310
    invoke-direct {p0, p1, p2, v3, v4}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    goto :goto_3

    .line 312
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleInput([SII)V

    .line 313
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, v2, v5, v3, v4}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    goto :goto_3

    .line 299
    .end local v3    # "minP":I
    .end local v4    # "maxP":I
    :cond_5
    nop

    .line 317
    :goto_3
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxDiff:I

    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/audio/Sonic;->previousPeriodBetter(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 318
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    goto :goto_4

    .line 320
    :cond_6
    move v2, v1

    .line 322
    .local v2, "retPeriod":I
    :goto_4
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    iput v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevMinDiff:I

    .line 323
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    .line 324
    return v2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 10
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "minPeriod"    # I
    .param p4, "maxPeriod"    # I

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "bestPeriod":I
    const/16 v1, 0xff

    .line 240
    .local v1, "worstPeriod":I
    const/4 v2, 0x1

    .line 241
    .local v2, "minDiff":I
    const/4 v3, 0x0

    .line 242
    .local v3, "maxDiff":I
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int p2, p2, v4

    .line 243
    move v4, p3

    .local v4, "period":I
    :goto_0
    if-gt v4, p4, :cond_3

    .line 244
    const/4 v5, 0x0

    .line 245
    .local v5, "diff":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 246
    add-int v7, p2, v6

    aget-short v7, p1, v7

    .line 247
    .local v7, "sVal":S
    add-int v8, p2, v4

    add-int/2addr v8, v6

    aget-short v8, p1, v8

    .line 248
    .local v8, "pVal":S
    sub-int v9, v7, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v5, v9

    .line 245
    .end local v7    # "sVal":S
    .end local v8    # "pVal":S
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 253
    .end local v6    # "i":I
    :cond_0
    mul-int v6, v5, v0

    mul-int v7, v2, v4

    if-ge v6, v7, :cond_1

    .line 254
    move v2, v5

    .line 255
    move v0, v4

    goto :goto_2

    .line 253
    :cond_1
    nop

    .line 257
    :goto_2
    mul-int v6, v5, v1

    mul-int v7, v3, v4

    if-le v6, v7, :cond_2

    .line 258
    move v3, v5

    .line 259
    move v1, v4

    goto :goto_3

    .line 257
    :cond_2
    nop

    .line 243
    .end local v5    # "diff":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v4    # "period":I
    :cond_3
    div-int v4, v2, v0

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    .line 263
    div-int v4, v3, v1

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxDiff:I

    .line 264
    return v0
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 10
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .line 425
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    .line 426
    int-to-float v1, p4

    mul-float v1, v1, p3

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    .line 428
    :cond_0
    move v1, p4

    .line 429
    .local v1, "newFrameCount":I
    int-to-float v2, p4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, p3

    sub-float/2addr v3, v0

    mul-float v2, v2, v3

    sub-float/2addr v0, p3

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    move v0, v1

    .line 431
    .end local v1    # "newFrameCount":I
    .local v0, "newFrameCount":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int v3, p4, v0

    .line 432
    invoke-direct {p0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 433
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v2, p2, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    mul-int v4, v4, v1

    mul-int v1, v1, p4

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int v5, v1, p4

    add-int v7, p2, p4

    move v2, v0

    move-object v6, p1

    move-object v8, p1

    move v9, p2

    invoke-static/range {v2 .. v9}, Landroidx/media2/exoplayer/external/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 448
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int v2, p4, v0

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 449
    return v0
.end method

.method private interpolate([SIII)S
    .locals 9
    .param p1, "in"    # [S
    .param p2, "inPos"    # I
    .param p3, "oldSampleRate"    # I
    .param p4, "newSampleRate"    # I

    .line 354
    aget-short v0, p1, p2

    .line 355
    .local v0, "left":S
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    add-int/2addr v1, p2

    aget-short v1, p1, v1

    .line 356
    .local v1, "right":S
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    mul-int v2, v2, p3

    .line 357
    .local v2, "position":I
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    mul-int v4, v3, p4

    .line 358
    .local v4, "leftPosition":I
    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, p4

    .line 359
    .local v3, "rightPosition":I
    sub-int v5, v3, v2

    .line 360
    .local v5, "ratio":I
    sub-int v6, v3, v4

    .line 361
    .local v6, "width":I
    mul-int v7, v5, v0

    sub-int v8, v6, v5

    mul-int v8, v8, v1

    add-int/2addr v7, v8

    div-int/2addr v7, v6

    int-to-short v7, v7

    return v7
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6
    .param p1, "originalOutputFrameCount"    # I

    .line 328
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v0, p1

    .line 329
    .local v0, "frameCount":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    .line 330
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v3, p1, v2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    mul-int v5, v5, v2

    mul-int v2, v2, v0

    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 337
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    .line 338
    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 7
    .param p0, "frameCount"    # I
    .param p1, "channelCount"    # I
    .param p2, "out"    # [S
    .param p3, "outPosition"    # I
    .param p4, "rampDown"    # [S
    .param p5, "rampDownPosition"    # I
    .param p6, "rampUp"    # [S
    .param p7, "rampUpPosition"    # I

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 499
    mul-int v1, p3, p1

    add-int/2addr v1, v0

    .line 500
    .local v1, "o":I
    mul-int v2, p7, p1

    add-int/2addr v2, v0

    .line 501
    .local v2, "u":I
    mul-int v3, p5, p1

    add-int/2addr v3, v0

    .line 502
    .local v3, "d":I
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_1
    if-ge v4, p0, :cond_0

    .line 503
    aget-short v5, p4, v3

    sub-int v6, p0, v4

    mul-int v5, v5, v6

    aget-short v6, p6, v2

    mul-int v6, v6, v4

    add-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p2, v1

    .line 504
    add-int/2addr v1, p1

    .line 505
    add-int/2addr v3, p1

    .line 506
    add-int/2addr v2, p1

    .line 502
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 498
    .end local v1    # "o":I
    .end local v2    # "u":I
    .end local v3    # "d":I
    .end local v4    # "t":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private previousPeriodBetter(II)Z
    .locals 3
    .param p1, "minDiff"    # I
    .param p2, "maxDiff"    # I

    .line 272
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    mul-int/lit8 v1, p1, 0x3

    if-le p2, v1, :cond_1

    .line 277
    return v0

    .line 279
    :cond_1
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_2

    .line 281
    return v0

    .line 283
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_3
    :goto_0
    nop

    .line 273
    return v0
.end method

.method private processStreamInput()V
    .locals 8

    .line 475
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 476
    .local v0, "originalOutputFrameCount":I
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 477
    .local v1, "s":F
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->rate:F

    mul-float v3, v3, v2

    .line 478
    .local v3, "r":F
    float-to-double v4, v1

    const-wide v6, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_1

    float-to-double v4, v1

    const-wide v6, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v4, v6

    if-gez v2, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v4}, Landroidx/media2/exoplayer/external/audio/Sonic;->copyToOutput([SII)V

    .line 482
    iput v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    goto :goto_1

    .line 478
    :cond_1
    :goto_0
    nop

    .line 479
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->changeSpeed(F)V

    .line 484
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    .line 485
    invoke-direct {p0, v3, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->adjustRate(FI)V

    goto :goto_2

    .line 484
    :cond_2
    nop

    .line 487
    :goto_2
    return-void
.end method

.method private removePitchFrames(I)V
    .locals 5
    .param p1, "frameCount"    # I

    .line 341
    if-nez p1, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v2, p1, v1

    const/4 v3, 0x0

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v4, p1

    mul-int v4, v4, v1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    .line 351
    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .locals 5
    .param p1, "positionFrames"    # I

    .line 195
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    sub-int/2addr v0, p1

    .line 196
    .local v0, "remainingFrames":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v3, p1, v2

    mul-int v2, v2, v0

    const/4 v4, 0x0

    invoke-static {v1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 199
    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 11
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .line 402
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p3, v1

    if-ltz v2, :cond_0

    .line 403
    int-to-float v1, p4

    sub-float v0, p3, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    .line 405
    :cond_0
    move v2, p4

    .line 406
    .local v2, "newFrameCount":I
    int-to-float v3, p4

    sub-float/2addr v1, p3

    mul-float v3, v3, v1

    sub-float v0, p3, v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    move v0, v2

    .line 408
    .end local v2    # "newFrameCount":I
    .local v0, "newFrameCount":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 409
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int v10, p2, p4

    move v3, v0

    move-object v7, p1

    move v8, p2

    move-object v9, p1

    invoke-static/range {v3 .. v10}, Landroidx/media2/exoplayer/external/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 418
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 419
    return v0
.end method


# virtual methods
.method public flush()V
    .locals 1

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 155
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 156
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    .line 157
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    .line 158
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    .line 159
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 160
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    .line 161
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevMinDiff:I

    .line 162
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    .line 163
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxDiff:I

    .line 164
    return-void
.end method

.method public getFramesAvailable()I
    .locals 1

    .line 168
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    return v0
.end method

.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .line 111
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    .local v0, "framesToRead":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 113
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 114
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v4, v0, v2

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    mul-int v5, v5, v2

    invoke-static {v1, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-void
.end method

.method public queueEndOfStream()V
    .locals 9

    .line 127
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 128
    .local v0, "remainingFrameCount":I
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 129
    .local v1, "s":F
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->rate:F

    mul-float v3, v3, v2

    .line 130
    .local v3, "r":F
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 134
    .local v2, "expectedOutputFrames":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    .line 135
    invoke-direct {p0, v4, v5, v6}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    .line 137
    const/4 v4, 0x0

    .local v4, "xSample":I
    :goto_0
    iget v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v6, v6, v7

    const/4 v8, 0x0

    if-ge v4, v6, :cond_0

    .line 138
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    mul-int v7, v7, v0

    add-int/2addr v7, v4

    aput-short v8, v5, v7

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v4    # "xSample":I
    :cond_0
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 141
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/Sonic;->processStreamInput()V

    .line 143
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    if-le v4, v2, :cond_1

    .line 144
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    goto :goto_1

    .line 143
    :cond_1
    nop

    .line 147
    :goto_1
    iput v8, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 148
    iput v8, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 149
    iput v8, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    .line 150
    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .line 96
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    .line 97
    .local v0, "framesToWrite":I
    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 98
    .local v1, "bytesToWrite":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0, v2, v3, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    .line 99
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v3, v3, v4

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 100
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 101
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/Sonic;->processStreamInput()V

    .line 102
    return-void
.end method
