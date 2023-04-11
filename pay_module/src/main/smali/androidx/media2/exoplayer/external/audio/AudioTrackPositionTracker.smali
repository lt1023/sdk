.class final Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$PlayState;,
        Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_LATENCY_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1


# instance fields
.field private audioTimestampPoller:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bufferSize:I

.field private bufferSizeUs:J

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasData:Z

.field private isOutputPcm:Z

.field private lastLatencySampleTimeUs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastRawPlaybackHeadPosition:J

.field private latencyUs:J

.field private final listener:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

.field private needsPassthroughWorkarounds:Z

.field private nextPlayheadOffsetIndex:I

.field private outputPcmFrameSize:I

.field private outputSampleRate:I

.field private passthroughWorkaroundPauseOffset:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->listener:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

    .line 176
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 178
    :try_start_0
    const-class v0, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    .line 176
    :cond_0
    nop

    .line 183
    :goto_0
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    .line 184
    return-void
.end method

.method private forceHasPendingData()Z
    .locals 5

    .line 474
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 475
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 476
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 475
    :cond_1
    goto :goto_0

    .line 474
    :cond_2
    nop

    .line 476
    :goto_0
    const/4 v0, 0x0

    .line 474
    :goto_1
    return v0
.end method

.method private framesToDurationUs(J)J
    .locals 4
    .param p1, "frameCount"    # J

    .line 458
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getPlaybackHeadPosition()J
    .locals 11

    .line 501
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 502
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    sub-long/2addr v1, v3

    .line 505
    .local v1, "elapsedTimeSinceStopUs":J
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v3, v3

    mul-long v3, v3, v1

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 506
    .local v3, "framesSinceStop":J
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    return-wide v5

    .line 509
    .end local v1    # "elapsedTimeSinceStopUs":J
    .end local v3    # "framesSinceStop":J
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    .line 510
    .local v1, "state":I
    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    .line 512
    return-wide v5

    .line 515
    :cond_1
    const-wide v7, 0xffffffffL

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v9, v2

    and-long/2addr v7, v9

    .line 516
    .local v7, "rawPlaybackHeadPosition":J
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_3

    .line 520
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    cmp-long v2, v7, v5

    if-nez v2, :cond_2

    .line 521
    iget-wide v9, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    iput-wide v9, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    goto :goto_0

    .line 520
    :cond_2
    nop

    .line 523
    :goto_0
    iget-wide v9, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v7, v9

    goto :goto_1

    .line 516
    :cond_3
    nop

    .line 526
    :goto_1
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v9, 0x1d

    if-gt v2, v9, :cond_6

    .line 527
    cmp-long v2, v7, v5

    if-nez v2, :cond_5

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v2, v9, v5

    if-lez v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 535
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_4

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    goto :goto_2

    .line 535
    :cond_4
    nop

    .line 538
    :goto_2
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    return-wide v2

    .line 527
    :cond_5
    nop

    .line 540
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    goto :goto_3

    .line 526
    :cond_6
    nop

    .line 544
    :goto_3
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v4, v2, v7

    if-lez v4, :cond_7

    .line 546
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    goto :goto_4

    .line 544
    :cond_7
    nop

    .line 548
    :goto_4
    iput-wide v7, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    .line 549
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v2, v7

    return-wide v2
.end method

.method private getPlaybackHeadPositionUs()J
    .locals 2

    .line 489
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybePollAndCheckTimestamp(JJ)V
    .locals 15
    .param p1, "systemTimeUs"    # J
    .param p3, "playbackPositionUs"    # J

    .line 403
    move-object v0, p0

    move-wide/from16 v10, p1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    .line 404
    .local v12, "audioTimestampPoller":Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;
    invoke-virtual {v12, v10, v11}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    return-void

    .line 409
    :cond_0
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v13

    .line 410
    .local v13, "audioTimestampSystemTimeUs":J
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v8

    .line 411
    .local v8, "audioTimestampPositionFrames":J
    sub-long v1, v13, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 412
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->listener:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

    move-wide v2, v8

    move-wide v4, v13

    move-wide/from16 v6, p1

    move-wide v10, v8

    .end local v8    # "audioTimestampPositionFrames":J
    .local v10, "audioTimestampPositionFrames":J
    move-wide/from16 v8, p3

    invoke-interface/range {v1 .. v9}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 417
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_0

    .line 418
    .end local v10    # "audioTimestampPositionFrames":J
    .restart local v8    # "audioTimestampPositionFrames":J
    :cond_1
    move-wide v10, v8

    .end local v8    # "audioTimestampPositionFrames":J
    .restart local v10    # "audioTimestampPositionFrames":J
    invoke-direct {p0, v10, v11}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v1

    sub-long v1, v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 420
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->listener:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

    move-wide v2, v10

    move-wide v4, v13

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-interface/range {v1 .. v9}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 425
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->acceptTimestamp()V

    .line 429
    :goto_0
    return-void
.end method

