.class final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Configuration"
.end annotation


# instance fields
.field public final availableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field public final bufferSize:I

.field public final canApplyPlaybackParameters:Z

.field public final inputPcmFrameSize:I

.field public final inputSampleRate:I

.field public final isInputPcm:Z

.field public final outputChannelConfig:I

.field public final outputEncoding:I

.field public final outputPcmFrameSize:I

.field public final outputSampleRate:I

.field public final processingEnabled:Z


# direct methods
.method public constructor <init>(ZIIIIIIIZZ[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 1
    .param p1, "isInputPcm"    # Z
    .param p2, "inputPcmFrameSize"    # I
    .param p3, "inputSampleRate"    # I
    .param p4, "outputPcmFrameSize"    # I
    .param p5, "outputSampleRate"    # I
    .param p6, "outputChannelConfig"    # I
    .param p7, "outputEncoding"    # I
    .param p8, "specifiedBufferSize"    # I
    .param p9, "processingEnabled"    # Z
    .param p10, "canApplyPlaybackParameters"    # Z
    .param p11, "availableAudioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1349
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    .line 1350
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    .line 1351
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputSampleRate:I

    .line 1352
    iput p4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    .line 1353
    iput p5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    .line 1354
    iput p6, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    .line 1355
    iput p7, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 1356
    if-eqz p8, :cond_0

    move v0, p8

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->getDefaultBufferSize()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    .line 1357
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->processingEnabled:Z

    .line 1358
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    .line 1359
    iput-object p11, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 1360
    return-void
.end method

.method private createAudioTrackV21(ZLandroidx/media2/exoplayer/external/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 9
    .param p1, "tunneling"    # Z
    .param p2, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .param p3, "audioSessionId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1428
    if-eqz p1, :cond_0

    .line 1429
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 1431
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 1432
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1433
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1434
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 1436
    :cond_0
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1438
    .local v0, "attributes":Landroid/media/AudioAttributes;
    :goto_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    .line 1440
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 1441
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    .line 1442
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 1443
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v7

    .line 1444
    .local v7, "format":Landroid/media/AudioFormat;
    new-instance v8, Landroid/media/AudioTrack;

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v5, 0x1

    .line 1449
    if-eqz p3, :cond_1

    .line 1450
    move v6, p3

    goto :goto_1

    .line 1451
    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_1
    move-object v1, v8

    move-object v2, v0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 1444
    return-object v8
.end method

.method private getDefaultBufferSize()I
    .locals 10

    .line 1455
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    const-wide/32 v1, 0x3d090

    if-eqz v0, :cond_1

    .line 1456
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 1457
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 1458
    .local v0, "minBufferSize":I
    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 1459
    mul-int/lit8 v3, v0, 0x4

    .line 1460
    .local v3, "multipliedBufferSize":I
    nop

    .line 1461
    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->durationUsToFrames(J)J

    move-result-wide v1

    long-to-int v2, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    mul-int v2, v2, v1

    .line 1462
    .local v2, "minAppBufferSize":I
    int-to-long v4, v0

    const-wide/32 v6, 0xb71b0

    .line 1465
    invoke-virtual {p0, v6, v7}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->durationUsToFrames(J)J

    move-result-wide v6

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v8, v1

    mul-long v6, v6, v8

    .line 1464
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 1466
    .local v1, "maxAppBufferSize":I
    invoke-static {v3, v2, v1}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v4

    return v4

    .line 1468
    .end local v0    # "minBufferSize":I
    .end local v1    # "maxAppBufferSize":I
    .end local v2    # "minAppBufferSize":I
    .end local v3    # "multipliedBufferSize":I
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$1100(I)I

    move-result v0

    .line 1469
    .local v0, "rate":I
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 1470
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1469
    :cond_2
    nop

    .line 1472
    :goto_1
    int-to-long v3, v0

    mul-long v3, v3, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v3, v1

    long-to-int v1, v3

    return v1
.end method


# virtual methods
.method public buildAudioTrack(ZLandroidx/media2/exoplayer/external/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 10
    .param p1, "tunneling"    # Z
    .param p2, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .param p3, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1384
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1385
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->createAudioTrackV21(ZLandroidx/media2/exoplayer/external/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_0

    .line 1387
    :cond_0
    iget v0, p2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v0

    .line 1388
    .local v0, "streamType":I
    if-nez p3, :cond_1

    .line 1389
    new-instance v8, Landroid/media/AudioTrack;

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v7, 0x1

    move-object v1, v8

    move v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object v0, v1

    goto :goto_0

    .line 1399
    :cond_1
    new-instance v9, Landroid/media/AudioTrack;

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v7, 0x1

    move-object v1, v9

    move v2, v0

    move v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    move-object v0, v9

    .line 1411
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    .line 1412
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1421
    return-object v0

    .line 1414
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    goto :goto_1

    .line 1415
    :catch_0
    move-exception v2

    .line 1419
    :goto_1
    new-instance v2, Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;-><init>(IIII)V

    throw v2
.end method

.method public canReuseAudioTrack(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;)Z
    .locals 2
    .param p1, "audioTrackConfiguration"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 1363
    iget v0, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public durationUsToFrames(J)J
    .locals 4
    .param p1, "durationUs"    # J

    .line 1377
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public framesToDurationUs(J)J
    .locals 4
    .param p1, "frameCount"    # J

    .line 1373
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public inputFramesToDurationUs(J)J
    .locals 4
    .param p1, "frameCount"    # J

    .line 1369
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
