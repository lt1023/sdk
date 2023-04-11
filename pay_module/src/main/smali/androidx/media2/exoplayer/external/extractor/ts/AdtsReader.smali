.class public final Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_CHECKING_ADTS_HEADER:I = 0x1

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x3

.field private static final STATE_READING_ID3_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AdtsReader"

.field private static final VERSION_UNSET:I = -0x1


# instance fields
.field private final adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private bytesRead:I

.field private currentFrameVersion:I

.field private currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private firstFrameSampleRateIndex:I

.field private firstFrameVersion:I

.field private formatId:Ljava/lang/String;

.field private foundFirstFrame:Z

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "exposeId3"    # Z

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3
    .param p1, "exposeId3"    # Z
    .param p2, "language"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 115
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 116
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 118
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 119
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 120
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->exposeId3:Z

    .line 121
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private checkAdtsHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 4
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 329
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 336
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 337
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 338
    .local v0, "currentFrameSampleRateIndex":I
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 341
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->resetSync()V

    .line 342
    return-void

    .line 338
    :cond_1
    nop

    .line 345
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v1, :cond_2

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 347
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 348
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    goto :goto_0

    .line 345
    :cond_2
    nop

    .line 350
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 351
    return-void
.end method

.method private checkSyncPositionValid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z
    .locals 9
    .param p1, "pesBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "syncPositionCandidate"    # I

    .line 377
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 378
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 379
    return v2

    .line 382
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 383
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 384
    .local v0, "currentFrameVersion":I
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    .line 385
    return v2

    .line 384
    :cond_1
    nop

    .line 388
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v5, :cond_4

    .line 389
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    .line 390
    return v1

    .line 392
    :cond_2
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 393
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 394
    .local v4, "currentFrameSampleRateIndex":I
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v6, :cond_3

    .line 395
    return v2

    .line 397
    :cond_3
    add-int/lit8 v6, p2, 0x2

    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 388
    .end local v4    # "currentFrameSampleRateIndex":I
    :cond_4
    nop

    .line 402
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v3}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    .line 403
    return v1

    .line 405
    :cond_5
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 406
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 407
    .local v3, "frameSize":I
    const/4 v4, 0x6

    if-gt v3, v4, :cond_6

    .line 409
    return v2

    .line 411
    :cond_6
    add-int v4, p2, v3

    .line 412
    .local v4, "nextSyncPosition":I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v7

    if-lt v6, v7, :cond_7

    .line 413
    return v1

    .line 415
    :cond_7
    iget-object v6, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v6, v6, v4

    iget-object v7, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    invoke-direct {p0, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    if-eq v6, v5, :cond_8

    iget-object v5, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0x8

    shr-int/lit8 v5, v5, 0x3

    if-ne v5, v0, :cond_9

    :cond_8
    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 212
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    .local v0, "bytesToRead":I
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 214
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 215
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private findNextSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 8
    .param p1, "pesBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 276
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 277
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 278
    .local v1, "position":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    .line 279
    .local v2, "endOffset":I
    :goto_0
    if-ge v1, v2, :cond_a

    .line 280
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "position":I
    .local v3, "position":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 281
    .local v1, "data":I
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_4

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-direct {p0, v6, v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 282
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, -0x2

    .line 283
    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->checkSyncPositionValid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_4

    .line 282
    :cond_1
    nop

    .line 284
    :goto_1
    and-int/lit8 v4, v1, 0x8

    shr-int/lit8 v4, v4, 0x3

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentFrameVersion:I

    .line 285
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasCrc:Z

    .line 286
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v4, :cond_3

    .line 287
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setCheckingAdtsHeaderState()V

    goto :goto_3

    .line 289
    :cond_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 291
    :goto_3
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 292
    return-void

    .line 281
    :cond_4
    nop

    .line 296
    :goto_4
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    or-int v6, v4, v1

    const/16 v7, 0x149

    if-eq v6, v7, :cond_9

    const/16 v7, 0x1ff

    if-eq v6, v7, :cond_8

    const/16 v5, 0x344

    if-eq v6, v5, :cond_7

    const/16 v5, 0x433

    if-eq v6, v5, :cond_6

    .line 311
    const/16 v5, 0x100

    if-eq v4, v5, :cond_5

    .line 314
    iput v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    .line 315
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_6

    .line 311
    :cond_5
    goto :goto_5

    .line 307
    :cond_6
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 308
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 309
    return-void

    .line 304
    :cond_7
    const/16 v4, 0x400

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    .line 305
    goto :goto_5

    .line 298
    :cond_8
    iput v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    .line 299
    goto :goto_5

    .line 301
    :cond_9
    const/16 v4, 0x300

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    .line 302
    nop

    .line 319
    .end local v1    # "data":I
    :goto_5
    move v1, v3

    .end local v3    # "position":I
    .local v1, "position":I
    :goto_6
    goto :goto_0

    .line 320
    :cond_a
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 321
    return-void
.end method

.method private isAdtsSyncBytes(BB)Z
    .locals 2
    .param p1, "firstByte"    # B
    .param p2, "secondByte"    # B

    .line 421
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    .line 422
    .local v0, "syncWord":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v1

    return v1
.end method

.method public static isAdtsSyncWord(I)Z
    .locals 2
    .param p0, "candidateSyncWord"    # I

    .line 126
    const v0, 0xfff6

    and-int/2addr v0, p0

    const v1, 0xfff0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseAdtsHeader()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 448
    move-object/from16 v6, p0

    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 450
    iget-boolean v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasOutputFormat:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 451
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 452
    .local v0, "audioObjectType":I
    if-eq v0, v2, :cond_0

    .line 462
    const-string v4, "AdtsReader"

    const/16 v5, 0x3d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Detected audio object type: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", but assuming AAC LC."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x2

    goto :goto_0

    .line 452
    :cond_0
    nop

    .line 466
    :goto_0
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 467
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 469
    .local v4, "channelConfig":I
    iget v5, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 470
    invoke-static {v0, v5, v4}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v5

    .line 472
    .local v5, "audioSpecificConfig":[B
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v7

    .line 475
    .local v7, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget-object v13, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    .line 476
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v14, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 477
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v1, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 475
    move-object/from16 v18, v1

    invoke-static/range {v8 .. v18}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 480
    .local v1, "format":Landroidx/media2/exoplayer/external/Format;
    const-wide/32 v8, 0x3d090000

    iget v10, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    iput-wide v8, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 481
    iget-object v8, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v8, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 482
    iput-boolean v3, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 483
    .end local v0    # "audioObjectType":I
    .end local v1    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v4    # "channelConfig":I
    .end local v5    # "audioSpecificConfig":[B
    .end local v7    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 484
    :cond_1
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 487
    :goto_1
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 488
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    .line 489
    .local v0, "sampleSize":I
    iget-boolean v1, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_2

    .line 490
    add-int/lit8 v0, v0, -0x2

    move v7, v0

    goto :goto_2

    .line 489
    :cond_2
    move v7, v0

    .line 493
    .end local v0    # "sampleSize":I
    .local v7, "sampleSize":I
    :goto_2
    iget-object v1, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v2, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media2/exoplayer/external/extractor/TrackOutput;JII)V

    .line 494
    return-void
.end method

.method private parseId3Header()V
    .locals 9

    .line 438
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 440
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 441
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    .line 440
    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media2/exoplayer/external/extractor/TrackOutput;JII)V

    .line 442
    return-void
.end method

.method private readSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 9
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 500
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 501
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 502
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 503
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v1, v6, :cond_0

    .line 504
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 505
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    .line 506
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setFindingSampleState()V

    goto :goto_0

    .line 503
    :cond_0
    nop

    .line 508
    :goto_0
    return-void
.end method

.method private resetSync()V
    .locals 1

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 199
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 200
    return-void
.end method

.method private setCheckingAdtsHeaderState()V
    .locals 1

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 267
    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 223
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 224
    const/16 v0, 0x100

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    .line 225
    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    .line 259
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 261
    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 2

    .line 232
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 233
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    .line 235
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 236
    return-void
.end method

.method private setReadingSampleState(Landroidx/media2/exoplayer/external/extractor/TrackOutput;JII)V
    .locals 1
    .param p1, "outputToUse"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .param p2, "currentSampleDuration"    # J
    .param p4, "priorReadBytes"    # I
    .param p5, "sampleSize"    # I

    .line 248
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 249
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 250
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 251
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 252
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    .line 253
    return-void
.end method

.method private tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 427
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    .line 428
    return v1

    .line 430
    :cond_0
    invoke-virtual {p1, p2, v1, p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 431
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 2
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_3

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 176
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->readSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 177
    goto :goto_0

    .line 170
    :pswitch_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    .line 171
    .local v0, "targetLength":I
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    .line 171
    :cond_1
    goto :goto_0

    .line 162
    .end local v0    # "targetLength":I
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 162
    :cond_2
    goto :goto_0

    .line 167
    :pswitch_3
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->checkAdtsHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 168
    goto :goto_0

    .line 159
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->findNextSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 160
    goto :goto_0

    .line 182
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 5
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 136
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 137
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 138
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 139
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 141
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 142
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/id3"

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 147
    :goto_0
    return-void
.end method

.method public getSampleDurationUs()J
    .locals 2

    .line 194
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    return-wide v0
.end method

.method public packetFinished()V
    .locals 0

    .line 187
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 151
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    .line 152
    return-void
.end method

.method public seek()V
    .locals 0

    .line 131
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->resetSync()V

    .line 132
    return-void
.end method
