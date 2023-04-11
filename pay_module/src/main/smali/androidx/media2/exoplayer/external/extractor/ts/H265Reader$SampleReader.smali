.class final Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final FIRST_SLICE_FLAG_OFFSET:I = 0x2


# instance fields
.field private isFirstParameterSet:Z

.field private isFirstSlice:Z

.field private lookingForFirstSliceFlag:Z

.field private nalUnitBytesRead:I

.field private nalUnitHasKeyframeData:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private final output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private writingParameterSets:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 426
    return-void
.end method

.method private outputSample(I)V
    .locals 8
    .param p1, "offset"    # I

    .line 493
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 494
    .local v3, "flags":I
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v7, v0

    .line 495
    .local v7, "size":I
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v4, v7

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 496
    return-void
.end method


# virtual methods
.method public endNalUnit(JI)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "offset"    # I

    .line 474
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_0

    .line 476
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    goto :goto_2

    .line 474
    :cond_0
    nop

    .line 478
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_2

    .line 480
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_3

    .line 482
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 483
    .local v1, "nalUnitLength":I
    add-int v0, p3, v1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    goto :goto_1

    .line 480
    .end local v1    # "nalUnitLength":I
    :cond_3
    nop

    .line 485
    :goto_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 486
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 488
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 490
    :goto_2
    return-void
.end method

.method public readNalUnitData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 462
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_2

    .line 463
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v1

    .line 464
    .local v0, "headerOffset":I
    if-ge v0, p3, :cond_1

    .line 465
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 466
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1

    .line 468
    :cond_1
    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    goto :goto_1

    .line 462
    .end local v0    # "headerOffset":I
    :cond_2
    nop

    .line 471
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 430
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 431
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 432
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 433
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    .line 434
    return-void
.end method

.method public startNalUnit(JIIJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 438
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 439
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 440
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 441
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    .line 443
    const/4 v1, 0x1

    const/16 v2, 0x20

    if-lt p4, v2, :cond_2

    .line 444
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v2, :cond_0

    .line 446
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 447
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    goto :goto_0

    .line 444
    :cond_0
    nop

    .line 449
    :goto_0
    const/16 v2, 0x22

    if-gt p4, v2, :cond_1

    .line 451
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 452
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    goto :goto_1

    .line 449
    :cond_1
    goto :goto_1

    .line 443
    :cond_2
    nop

    .line 457
    :goto_1
    const/16 v2, 0x10

    if-lt p4, v2, :cond_3

    const/16 v2, 0x15

    if-gt p4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    .line 458
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez v2, :cond_5

    const/16 v2, 0x9

    if-gt p4, v2, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 459
    return-void
.end method
