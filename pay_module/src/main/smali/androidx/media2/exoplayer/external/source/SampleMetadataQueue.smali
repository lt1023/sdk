.class final Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;
    }
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

.field private flags:[I

.field private formats:[Landroidx/media2/exoplayer/external/Format;

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private offsets:[J

.field private readPosition:I

.field private relativeFirstIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Landroidx/media2/exoplayer/external/Format;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0x3e8

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    .line 74
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    .line 75
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    .line 76
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    .line 77
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    .line 78
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    .line 79
    new-array v1, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 80
    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 81
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 82
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 84
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 85
    return-void
.end method

.method private discardSamples(I)J
    .locals 6
    .param p1, "discardCount"    # I

    .line 540
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 541
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    .line 540
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 542
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 543
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    .line 544
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 545
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-lt v0, v1, :cond_0

    .line 546
    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    goto :goto_0

    .line 545
    :cond_0
    nop

    .line 548
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    .line 549
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    if-gez v0, :cond_1

    .line 550
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    goto :goto_1

    .line 549
    :cond_1
    nop

    .line 552
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    if-nez v0, :cond_3

    .line 553
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    nop

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 554
    .local v0, "relativeLastDiscardIndex":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aget v1, v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    return-wide v2

    .line 556
    .end local v0    # "relativeLastDiscardIndex":I
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method private findSampleBefore(IIJZ)I
    .locals 6
    .param p1, "relativeStartIndex"    # I
    .param p2, "length"    # I
    .param p3, "timeUs"    # J
    .param p5, "keyframe"    # Z

    .line 518
    const/4 v0, -0x1

    .line 519
    .local v0, "sampleCountToTarget":I
    move v1, p1

    .line 520
    .local v1, "searchIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    .line 521
    if-eqz p5, :cond_1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    .line 523
    :cond_1
    :goto_1
    move v0, v2

    .line 525
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 526
    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-ne v1, v3, :cond_2

    .line 527
    const/4 v1, 0x0

    goto :goto_3

    .line 526
    :cond_2
    nop

    .line 520
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method private getLargestTimestamp(I)J
    .locals 7
    .param p1, "length"    # I

    .line 569
    if-nez p1, :cond_0

    .line 570
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 572
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 573
    .local v0, "largestTimestampUs":J
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    .line 574
    .local v2, "relativeSampleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_3

    .line 575
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 576
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 577
    goto :goto_2

    .line 579
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 580
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 581
    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    goto :goto_1

    .line 580
    :cond_2
    nop

    .line 574
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    .end local v3    # "i":I
    :cond_3
    :goto_2
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 593
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 594
    .local v0, "relativeIndex":I
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sub-int v1, v0, v1

    :goto_0
    return v1
.end method


# virtual methods
.method public declared-synchronized advanceTo(JZZ)I
    .locals 8
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "allowTimeBeyondBuffer"    # Z

    monitor-enter p0

    .line 303
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 304
    .local v0, "relativeReadIndex":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v1

    const/4 v7, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iget v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int v3, v1, v2

    move-object v1, p0

    move v2, v0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .local v1, "offset":I
    if-ne v1, v7, :cond_1

    .line 310
    monitor-exit p0

    return v7

    .line 312
    :cond_1
    :try_start_1
    iget v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    monitor-exit p0

    return v1

    .line 304
    .end local v1    # "offset":I
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :cond_2
    :goto_0
    nop

    .line 306
    monitor-exit p0

    return v7

    .line 302
    .end local v0    # "relativeReadIndex":I
    .end local p1    # "timeUs":J
    .end local p3    # "toKeyframe":Z
    .end local p4    # "allowTimeBeyondBuffer":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized advanceToEnd()I
    .locals 2

    monitor-enter p0

    .line 322
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v0, v1

    .line 323
    .local v0, "skipCount":I
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iput v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return v0

    .line 321
    .end local v0    # "skipCount":I
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attemptSplice(J)Z
    .locals 8
    .param p1, "timeUs"    # J

    monitor-enter p0

    .line 480
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 481
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    monitor-exit p0

    return v1

    .line 483
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :cond_1
    :try_start_1
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    .line 484
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    .line 483
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .local v3, "largestReadTimestampUs":J
    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 486
    monitor-exit p0

    return v1

    .line 488
    :cond_2
    :try_start_2
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 489
    .local v0, "retainCount":I
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v1

    .line 490
    .local v1, "relativeSampleIndex":I
    :goto_0
    iget v5, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    if-le v0, v5, :cond_4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v6, v5, v1

    cmp-long v5, v6, p1

    if-ltz v5, :cond_4

    .line 491
    add-int/lit8 v0, v0, -0x1

    .line 492
    add-int/lit8 v1, v1, -0x1

    .line 493
    const/4 v5, -0x1

    if-ne v1, v5, :cond_3

    .line 494
    iget v5, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    add-int/lit8 v1, v5, -0x1

    goto :goto_0

    .line 493
    :cond_3
    goto :goto_0

    .line 490
    :cond_4
    nop

    .line 497
    iget v5, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardUpstreamSamples(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    monitor-exit p0

    return v2

    .line 479
    .end local v0    # "retainCount":I
    .end local v1    # "relativeSampleIndex":I
    .end local v3    # "largestReadTimestampUs":J
    .end local p1    # "timeUs":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized commitSample(JIJILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V
    .locals 16
    .param p1, "timeUs"    # J
    .param p3, "sampleFlags"    # I
    .param p4, "offset"    # J
    .param p6, "size"    # I
    .param p7, "cryptoData"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 413
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 414
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    :try_start_1
    iput-boolean v4, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    goto :goto_0

    .line 412
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :cond_1
    nop

    .line 418
    :goto_0
    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    const/4 v5, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 420
    const/high16 v0, 0x20000000

    and-int v0, p3, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    .line 421
    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 423
    iget v0, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 424
    .local v0, "relativeEndIndex":I
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aput-wide v2, v6, v0

    .line 425
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aput-wide p4, v6, v0

    .line 426
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aput p6, v6, v0

    .line 427
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aput p3, v6, v0

    .line 428
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    aput-object p7, v6, v0

    .line 429
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v6, v0

    .line 430
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    iget v7, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamSourceId:I

    aput v7, v6, v0

    .line 432
    iget v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    add-int/2addr v6, v5

    iput v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 433
    iget v5, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iget v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-ne v5, v6, :cond_4

    .line 435
    iget v5, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    add-int/lit16 v5, v5, 0x3e8

    .line 436
    .local v5, "newCapacity":I
    new-array v6, v5, [I

    .line 437
    .local v6, "newSourceIds":[I
    new-array v7, v5, [J

    .line 438
    .local v7, "newOffsets":[J
    new-array v8, v5, [J

    .line 439
    .local v8, "newTimesUs":[J
    new-array v9, v5, [I

    .line 440
    .local v9, "newFlags":[I
    new-array v10, v5, [I

    .line 441
    .local v10, "newSizes":[I
    new-array v11, v5, [Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 442
    .local v11, "newCryptoDatas":[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
    new-array v12, v5, [Landroidx/media2/exoplayer/external/Format;

    .line 443
    .local v12, "newFormats":[Landroidx/media2/exoplayer/external/Format;
    iget v13, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    iget v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    sub-int/2addr v13, v14

    .line 444
    .local v13, "beforeWrap":I
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    iget v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v14, v15, v7, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    iget v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v14, v15, v8, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    iget v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v14, v15, v9, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    iget v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v14, v15, v10, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    iget v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v14, v15, v11, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v14, v15, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iget-object v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    iget v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v14, v15, v6, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iget v14, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 452
    .local v14, "afterWrap":I
    iget-object v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    invoke-static {v15, v4, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget-object v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    invoke-static {v15, v4, v8, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-object v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    invoke-static {v15, v4, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iget-object v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    invoke-static {v15, v4, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    invoke-static {v15, v4, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget-object v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v15, v4, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    iget-object v15, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    invoke-static {v15, v4, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iput-object v7, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    .line 460
    iput-object v8, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    .line 461
    iput-object v9, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    .line 462
    iput-object v10, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    .line 463
    iput-object v11, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 464
    iput-object v12, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 465
    iput-object v6, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    .line 466
    iput v4, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 467
    iget v4, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    iput v4, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 468
    iput v5, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 433
    .end local v5    # "newCapacity":I
    .end local v6    # "newSourceIds":[I
    .end local v7    # "newOffsets":[J
    .end local v8    # "newTimesUs":[J
    .end local v9    # "newFlags":[I
    .end local v10    # "newSizes":[I
    .end local v11    # "newCryptoDatas":[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
    .end local v12    # "newFormats":[Landroidx/media2/exoplayer/external/Format;
    .end local v13    # "beforeWrap":I
    .end local v14    # "afterWrap":I
    :cond_4
    nop

    .line 470
    :goto_3
    monitor-exit p0

    return-void

    .line 411
    .end local v0    # "relativeEndIndex":I
    .end local p1    # "timeUs":J
    .end local p3    # "sampleFlags":I
    .end local p4    # "offset":J
    .end local p6    # "size":I
    .end local p7    # "cryptoData":Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardTo(JZZ)J
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    monitor-enter p0

    .line 356
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    if-eqz p4, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 v0, v0, 0x1

    move v5, v0

    goto :goto_0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    move v5, v0

    .line 360
    .local v5, "searchLength":I
    :goto_0
    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .local v0, "discardCount":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 362
    monitor-exit p0

    return-wide v1

    .line 364
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 356
    .end local v0    # "discardCount":I
    .end local v5    # "searchLength":I
    :cond_3
    :goto_1
    nop

    .line 357
    monitor-exit p0

    return-wide v1

    .line 355
    .end local p1    # "timeUs":J
    .end local p3    # "toKeyframe":Z
    .end local p4    # "stopAtReadPosition":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardToEnd()J
    .locals 2

    monitor-enter p0

    .line 387
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 388
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 390
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 386
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardToRead()J
    .locals 2

    monitor-enter p0

    .line 374
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 375
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 377
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 373
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .locals 7
    .param p1, "discardFromIndex"    # I

    .line 125
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    .line 126
    .local v0, "discardCount":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 127
    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 128
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    iget v5, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 129
    if-nez v0, :cond_1

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    .line 130
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    if-nez v1, :cond_2

    .line 131
    const-wide/16 v1, 0x0

    return-wide v1

    .line 133
    :cond_2
    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v1

    .line 134
    .local v1, "relativeLastWriteIndex":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aget-wide v3, v2, v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aget v2, v2, v1

    int-to-long v5, v2

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public declared-synchronized format(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 3
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    monitor-enter p0

    .line 396
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 397
    :try_start_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return v1

    .line 400
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 401
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 403
    monitor-exit p0

    return v1

    .line 405
    :cond_1
    :try_start_2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    monitor-exit p0

    return v0

    .line 395
    .end local p1    # "format":Landroidx/media2/exoplayer/external/Format;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFirstIndex()I
    .locals 1

    .line 148
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    return v0
.end method

.method public declared-synchronized getFirstTimestampUs()J
    .locals 3

    monitor-enter p0

    .line 213
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .locals 2

    monitor-enter p0

    .line 195
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .locals 2

    .line 155
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .locals 2

    .line 114
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized hasNextSample()Z
    .locals 2

    monitor-enter p0

    .line 173
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLastSampleQueued()Z
    .locals 1

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .locals 2

    .line 165
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 166
    .local v0, "relativeReadIndex":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    aget v1, v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamSourceId:I

    :goto_0
    return v1
.end method

.method public declared-synchronized read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;)I
    .locals 5
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p2, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z
    .param p4, "loadingFinished"    # Z
    .param p5, "downstreamFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p6, "extrasHolder"    # Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    monitor-enter p0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x4

    if-nez v0, :cond_4

    .line 255
    if-nez p4, :cond_3

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    if-eq v0, p5, :cond_2

    .line 260
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return v1

    .line 258
    :cond_2
    nop

    .line 263
    const/4 v0, -0x3

    monitor-exit p0

    return v0

    .line 255
    :cond_3
    :goto_0
    nop

    .line 256
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return v2

    .line 267
    :cond_4
    :try_start_2
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 268
    .local v0, "relativeReadIndex":I
    if-nez p3, :cond_7

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v0

    if-eq v3, p5, :cond_5

    goto :goto_1

    .line 273
    :cond_5
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 274
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v3, v1, v0

    iput-wide v3, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    .line 275
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    .line 276
    monitor-exit p0

    return v2

    .line 279
    :cond_6
    :try_start_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aget v1, v1, v0

    iput v1, p6, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    .line 280
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aget-wide v3, v1, v0

    iput-wide v3, p6, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 281
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    aget-object v1, v1, v0

    iput-object v1, p6, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 283
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    monitor-exit p0

    return v2

    .line 268
    :cond_7
    :goto_1
    nop

    .line 269
    :try_start_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v2, v2, v0

    iput-object v2, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    monitor-exit p0

    return v1

    .line 253
    .end local v0    # "relativeReadIndex":I
    .end local p1    # "formatHolder":Landroidx/media2/exoplayer/external/FormatHolder;
    .end local p2    # "buffer":Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .end local p3    # "formatRequired":Z
    .end local p4    # "loadingFinished":Z
    .end local p5    # "downstreamFormat":Landroidx/media2/exoplayer/external/Format;
    .end local p6    # "extrasHolder":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "resetUpstreamFormat"    # Z

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 101
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 102
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 103
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    .line 106
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    goto :goto_0

    .line 104
    :cond_0
    nop

    .line 108
    :goto_0
    return-void
.end method

.method public declared-synchronized rewind()V
    .locals 1

    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 219
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReadPosition(I)Z
    .locals 2
    .param p1, "sampleIndex"    # I

    monitor-enter p0

    .line 336
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 337
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 336
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
    :cond_0
    nop

    .line 340
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 335
    .end local p1    # "sampleIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sourceId(I)V
    .locals 0
    .param p1, "sourceId"    # I

    .line 139
    iput p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamSourceId:I

    .line 140
    return-void
.end method
