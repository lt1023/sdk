.class final Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field private static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;ZZ)V
    .locals 3
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .param p2, "allowNonIdrKeyframes"    # Z
    .param p3, "detectAccessUnits"    # Z

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 283
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 284
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 285
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 286
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 287
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 288
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$1;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 289
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 290
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    .line 291
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 292
    return-void
.end method

.method private outputSample(I)V
    .locals 8
    .param p1, "offset"    # I

    .line 474
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 475
    .local v3, "flags":I
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v7, v0

    .line 476
    .local v7, "size":I
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v4, v7

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 477
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 34
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 338
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    sub-int v2, p3, v1

    .line 342
    .local v2, "readLength":I
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    .line 343
    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->buffer:[B

    goto :goto_0

    .line 342
    :cond_1
    nop

    .line 345
    :goto_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 348
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v6}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 349
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 350
    return-void

    .line 352
    :cond_2
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 353
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 354
    .local v3, "nalRefIdc":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 358
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-nez v4, :cond_3

    .line 359
    return-void

    .line 361
    :cond_3
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 362
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v4

    if-nez v4, :cond_4

    .line 363
    return-void

    .line 365
    :cond_4
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 366
    .local v4, "sliceType":I
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v9, :cond_5

    .line 368
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 369
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v6, v4}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    .line 370
    return-void

    .line 372
    :cond_5
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v9

    if-nez v9, :cond_6

    .line 373
    return-void

    .line 375
    :cond_6
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 376
    .local v15, "picParameterSetId":I
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_7

    .line 378
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 379
    return-void

    .line 381
    :cond_7
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;

    .line 382
    .local v14, "ppsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v10, v14, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    .line 383
    .local v13, "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    iget-boolean v9, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v9, :cond_9

    .line 384
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v9, v7}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 385
    return-void

    .line 387
    :cond_8
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v9, v7}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_1

    .line 383
    :cond_9
    nop

    .line 389
    :goto_1
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget v9, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v7, v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 390
    return-void

    .line 392
    :cond_a
    const/4 v7, 0x0

    .line 393
    .local v7, "fieldPicFlag":Z
    const/4 v9, 0x0

    .line 394
    .local v9, "bottomFieldFlagPresent":Z
    const/4 v10, 0x0

    .line 395
    .local v10, "bottomFieldFlag":Z
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget v12, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v24

    .line 396
    .local v24, "frameNum":I
    iget-boolean v11, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v12, 0x1

    if-nez v11, :cond_e

    .line 397
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 398
    return-void

    .line 400
    :cond_b
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    .line 401
    if-eqz v7, :cond_d

    .line 402
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_c

    .line 403
    return-void

    .line 405
    :cond_c
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 406
    const/4 v9, 0x1

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_2

    .line 401
    :cond_d
    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_2

    .line 396
    :cond_e
    move/from16 v25, v9

    move/from16 v26, v10

    .line 409
    .end local v9    # "bottomFieldFlagPresent":Z
    .end local v10    # "bottomFieldFlag":Z
    .local v25, "bottomFieldFlagPresent":Z
    .local v26, "bottomFieldFlag":Z
    :goto_2
    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v9, v6, :cond_f

    const/4 v6, 0x1

    goto :goto_3

    :cond_f
    const/4 v6, 0x0

    .line 410
    .local v6, "idrPicFlag":Z
    :goto_3
    const/4 v9, 0x0

    .line 411
    .local v9, "idrPicId":I
    if-eqz v6, :cond_11

    .line 412
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v10

    if-nez v10, :cond_10

    .line 413
    return-void

    .line 415
    :cond_10
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    move/from16 v27, v9

    goto :goto_4

    .line 411
    :cond_11
    move/from16 v27, v9

    .line 417
    .end local v9    # "idrPicId":I
    .local v27, "idrPicId":I
    :goto_4
    const/4 v9, 0x0

    .line 418
    .local v9, "picOrderCntLsb":I
    const/4 v10, 0x0

    .line 419
    .local v10, "deltaPicOrderCntBottom":I
    const/4 v11, 0x0

    .line 420
    .local v11, "deltaPicOrderCnt0":I
    const/16 v16, 0x0

    .line 421
    .local v16, "deltaPicOrderCnt1":I
    iget v8, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v8, :cond_15

    .line 422
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget v12, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v8

    if-nez v8, :cond_12

    .line 423
    return-void

    .line 425
    :cond_12
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget v12, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 426
    .end local v9    # "picOrderCntLsb":I
    .local v8, "picOrderCntLsb":I
    iget-boolean v9, v14, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v9, :cond_14

    if-nez v7, :cond_14

    .line 427
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v9

    if-nez v9, :cond_13

    .line 428
    return-void

    .line 430
    :cond_13
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v9

    move/from16 v28, v9

    move/from16 v29, v11

    move/from16 v30, v16

    goto :goto_5

    .line 426
    :cond_14
    nop

    .line 445
    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v16

    goto :goto_5

    .line 432
    .end local v8    # "picOrderCntLsb":I
    .restart local v9    # "picOrderCntLsb":I
    :cond_15
    iget v8, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v8, v12, :cond_19

    iget-boolean v8, v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v8, :cond_19

    .line 434
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v8

    if-nez v8, :cond_16

    .line 435
    return-void

    .line 437
    :cond_16
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v8

    .line 438
    .end local v11    # "deltaPicOrderCnt0":I
    .local v8, "deltaPicOrderCnt0":I
    iget-boolean v11, v14, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v11, :cond_18

    if-nez v7, :cond_18

    .line 439
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v11

    if-nez v11, :cond_17

    .line 440
    return-void

    .line 442
    :cond_17
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v11

    move/from16 v29, v8

    move v8, v9

    move/from16 v28, v10

    move/from16 v30, v11

    goto :goto_5

    .line 438
    :cond_18
    nop

    .line 445
    move/from16 v29, v8

    move v8, v9

    move/from16 v28, v10

    move/from16 v30, v16

    goto :goto_5

    .line 432
    .end local v8    # "deltaPicOrderCnt0":I
    .restart local v11    # "deltaPicOrderCnt0":I
    :cond_19
    nop

    .line 445
    move v8, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v16

    .end local v9    # "picOrderCntLsb":I
    .end local v10    # "deltaPicOrderCntBottom":I
    .end local v11    # "deltaPicOrderCnt0":I
    .end local v16    # "deltaPicOrderCnt1":I
    .local v8, "picOrderCntLsb":I
    .local v28, "deltaPicOrderCntBottom":I
    .local v29, "deltaPicOrderCnt0":I
    .local v30, "deltaPicOrderCnt1":I
    :goto_5
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    move-object v10, v13

    move v11, v3

    move v12, v4

    move-object/from16 v31, v13

    .end local v13    # "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    .local v31, "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    move/from16 v13, v24

    move-object/from16 v32, v14

    .end local v14    # "ppsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    .local v32, "ppsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    move v14, v15

    move/from16 v33, v15

    .end local v15    # "picParameterSetId":I
    .local v33, "picParameterSetId":I
    move v15, v7

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v6

    move/from16 v19, v27

    move/from16 v20, v8

    move/from16 v21, v28

    move/from16 v22, v29

    move/from16 v23, v30

    invoke-virtual/range {v9 .. v23}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 448
    const/4 v9, 0x0

    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 449
    return-void
