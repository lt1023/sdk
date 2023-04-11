.class public final Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field private static final ID3_TAG:I = 0x494433

.field private static final MAX_PACKET_SIZE:I = 0x800

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE:I = 0x3e8


# instance fields
.field private averageFrameSize:I

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private firstFramePosition:J

.field private firstSampleTimestampUs:J

.field private final firstStreamSampleTimestampUs:J

.field private final flags:I

.field private hasCalculatedAverageFrameSize:Z

.field private hasOutputSeekMap:Z

.field private final packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 104
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 105
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "firstStreamSampleTimestampUs"    # J

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>(JI)V

    .line 109
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2
    .param p1, "firstStreamSampleTimestampUs"    # J
    .param p3, "flags"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstStreamSampleTimestampUs:J

    .line 118
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 119
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->flags:I

    .line 120
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;-><init>(Z)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    .line 121
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    .line 124
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 125
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 126
    return-void
.end method

.method private calculateAverageFrameSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .locals 10
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 267
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    if-eqz v0, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 271
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 272
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 274
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->peekId3Header(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    goto :goto_0

    .line 272
    :cond_1
    nop

    .line 277
    :goto_0
    const/4 v1, 0x0

    .line 278
    .local v1, "numValidFrames":I
    const-wide/16 v2, 0x0

    .line 279
    .local v2, "totalValidFramesSize":J
    :goto_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {p1, v4, v6, v5, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 281
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 282
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 283
    .local v4, "syncBytes":I
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 286
    const/4 v1, 0x0

    .line 287
    goto :goto_2

    .line 290
    :cond_2
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v8, 0x4

    invoke-interface {p1, v5, v6, v8, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 292
    goto :goto_2

    .line 294
    :cond_3
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 295
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 297
    .local v5, "currentFrameSize":I
    const/4 v6, 0x6

    if-le v5, v6, :cond_6

    .line 301
    int-to-long v8, v5

    add-long/2addr v2, v8

    .line 302
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x3e8

    if-ne v1, v6, :cond_4

    .line 303
    goto :goto_2

    .line 305
    :cond_4
    add-int/lit8 v6, v5, -0x6

    invoke-interface {p1, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result v6

    if-nez v6, :cond_5

    .line 306
    goto :goto_2

    .line 305
    :cond_5
    nop

    .line 309
    .end local v4    # "syncBytes":I
    .end local v5    # "currentFrameSize":I
    goto :goto_1

    .line 298
    .restart local v4    # "syncBytes":I
    .restart local v5    # "currentFrameSize":I
    :cond_6
    iput-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    .line 299
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v6, "Malformed ADTS stream"

    invoke-direct {v0, v6}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v4    # "syncBytes":I
    .end local v5    # "currentFrameSize":I
    :cond_7
    nop

    .line 310
    :goto_2
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 311
    if-lez v1, :cond_8

    .line 312
    int-to-long v4, v1

    div-long v4, v2, v4

    long-to-int v0, v4

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    goto :goto_3

    .line 314
    :cond_8
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 316
    :goto_3
    iput-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    .line 317
    return-void
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .locals 4
    .param p0, "frameSize"    # I
    .param p1, "durationUsPerFrame"    # J

    .line 332
    mul-int/lit8 v0, p0, 0x8

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    div-long/2addr v0, p1

    long-to-int v1, v0

    return v1
.end method

.method private getConstantBitrateSeekMap(J)Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .locals 10
    .param p1, "inputLength"    # J

    .line 320
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v0

    .line 321
    .local v0, "bitrate":I
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    move-object v3, v1

    move-wide v4, p1

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;-><init>(JJII)V

    return-object v1
.end method

.method static final synthetic lambda$static$0$AdtsExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(JZZ)V
    .locals 8
    .param p1, "inputLength"    # J
    .param p3, "canUseConstantBitrateSeeking"    # Z
    .param p4, "readEndOfStream"    # Z

    .line 244
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 248
    .local v1, "useConstantBitrateSeeking":Z
    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    .line 249
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    if-nez p4, :cond_2

    .line 253
    return-void

    .line 249
    :cond_2
    goto :goto_1

    .line 248
    :cond_3
    nop

    .line 256
    :goto_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 257
    .local v4, "extractorOutput":Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    if-eqz v1, :cond_4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_4

    .line 258
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->getConstantBitrateSeekMap(J)Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_2

    .line 257
    :cond_4
    nop

    .line 260
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    invoke-direct {v5, v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v4, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 262
    :goto_2
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    .line 263
    return-void
.end method

.method private peekId3Header(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "firstFramePosition":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 225
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 226
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    const v2, 0x494433

    if-eq v1, v2, :cond_1

    .line 227
    nop

    .line 234
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 235
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 236
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 237
    int-to-long v1, v0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    goto :goto_1

    .line 236
    :cond_0
    nop

    .line 239
    :goto_1
    return v0

    .line 229
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 230
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    .line 231
    .local v1, "length":I
    add-int/lit8 v2, v1, 0xa

    add-int/2addr v0, v2

    .line 232
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 233
    .end local v1    # "length":I
    goto :goto_0
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 172
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 174
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 175
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 11
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 193
    .local v0, "inputLength":J
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 195
    .local v2, "canUseConstantBitrateSeeking":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 196
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->calculateAverageFrameSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    goto :goto_1

    .line 195
    :cond_1
    nop

    .line 199
    :goto_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v6, 0x800

    invoke-interface {p1, v5, v4, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result v5

    .line 200
    .local v5, "bytesRead":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 201
    .local v7, "readEndOfStream":Z
    :goto_2
    invoke-direct {p0, v0, v1, v2, v7}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->maybeOutputSeekMap(JZZ)V

    .line 202
    if-eqz v7, :cond_3

    .line 203
    return v6

    .line 207
    :cond_3
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 208
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 210
    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez v6, :cond_4

    .line 212
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    const/4 v10, 0x4

    invoke-virtual {v6, v8, v9, v10}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->packetStarted(JI)V

    .line 213
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->startedPacket:Z

    goto :goto_3

    .line 210
    :cond_4
    nop

    .line 217
    :goto_3
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 218
    return v4
.end method

.method public release()V
    .locals 0

    .line 187
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->seek()V

    .line 181
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstStreamSampleTimestampUs:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 182
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->peekId3Header(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    .line 136
    .local v0, "startPosition":I
    move v1, v0

    .line 137
    .local v1, "headerPosition":I
    const/4 v2, 0x0

    .line 138
    .local v2, "totalValidFramesSize":I
    const/4 v3, 0x0

    .line 140
    .local v3, "validFramesCount":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {p1, v4, v6, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 141
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 142
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 143
    .local v4, "syncBytes":I
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    const/4 v3, 0x0

    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 147
    add-int/lit8 v1, v1, 0x1

    sub-int v5, v1, v0

    const/16 v7, 0x2000

    if-lt v5, v7, :cond_0

    .line 148
    return v6

    .line 150
    :cond_0
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    .line 152
    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x4

    if-lt v3, v5, :cond_2

    const/16 v7, 0xbc

    if-le v2, v7, :cond_2

    .line 153
    const/4 v5, 0x1

    return v5

    .line 152
    :cond_2
    nop

    .line 157
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v7, v6, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 158
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0xe

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 159
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 161
    .local v5, "frameSize":I
    const/4 v7, 0x6

    if-gt v5, v7, :cond_3

    .line 162
    return v6

    .line 164
    :cond_3
    add-int/lit8 v6, v5, -0x6

    invoke-interface {p1, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 165
    add-int/2addr v2, v5

    .line 167
    .end local v4    # "syncBytes":I
    .end local v5    # "frameSize":I
    :goto_1
    goto :goto_0
.end method
