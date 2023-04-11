.class final Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final PES_SCRATCH_SIZE:I = 0x40


# instance fields
.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private final pesPayloadReader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private ptsFlag:Z

.field private seenFirstDts:Z

.field private timeUs:J

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .locals 2
    .param p1, "pesPayloadReader"    # Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;
    .param p2, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    .line 323
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 324
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 325
    return-void
.end method

.method private parseHeader()V
    .locals 3

    .line 363
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 364
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    .line 365
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    .line 368
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 369
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    .line 370
    return-void
.end method

.method private parseHeaderExtension()V
    .locals 10

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 374
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 376
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 377
    .local v3, "pts":J
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 378
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 379
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 380
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 381
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 382
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 383
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 384
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 385
    .local v0, "dts":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 386
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 387
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 388
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 389
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 395
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 396
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    goto :goto_0

    .line 382
    .end local v0    # "dts":J
    :cond_0
    nop

    .line 398
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->timeUs:J

    goto :goto_1

    .line 374
    .end local v3    # "pts":J
    :cond_1
    nop

    .line 400
    :goto_1
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 4
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 347
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 348
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    .line 349
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 350
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 351
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    .line 352
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 353
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 355
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 356
    return-void
.end method

.method public seek()V
    .locals 1

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 336
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->seek()V

    .line 337
    return-void
.end method