.end method

.method public endNalUnit(JIZZ)Z
    .locals 6
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "hasOutputFormat"    # Z
    .param p5, "randomAccessIndicator"    # Z

    .line 453
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 454
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 453
    :cond_1
    goto :goto_2

    .line 456
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_3

    .line 457
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v3, p1, v3

    long-to-int v0, v3

    .line 458
    .local v0, "nalUnitLength":I
    add-int v3, p3, v0

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    goto :goto_1

    .line 456
    .end local v0    # "nalUnitLength":I
    :cond_3
    nop

    .line 460
    :goto_1
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 461
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 462
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 463
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 466
    :goto_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result v0

    goto :goto_3

    :cond_4
    move v0, p5

    .line 467
    .local v0, "treatIFrameAsKeyframe":Z
    :goto_3
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    if-eqz v0, :cond_5

    if-ne v4, v2, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    :goto_5
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 470
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return v1
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;)V
    .locals 2
    .param p1, "ppsData"    # Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;

    .line 303
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 304
    return-void
.end method

.method public putSps(Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;)V
    .locals 2
    .param p1, "spsData"    # Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 300
    return-void
.end method

.method public reset()V
    .locals 1

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 308
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 309
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 310
    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "type"    # I
    .param p4, "pesTimeUs"    # J

    .line 313
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 314
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 315
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 316
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_2

    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 321
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 322
    .local v0, "newSliceHeader":Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 323
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 324
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 325
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 326
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    goto :goto_3

    .line 316
    .end local v0    # "newSliceHeader":Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    :cond_2
    nop

    .line 328
    :goto_3
    return-void
.end method
