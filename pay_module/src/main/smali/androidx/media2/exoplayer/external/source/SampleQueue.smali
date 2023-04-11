.class public Landroidx/media2/exoplayer/external/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;,
        Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field public static final ADVANCE_FAILED:I = -0x1

.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private downstreamFormat:Landroidx/media2/exoplayer/external/Format;

.field private final extrasHolder:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

.field private firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

.field private lastUnadjustedFormat:Landroidx/media2/exoplayer/external/Format;

.field private final metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

.field private pendingFormatAdjustment:Z

.field private pendingSplice:Z

.field private readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

.field private sampleOffsetUs:J

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;

.field private writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V
    .locals 4
    .param p1, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 89
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocationLength:I

    .line 90
    new-instance v0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    .line 91
    new-instance v0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->extrasHolder:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    .line 92
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 93
    new-instance v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocationLength:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 95
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 96
    return-void
.end method

.method private advanceReadTo(J)V
    .locals 3
    .param p1, "absolutePosition"    # J

    .line 502
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 503
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method

.method private clearAllocationNodes(Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;)V
    .locals 5
    .param p1, "fromNode"    # Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 622
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_0

    .line 623
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->wasInitialized:Z

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->startPosition:J

    iget-wide v3, p1, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocationLength:I

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 630
    .local v0, "allocationCount":I
    new-array v1, v0, [Landroidx/media2/exoplayer/external/upstream/Allocation;

    .line 631
    .local v1, "allocationsToRelease":[Landroidx/media2/exoplayer/external/upstream/Allocation;
    move-object v2, p1

    .line 632
    .local v2, "currentNode":Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 633
    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    aput-object v4, v1, v3

    .line 634
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->clear()Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    move-result-object v2

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/upstream/Allocator;->release([Landroidx/media2/exoplayer/external/upstream/Allocation;)V

    .line 637
    return-void
.end method

.method private discardDownstreamTo(J)V
    .locals 5
    .param p1, "absolutePosition"    # J

    .line 517
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 518
    return-void

    .line 517
    :cond_0
    nop

    .line 520
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 521
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Allocator;->release(Landroidx/media2/exoplayer/external/upstream/Allocation;)V

    .line 522
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->clear()Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->startPosition:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 527
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_1

    .line 526
    :cond_2
    nop

    .line 529
    :goto_1
    return-void
.end method

.method private static getAdjustedSampleFormat(Landroidx/media2/exoplayer/external/Format;J)Landroidx/media2/exoplayer/external/Format;
    .locals 5
    .param p0, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "sampleOffsetUs"    # J

    .line 675
    if-nez p0, :cond_0

    .line 676
    const/4 v0, 0x0

    return-object v0

    .line 678
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 679
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithSubsampleOffsetUs(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    goto :goto_0

    .line 678
    :cond_1
    nop

    .line 681
    :goto_0
    return-object p0
.end method

.method private postAppend(I)V
    .locals 5
    .param p1, "length"    # I

    .line 661
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    .line 662
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 663
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 662
    :cond_0
    nop

    .line 665
    :goto_0
    return-void
.end method

.method private preAppend(I)I
    .locals 6
    .param p1, "length"    # I

    .line 648
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/Allocator;->allocate()Landroidx/media2/exoplayer/external/upstream/Allocation;

    move-result-object v1

    new-instance v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    iget v5, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->initialize(Landroidx/media2/exoplayer/external/upstream/Allocation;Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;)V

    goto :goto_0

    .line 648
    :cond_0
    nop

    .line 652
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # Ljava/nio/ByteBuffer;
    .param p4, "length"    # I

    .line 459
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceReadTo(J)V

    .line 460
    move v0, p4

    .line 461
    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_1

    .line 462
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 463
    .local v1, "toCopy":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    .line 464
    .local v2, "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/upstream/Allocation;->data:[B

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v4

    invoke-virtual {p3, v3, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 465
    sub-int/2addr v0, v1

    .line 466
    int-to-long v3, v1

    add-long/2addr p1, v3

    .line 467
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    .line 468
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_1

    .line 467
    :cond_0
    nop

    .line 470
    .end local v1    # "toCopy":I
    .end local v2    # "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    :goto_1
    goto :goto_0

    .line 471
    :cond_1
    return-void
.end method

.method private readData(J[BI)V
    .locals 6
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # [B
    .param p4, "length"    # I

    .line 481
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceReadTo(J)V

    .line 482
    move v0, p4

    .line 483
    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_1

    .line 484
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 485
    .local v1, "toCopy":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    .line 486
    .local v2, "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/upstream/Allocation;->data:[B

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v4

    sub-int v5, p4, v0

    invoke-static {v3, v4, p3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    sub-int/2addr v0, v1

    .line 489
    int-to-long v3, v1

    add-long/2addr p1, v3

    .line 490
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    .line 491
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_1

    .line 490
    :cond_0
    nop

    .line 493
    .end local v1    # "toCopy":I
    .end local v2    # "allocation":Landroidx/media2/exoplayer/external/upstream/Allocation;
    :goto_1
    goto :goto_0

    .line 494
    :cond_1
    return-void
.end method

.method private readEncryptionData(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;)V
    .locals 21
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p2, "extrasHolder"    # Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 390
    .local v3, "offset":J
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 391
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Landroidx/media2/exoplayer/external/source/SampleQueue;->readData(J[BI)V

    .line 392
    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 393
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    .line 394
    .local v5, "signalByte":B
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 395
    .local v6, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v8, v5, 0x7f

    .line 398
    .local v8, "ivSize":I
    iget-object v9, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->iv:[B

    if-nez v9, :cond_1

    .line 399
    iget-object v9, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->iv:[B

    goto :goto_1

    .line 398
    :cond_1
    nop

    .line 401
    :goto_1
    iget-object v9, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->iv:[B

    invoke-direct {v0, v3, v4, v9, v8}, Landroidx/media2/exoplayer/external/source/SampleQueue;->readData(J[BI)V

    .line 402
    int-to-long v9, v8

    add-long/2addr v3, v9

    .line 406
    if-eqz v6, :cond_2

    .line 407
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 408
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v9, v10}, Landroidx/media2/exoplayer/external/source/SampleQueue;->readData(J[BI)V

    .line 409
    const-wide/16 v9, 0x2

    add-long/2addr v3, v9

    .line 410
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    goto :goto_2

    .line 412
    :cond_2
    const/4 v9, 0x1

    .line 416
    .local v9, "subsampleCount":I
    :goto_2
    iget-object v10, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 417
    .local v10, "clearDataSizes":[I
    if-eqz v10, :cond_4

    array-length v11, v10

    if-ge v11, v9, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v19, v10

    goto :goto_4

    .line 418
    :cond_4
    :goto_3
    new-array v10, v9, [I

    move-object/from16 v19, v10

    .line 420
    .end local v10    # "clearDataSizes":[I
    .local v19, "clearDataSizes":[I
    :goto_4
    iget-object v10, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 421
    .local v10, "encryptedDataSizes":[I
    if-eqz v10, :cond_6

    array-length v11, v10

    if-ge v11, v9, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v20, v10

    goto :goto_6

    .line 422
    :cond_6
    :goto_5
    new-array v10, v9, [I

    move-object/from16 v20, v10

    .line 424
    .end local v10    # "encryptedDataSizes":[I
    .local v20, "encryptedDataSizes":[I
    :goto_6
    if-eqz v6, :cond_8

    .line 425
    mul-int/lit8 v10, v9, 0x6

    .line 426
    .local v10, "subsampleDataLength":I
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v11, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 427
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v11, v10}, Landroidx/media2/exoplayer/external/source/SampleQueue;->readData(J[BI)V

    .line 428
    int-to-long v11, v10

    add-long/2addr v3, v11

    .line 429
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v11, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 430
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v9, :cond_7

    .line 431
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    aput v11, v19, v7

    .line 432
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    aput v11, v20, v7

    .line 430
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 434
    .end local v7    # "i":I
    .end local v10    # "subsampleDataLength":I
    :cond_7
    goto :goto_8

    .line 435
    :cond_8
    aput v7, v19, v7

    .line 436
    iget v10, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    iget-wide v11, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v11, v3, v11

    long-to-int v12, v11

    sub-int/2addr v10, v12

    aput v10, v20, v7

    .line 440
    :goto_8
    iget-object v7, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 441
    .local v7, "cryptoData":Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
    iget-object v10, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    iget-object v14, v7, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v11, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    iget-object v15, v11, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->iv:[B

    iget v13, v7, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v12, v7, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v11, v7, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->clearBlocks:I

    move/from16 v18, v11

    move v11, v9

    move/from16 v17, v12

    move-object/from16 v12, v19

    move/from16 v16, v13

    move-object/from16 v13, v20

    invoke-virtual/range {v10 .. v18}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    .line 446
    iget-wide v10, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v10, v3, v10

    long-to-int v11, v10

    .line 447
    .local v11, "bytesRead":I
    iget-wide v12, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    int-to-long v14, v11

    add-long/2addr v12, v14

    iput-wide v12, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 448
    iget v10, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v10, v11

    iput v10, v2, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    .line 449
    return-void
.end method


# virtual methods
.method public advanceTo(JZZ)I
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "allowTimeBeyondBuffer"    # Z

    .line 308
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->advanceTo(JZZ)I

    move-result v0

    return v0
.end method

.method public advanceToEnd()I
    .locals 1

    .line 291
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->advanceToEnd()I

    move-result v0

    return v0
.end method

.method public discardTo(JZZ)V
    .locals 2
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    .line 268
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardTo(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardDownstreamTo(J)V

    .line 269
    return-void
.end method

.method public discardToEnd()V
    .locals 2

    .line 282
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardToEnd()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardDownstreamTo(J)V

    .line 283
    return-void
.end method

.method public discardToRead()V
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardToRead()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardDownstreamTo(J)V

    .line 276
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 7
    .param p1, "discardFromIndex"    # I

    .line 155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    .line 156
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 164
    .local v0, "lastNodeToKeep":Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    :goto_0
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 165
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 169
    .local v1, "firstNodeToDiscard":Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->clearAllocationNodes(Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;)V

    .line 171
    new-instance v2, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    iget v5, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 173
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_1

    .line 174
    :cond_2
    move-object v2, v0

    :goto_1
    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 175
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    if-ne v2, v1, :cond_3

    .line 176
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    goto :goto_3

    .line 175
    :cond_3
    goto :goto_3

    .line 156
    .end local v0    # "lastNodeToKeep":Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    .end local v1    # "firstNodeToDiscard":Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    :cond_4
    :goto_2
    nop

    .line 157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->clearAllocationNodes(Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;)V

    .line 158
    new-instance v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocationLength:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 159
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 160
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 179
    :goto_3
    return-void
.end method

.method public format(Landroidx/media2/exoplayer/external/Format;)V
    .locals 3
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 557
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->sampleOffsetUs:J

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getAdjustedSampleFormat(Landroidx/media2/exoplayer/external/Format;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 558
    .local v0, "adjustedFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->format(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v1

    .line 559
    .local v1, "formatChanged":Z
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->lastUnadjustedFormat:Landroidx/media2/exoplayer/external/Format;

    .line 560
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->pendingFormatAdjustment:Z

    .line 561
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 562
    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 561
    :cond_0
    nop

    .line 564
    :goto_0
    return-void
.end method

.method public getFirstIndex()I
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getFirstIndex()I

    move-result v0

    return v0
.end method

.method public getFirstTimestampUs()J
    .locals 2

    .line 246
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getFirstTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 2

    .line 232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public getWriteIndex()I
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasNextSample()Z
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    return v0
.end method

.method public isLastSampleQueued()Z
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued()Z

    move-result v0

    return v0
.end method

.method public peekSourceId()I
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->peekSourceId()I

    move-result v0

    return v0
.end method

.method public read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZJ)I
    .locals 7
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p2, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z
    .param p4, "loadingFinished"    # Z
    .param p5, "decodeOnlyUntilUs"    # J

    .line 347
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->downstreamFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->extrasHolder:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;)I

    move-result v0

    .line 349
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 372
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 370
    :pswitch_0
    const/4 v1, -0x3

    return v1

    .line 354
    :pswitch_1
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    if-nez v1, :cond_3

    .line 355
    iget-wide v1, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long v3, v1, p5

    if-gez v3, :cond_0

    .line 356
    const/high16 v1, -0x80000000

    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->addFlag(I)V

    goto :goto_0

    .line 355
    :cond_0
    nop

    .line 358
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 360
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->extrasHolder:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {p0, p2, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->readEncryptionData(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;)V

    goto :goto_1

    .line 360
    :cond_1
    nop

    .line 364
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->extrasHolder:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    iget v1, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 365
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->extrasHolder:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    iget-object v3, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->extrasHolder:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->readData(JLjava/nio/ByteBuffer;I)V

    goto :goto_2

    .line 358
    :cond_2
    goto :goto_2

    .line 354
    :cond_3
    nop

    .line 368
    :goto_2
    const/4 v1, -0x4

    return v1

    .line 351
    :pswitch_2
    iget-object v1, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->downstreamFormat:Landroidx/media2/exoplayer/external/Format;

    .line 352
    const/4 v1, -0x5

    return v1

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset(Z)V

    .line 105
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "resetUpstreamFormat"    # Z

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->reset(Z)V

    .line 117
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->clearAllocationNodes(Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;)V

    .line 118
    new-instance v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocationLength:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 119
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 120
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 121
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/Allocator;->trim()V

    .line 123
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->rewind()V

    .line 254
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->firstAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->readAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 255
    return-void
.end method

.method public sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 569
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->preAppend(I)I

    move-result p2

    .line 570
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/upstream/Allocation;->data:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    .line 571
    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    .line 570
    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 572
    .local v0, "bytesAppended":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 573
    if-eqz p3, :cond_0

    .line 574
    return v1

    .line 576
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 578
    :cond_1
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->postAppend(I)V

    .line 579
    return v0
.end method

.method public sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 5
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 584
    :goto_0
    if-lez p2, :cond_0

    .line 585
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->preAppend(I)I

    move-result v0

    .line 586
    .local v0, "bytesAppended":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/Allocation;->data:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->writeAllocationNode:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    .line 587
    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    .line 586
    invoke-virtual {p1, v1, v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 588
    sub-int/2addr p2, v0

    .line 589
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->postAppend(I)V

    .line 590
    .end local v0    # "bytesAppended":I
    goto :goto_0

    .line 591
    :cond_0
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V
    .locals 15
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 600
    move-object v0, p0

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->pendingFormatAdjustment:Z

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->lastUnadjustedFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 600
    :cond_0
    nop

    .line 603
    :goto_0
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->sampleOffsetUs:J

    add-long v1, p1, v1

    .line 604
    .end local p1    # "timeUs":J
    .local v1, "timeUs":J
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->pendingSplice:Z

    if-eqz v3, :cond_3

    .line 605
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->attemptSplice(J)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 608
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->pendingSplice:Z

    goto :goto_2

    .line 605
    :cond_2
    :goto_1
    nop

    .line 606
    return-void

    .line 604
    :cond_3
    nop

    .line 610
    :goto_2
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->totalBytesWritten:J

    move/from16 v11, p4

    int-to-long v5, v11

    sub-long/2addr v3, v5

    move/from16 v12, p5

    int-to-long v5, v12

    sub-long v13, v3, v5

    .line 611
    .local v13, "absoluteOffset":J
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    move-wide v4, v1

    move/from16 v6, p3

    move-wide v7, v13

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->commitSample(JIJILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 612
    return-void
.end method

.method public setReadPosition(I)Z
    .locals 1
    .param p1, "sampleIndex"    # I

    .line 320
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->setReadPosition(I)Z

    move-result v0

    return v0
.end method

.method public setSampleOffsetUs(J)V
    .locals 3
    .param p1, "sampleOffsetUs"    # J

    .line 549
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 550
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->sampleOffsetUs:J

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->pendingFormatAdjustment:Z

    goto :goto_0

    .line 549
    :cond_0
    nop

    .line 553
    :goto_0
    return-void
.end method

.method public setUpstreamFormatChangeListener(Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;

    .line 539
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;

    .line 540
    return-void
.end method

.method public sourceId(I)V
    .locals 1
    .param p1, "sourceId"    # I

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->metadataQueue:Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceId(I)V

    .line 132
    return-void
.end method

.method public splice()V
    .locals 1

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue;->pendingSplice:Z

    .line 139
    return-void
.end method