.method private maybeSampleSyncParams()V
    .locals 13

    .line 372
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    .line 373
    .local v0, "playbackPositionUs":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 378
    .local v4, "systemTimeUs":J
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    .line 380
    iget-object v6, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    .line 381
    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    rem-int/2addr v7, v6

    iput v7, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 382
    iget v7, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v7, v6, :cond_1

    .line 383
    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    goto :goto_0

    .line 382
    :cond_1
    nop

    .line 385
    :goto_0
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 386
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 387
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_2

    .line 388
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v8, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 378
    .end local v2    # "i":I
    :cond_3
    nop

    .line 392
    :goto_2
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_4

    .line 395
    return-void

    .line 398
    :cond_4
    invoke-direct {p0, v4, v5, v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->maybePollAndCheckTimestamp(JJ)V

    .line 399
    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->maybeUpdateLatency(J)V

    .line 400
    return-void
.end method

.method private maybeUpdateLatency(J)V
    .locals 7
    .param p1, "systemTimeUs"    # J

    .line 432
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 438
    nop

    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 439
    nop

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    nop

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 443
    nop

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J

    nop

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    nop

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 445
    nop

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J

    nop

    const-wide/32 v4, 0x4c4b40

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 446
    nop

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->listener:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

    nop

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J

    nop

    invoke-interface {v0, v4, v5}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    .line 447
    nop

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    .line 445
    :cond_0
    nop

    .line 452
    :goto_0
    nop

    goto :goto_1

    .line 449
    :catch_0
    move-exception v0

    nop

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    nop

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    goto :goto_2

    .line 432
    :cond_1
    nop

    .line 455
    :goto_2
    nop

    return-void
.end method

.method private static needsPassthroughWorkarounds(I)Z
    .locals 2
    .param p0, "outputEncoding"    # I

    .line 484
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetSyncParams()V
    .locals 3

    .line 462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 463
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 464
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 465
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 466
    return-void
.end method


# virtual methods
.method public getAvailableBufferSize(J)I
    .locals 4
    .param p1, "writtenBytes"    # J

    .line 309
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 310
    .local v1, "bytesPending":I
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->bufferSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 11
    .param p1, "sourceEnded"    # Z

    .line 219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 220
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->maybeSampleSyncParams()V

    goto :goto_0

    .line 219
    :cond_0
    nop

    .line 225
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 226
    .local v0, "systemTimeUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    .line 227
    .local v2, "audioTimestampPoller":Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v3

    .line 230
    .local v3, "timestampPositionFrames":J
    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v5

    .line 231
    .local v5, "timestampPositionUs":J
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->isTimestampAdvancing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 232
    return-wide v5

    .line 234
    :cond_1
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v7

    sub-long v7, v0, v7

    .line 235
    .local v7, "elapsedSinceTimestampUs":J
    add-long v9, v5, v7

    return-wide v9

    .line 238
    .end local v3    # "timestampPositionFrames":J
    .end local v5    # "timestampPositionUs":J
    .end local v7    # "elapsedSinceTimestampUs":J
    :cond_2
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v3, :cond_3

    .line 240
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v3

    goto :goto_1

    .line 245
    :cond_3
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v3, v0

    .line 247
    .local v3, "positionUs":J
    :goto_1
    if-nez p1, :cond_4

    .line 248
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v3, v5

    goto :goto_2

    .line 247
    :cond_4
    nop

    .line 250
    :goto_2
    return-wide v3
.end method

.method public handleEndOfStream(J)V
    .locals 4
    .param p1, "writtenFrames"    # J

    .line 328
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 330
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    .line 331
    return-void
.end method

.method public hasPendingData(J)Z
    .locals 3
    .param p1, "writtenFrames"    # J

    .line 340
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 341
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->forceHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 340
    :cond_1
    nop

    .line 341
    :goto_0
    const/4 v0, 0x1

    .line 340
    :goto_1
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 261
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStalled(J)Z
    .locals 5
    .param p1, "writtenFrames"    # J

    .line 315
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 315
    :cond_1
    nop

    .line 317
    :goto_0
    const/4 v0, 0x0

    .line 315
    :goto_1
    return v0
.end method

.method public mayHandleBuffer(J)Z
    .locals 8
    .param p1, "writtenFrames"    # J

    .line 272
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 273
    .local v0, "playState":I
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 276
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 278
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasData:Z

    .line 279
    return v3

    .line 285
    :cond_0
    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 286
    return v3

    .line 285
    :cond_1
    goto :goto_0

    .line 273
    :cond_2
    nop

    .line 290
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasData:Z

    .line 291
    .local v1, "hadData":Z
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasData:Z

    .line 292
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasData:Z

    if-nez v3, :cond_3

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->listener:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;

    if-eqz v3, :cond_3

    .line 293
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    goto :goto_1

    .line 292
    :cond_3
    nop

    .line 296
    :goto_1
    return v2
.end method

.method public pause()Z
    .locals 5

    .line 350
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 351
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 354
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->reset()V

    .line 355
    const/4 v0, 0x1

    return v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 366
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 368
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    .line 369
    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;III)V
    .locals 5
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "outputEncoding"    # I
    .param p3, "outputPcmFrameSize"    # I
    .param p4, "bufferSize"    # I

    .line 201
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 202
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    .line 203
    iput p4, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 204
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    .line 205
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 206
    invoke-static {p2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 207
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    .line 208
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    div-int v0, p4, p3

    int-to-long v3, v0

    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    .line 209
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    .line 210
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 211
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasData:Z

    .line 213
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 214
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 215
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 216
    return-void
.end method

.method public start()V
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTimestampPoller;->reset()V

    .line 257
    return-void
.end method
