.class public final Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

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
        Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field private static final MAX_FRAME_SIZE_BYTES:I

.field private static final NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD:I = 0x14

.field private static final SAMPLE_RATE_NB:I = 0x1f40

.field private static final SAMPLE_RATE_WB:I = 0x3e80

.field private static final SAMPLE_TIME_PER_FRAME_US:I = 0x4e20

.field private static final amrSignatureNb:[B

.field private static final amrSignatureWb:[B

.field private static final frameSizeBytesByTypeNb:[I

.field private static final frameSizeBytesByTypeWb:[I


# instance fields
.field private currentSampleBytesRemaining:I

.field private currentSampleSize:I

.field private currentSampleTimeUs:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private firstSampleSize:I

.field private final flags:I

.field private hasOutputFormat:Z

.field private hasOutputSeekMap:Z

.field private isWideBand:Z

.field private numSamplesWithSameSize:I

.field private final scratch:[B

.field private seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeOffsetUs:J

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 77
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    .line 100
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    .line 119
    const-string v0, "#!AMR\n"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    .line 120
    const-string v0, "#!AMR-WB\n"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    .line 123
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;-><init>(I)V

    .line 154
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->flags:I

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->scratch:[B

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 161
    return-void
.end method

.method static amrSignatureNb()[B
    .locals 2

    .line 217
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static amrSignatureWb()[B
    .locals 2

    .line 221
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static frameSizeBytesByTypeNb(I)I
    .locals 1
    .param p0, "frameType"    # I

    .line 209
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget v0, v0, p0

    return v0
.end method

.method static frameSizeBytesByTypeWb(I)I
    .locals 1
    .param p0, "frameType"    # I

    .line 213
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget v0, v0, p0

    return v0
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .locals 4
    .param p0, "frameSize"    # I
    .param p1, "durationUsPerFrame"    # J

    .line 387
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

    .line 375
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v0

    .line 376
    .local v0, "bitrate":I
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    move-object v3, v1

    move-wide v4, p1

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;-><init>(JJII)V

    return-object v1
.end method

.method private getFrameSizeInBytes(I)I
    .locals 4
    .param p1, "frameType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 331
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    .line 333
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_0

    const-string v1, "WB"

    goto :goto_0

    :cond_0
    const-string v1, "NB"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal AMR "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frame type "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget v0, v0, p1

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget v0, v0, p1

    :goto_1
    return v0
.end method

.method private isNarrowBandValidFrameType(I)Z
    .locals 1
    .param p1, "frameType"    # I

    .line 352
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidFrameType(I)Z
    .locals 1
    .param p1, "frameType"    # I

    .line 340
    if-ltz p1, :cond_2

    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 342
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBandValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isNarrowBandValidFrameType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 340
    :cond_2
    nop

    .line 342
    :goto_1
    const/4 v0, 0x0

    .line 340
    :goto_2
    return v0
.end method

.method private isWideBandValidFrameType(I)Z
    .locals 1
    .param p1, "frameType"    # I

    .line 347
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final synthetic lambda$static$0$AmrExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputFormat()V
    .locals 13

    .line 255
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    if-nez v0, :cond_2

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    .line 257
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_0

    const-string v0, "audio/amr-wb"

    goto :goto_0

    :cond_0
    const-string v0, "audio/3gpp"

    :goto_0
    move-object v2, v0

    .line 258
    .local v2, "mimeType":Ljava/lang/String;
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    const/16 v7, 0x3e80

    goto :goto_1

    :cond_1
    const/16 v0, 0x1f40

    const/16 v7, 0x1f40

    .line 259
    .local v7, "sampleRate":I
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget v5, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 260
    invoke-static/range {v1 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 259
    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_2

    .line 255
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v7    # "sampleRate":I
    :cond_2
    nop

    .line 274
    :goto_2
    return-void
.end method

.method private maybeOutputSeekMap(JI)V
    .locals 4
    .param p1, "inputLength"    # J
    .param p3, "sampleReadResult"    # I

    .line 356
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 366
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v3, 0x14

    if-ge v0, v3, :cond_3

    if-ne p3, v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 368
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->getConstantBitrateSeekMap(J)Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 369
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 370
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    goto :goto_2

    .line 360
    :cond_4
    :goto_1
    nop

    .line 363
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 364
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 365
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    .line 372
    :goto_2
    return-void
.end method

.method private peekAmrSignature(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[B)Z
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "amrSignature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 248
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 249
    array-length v0, p2

    new-array v0, v0, [B

    .line 250
    .local v0, "header":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 251
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private peekNextSampleSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .locals 4
    .param p1, "extractorInput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 316
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 319
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->scratch:[B

    aget-byte v0, v0, v1

    .line 320
    .local v0, "frameHeader":B
    and-int/lit16 v1, v0, 0x83

    if-gtz v1, :cond_0

    .line 326
    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, 0xf

    .line 327
    .local v1, "frameType":I
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->getFrameSizeInBytes(I)I

    move-result v2

    return v2

    .line 323
    .end local v1    # "frameType":I
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid padding bits for frame header "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readAmrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 3
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 233
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->peekAmrSignature(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[B)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 234
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 235
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 236
    return v2

    .line 237
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->peekAmrSignature(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 239
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 240
    return v2

    .line 242
    :cond_1
    return v1
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .locals 10
    .param p1, "extractorInput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 277
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_2

    .line 279
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->peekNextSampleSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    nop

    .line 283
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 284
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v0, v2, :cond_0

    .line 285
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSamplePosition:J

    .line 286
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    goto :goto_0

    .line 284
    :cond_0
    nop

    .line 288
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v0, v3, :cond_1

    .line 289
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    goto :goto_1

    .line 288
    :cond_1
    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/EOFException;
    return v2

    .line 277
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_2
    nop

    .line 293
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 294
    invoke-interface {v0, p1, v3, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v0

    .line 296
    .local v0, "bytesAppended":I
    if-ne v0, v2, :cond_3

    .line 297
    return v2

    .line 299
    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 300
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 v2, 0x0

    if-lez v1, :cond_4

    .line 301
    return v2

    .line 304
    :cond_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v4, v6

    const/4 v6, 0x1

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 310
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const-wide/16 v5, 0x4e20

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    .line 311
    return v2
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 172
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 174
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 175
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 5
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 181
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Could not find AMR header."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    nop

    .line 185
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->maybeOutputFormat()V

    .line 186
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    .line 187
    .local v0, "sampleReadResult":I
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->maybeOutputSeekMap(JI)V

    .line 188
    return v0
.end method

.method public release()V
    .locals 0

    .line 206
    return-void
.end method

.method public seek(JJ)V
    .locals 4
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    .line 194
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    .line 195
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 196
    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    instance-of v3, v2, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    if-eqz v3, :cond_0

    .line 197
    check-cast v2, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    invoke-virtual {v2, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->timeOffsetUs:J

    goto :goto_0

    .line 196
    :cond_0
    nop

    .line 199
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->timeOffsetUs:J

    .line 201
    :goto_0
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
