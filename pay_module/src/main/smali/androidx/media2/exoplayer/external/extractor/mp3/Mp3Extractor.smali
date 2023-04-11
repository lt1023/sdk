.class public final Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

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
        Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;,
        Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x2

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field private static final MAX_SNIFF_BYTES:I = 0x4000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I = 0x496e666f

.field private static final SEEK_HEADER_UNSET:I = 0x0

.field private static final SEEK_HEADER_VBRI:I = 0x56425249

.field private static final SEEK_HEADER_XING:I = 0x58696e67


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

.field private final id3Peeker:Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

.field private metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 80
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$$Lambda$1;->$instance:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 129
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 135
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 136
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "forcedFirstSampleTimestampUs"    # J

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    .line 145
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 146
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 147
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    .line 148
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    .line 149
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 150
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

    .line 151
    return-void
.end method

.method private getConstantBitrateSeeker(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    .locals 8
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 416
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 417
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z

    .line 418
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)V

    return-object v0
.end method

.method private static getSeekFrameHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I
    .locals 2
    .param p0, "frame"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "xingBase"    # I

    .line 434
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_2

    .line 435
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 436
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 437
    .local v0, "headerData":I
    const v1, 0x58696e67

    if-eq v0, v1, :cond_1

    const v1, 0x496e666f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 438
    :cond_1
    :goto_0
    return v0

    .line 434
    .end local v0    # "headerData":I
    :cond_2
    nop

    .line 441
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_4

    .line 442
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 443
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x56425249

    if-ne v0, v1, :cond_3

    .line 444
    return v1

    .line 443
    :cond_3
    goto :goto_2

    .line 441
    :cond_4
    nop

    .line 447
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private static headersMatch(IJ)Z
    .locals 5
    .param p0, "headerA"    # I
    .param p1, "headerB"    # J

    .line 425
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/32 v2, -0x1f400

    and-long/2addr v2, p1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final synthetic lambda$static$0$Mp3Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 3

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static final synthetic lambda$static$1$Mp3Extractor(IIIII)Z
    .locals 3
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 82
    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_1

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_1

    if-ne p3, v1, :cond_1

    if-eq p4, v1, :cond_0

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_2

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/16 v1, 0x4c

    if-ne p2, v1, :cond_2

    if-ne p3, v1, :cond_2

    const/16 v1, 0x54

    if-eq p4, v1, :cond_0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method private static maybeHandleSeekMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;
    .locals 4
    .param p0, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;
    .param p1, "firstFramePosition"    # J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 452
    if-eqz p0, :cond_2

    .line 453
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v0

    .line 454
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 455
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    .line 456
    .local v2, "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    instance-of v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    .line 457
    move-object v3, v2

    check-cast v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    invoke-static {p1, p2, v3}, Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;->create(JLandroidx/media2/exoplayer/external/metadata/id3/MlltFrame;)Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;

    move-result-object v3

    return-object v3

    .line 456
    :cond_0
    nop

    .line 454
    .end local v2    # "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 452
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_2
    nop

    .line 461
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeReadSeekFrame(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    .locals 11
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 377
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 378
    .local v0, "frame":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    const/4 v8, 0x0

    invoke-interface {p1, v1, v8, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 379
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->version:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    if-eq v1, v2, :cond_0

    const/16 v3, 0x24

    goto :goto_0

    :cond_0
    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    :goto_0
    move v1, v3

    .line 382
    .local v1, "xingBase":I
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v9

    .line 384
    .local v9, "seekHeader":I
    const v2, 0x58696e67

    const v10, 0x496e666f

    if-eq v9, v2, :cond_5

    if-ne v9, v10, :cond_3

    goto :goto_1

    .line 399
    :cond_3
    const v2, 0x56425249

    if-ne v9, v2, :cond_4

    .line 400
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->create(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;

    move-result-object v2

    .line 401
    .local v2, "seeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_3

    .line 404
    .end local v2    # "seeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    :cond_4
    const/4 v2, 0x0

    .line 405
    .restart local v2    # "seeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_3

    .line 384
    .end local v2    # "seeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    :cond_5
    :goto_1
    nop

    .line 385
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->create(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;

    move-result-object v2

    .line 386
    .restart local v2    # "seeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    if-eqz v2, :cond_6

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v3

    if-nez v3, :cond_6

    .line 388
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 389
    add-int/lit16 v3, v1, 0x8d

    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 390
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v4, 0x3

    invoke-interface {p1, v3, v8, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 391
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 392
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    goto :goto_2

    .line 386
    :cond_6
    nop

    .line 394
    :goto_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 395
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->isSeekable()Z

    move-result v3

    if-nez v3, :cond_7

    if-ne v9, v10, :cond_7

    .line 397
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v3

    return-object v3

    .line 395
    :cond_7
    nop

    .line 407
    :goto_3
    return-object v2
.end method

.method private peekEndOfStreamOrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "extractorInput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 350
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->getDataEndPosition()J

    move-result-wide v2

    .line 351
    .local v2, "dataEndPosition":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 352
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 353
    return v1

    .line 352
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    goto :goto_0

    .line 349
    .end local v2    # "dataEndPosition":J
    :cond_2
    nop

    .line 357
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/EOFException;
    return v1
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .locals 13
    .param p1, "extractorInput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 229
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 230
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 231
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    return v2

    .line 234
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 235
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 236
    .local v0, "sampleHeaderData":I
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_1

    .line 243
    :cond_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z

    .line 244
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 245
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 246
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 247
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 248
    .local v4, "embeddedFirstSampleTimestampUs":J
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    goto :goto_0

    .line 246
    .end local v4    # "embeddedFirstSampleTimestampUs":J
    :cond_2
    goto :goto_0

    .line 244
    :cond_3
    nop

    .line 251
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    goto :goto_2

    .line 236
    :cond_4
    nop

    .line 239
    :goto_1
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 240
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 241
    return v3

    .line 229
    .end local v0    # "sampleHeaderData":I
    :cond_5
    nop

    .line 253
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v0

    .line 254
    .local v0, "bytesAppended":I
    if-ne v0, v2, :cond_6

    .line 255
    return v2

    .line 257
    :cond_6
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 258
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_7

    .line 259
    return v3

    .line 261
    :cond_7
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    add-long/2addr v1, v4

    .line 262
    .local v1, "timeUs":J
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v9, 0x1

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v10, v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v7, v1

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 264
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 265
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 266
    return v3
.end method

.method private synchronize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z
    .locals 12
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "sniffing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "validFrameCount":I
    const/4 v1, 0x0

    .line 273
    .local v1, "candidateSynchronizedHeaderData":I
    const/4 v2, 0x0

    .line 274
    .local v2, "peekedId3Bytes":I
    const/4 v3, 0x0

    .line 275
    .local v3, "searchedBytes":I
    if-eqz p2, :cond_0

    const/16 v4, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v4, 0x20000

    .line 276
    .local v4, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 277
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v11, v5, v7

    if-nez v11, :cond_5

    .line 280
    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 282
    .local v5, "parseAllId3Frames":Z
    :goto_1
    if-eqz v5, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    .line 283
    .local v6, "id3FramePredicate":Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
    :goto_2
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

    invoke-virtual {v7, p1, v6}, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->peekId3Data(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v7

    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 284
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-eqz v7, :cond_3

    .line 285
    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-virtual {v8, v7}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    goto :goto_3

    .line 284
    :cond_3
    nop

    .line 287
    :goto_3
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v7

    long-to-int v2, v7

    .line 288
    if-nez p2, :cond_4

    .line 289
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_4

    .line 288
    :cond_4
    goto :goto_4

    .line 277
    .end local v5    # "parseAllId3Frames":Z
    .end local v6    # "id3FramePredicate":Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;
    :cond_5
    nop

    .line 293
    :goto_4
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 294
    if-lez v0, :cond_6

    .line 296
    goto :goto_8

    .line 298
    :cond_6
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 300
    :cond_7
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 301
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 303
    .local v5, "headerData":I
    if-eqz v1, :cond_9

    int-to-long v6, v1

    .line 304
    invoke-static {v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    goto :goto_6

    .line 303
    :cond_9
    nop

    .line 305
    :goto_5
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v6

    move v7, v6

    .local v7, "frameSize":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_d

    .line 307
    .end local v7    # "frameSize":I
    :goto_6
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "searchedBytes":I
    .local v6, "searchedBytes":I
    if-ne v3, v4, :cond_b

    .line 308
    if-eqz p2, :cond_a

    .line 311
    return v9

    .line 309
    :cond_a
    new-instance v3, Landroidx/media2/exoplayer/external/ParserException;

    const-string v7, "Searched too many bytes."

    invoke-direct {v3, v7}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_b
    const/4 v0, 0x0

    .line 314
    const/4 v1, 0x0

    .line 315
    if-eqz p2, :cond_c

    .line 316
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 317
    add-int v3, v2, v6

    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_7

    .line 319
    :cond_c
    invoke-interface {p1, v10}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 332
    .end local v5    # "headerData":I
    :goto_7
    move v3, v6

    goto :goto_b

    .line 323
    .end local v6    # "searchedBytes":I
    .restart local v3    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 324
    if-ne v0, v10, :cond_e

    .line 325
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z

    .line 326
    move v1, v5

    goto :goto_a

    .line 327
    :cond_e
    const/4 v6, 0x4

    if-ne v0, v6, :cond_10

    .line 328
    nop

    .line 334
    .end local v5    # "headerData":I
    .end local v7    # "frameSize":I
    :goto_8
    if-eqz p2, :cond_f

    .line 335
    add-int v5, v2, v3

    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_9

    .line 337
    :cond_f
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 339
    :goto_9
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 340
    return v10

    .line 327
    .restart local v5    # "headerData":I
    .restart local v7    # "frameSize":I
    :cond_10
    nop

    .line 330
    :goto_a
    add-int/lit8 v6, v7, -0x4

    invoke-interface {p1, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 332
    .end local v5    # "headerData":I
    .end local v7    # "frameSize":I
    :goto_b
    goto :goto_4
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 162
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 165
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 21
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 183
    move-object/from16 v1, p0

    iget v0, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    move-object/from16 v2, p1

    :try_start_0
    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 187
    .local v0, "e":Ljava/io/EOFException;
    const/4 v3, -0x1

    return v3

    .line 183
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_0
    move-object/from16 v2, p1

    .line 190
    :goto_0
    iget-object v0, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v0, :cond_6

    .line 193
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v0

    .line 194
    .local v0, "seekFrameSeeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    iget-object v3, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;

    move-result-object v3

    .line 195
    .local v3, "metadataSeeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    if-eqz v3, :cond_1

    .line 196
    iput-object v3, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    goto :goto_1

    .line 197
    :cond_1
    if-eqz v0, :cond_2

    .line 198
    iput-object v0, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    goto :goto_1

    .line 197
    :cond_2
    nop

    .line 200
    :goto_1
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    if-eqz v4, :cond_4

    .line 201
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->isSeekable()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    .line 200
    :cond_4
    nop

    .line 202
    :goto_2
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v4

    iput-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    .line 204
    :goto_3
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v4, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 205
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v5, 0x0

    iget-object v6, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x1000

    iget-object v10, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v10, v10, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    iget-object v11, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v11, v11, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    const/4 v12, -0x1

    iget-object v13, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    iget v13, v13, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    iget-object v14, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    iget v14, v14, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 221
    iget v15, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    goto :goto_4

    :cond_5
    iget-object v15, v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    :goto_4
    move-object/from16 v20, v15

    .line 206
    const/4 v15, 0x0

    move-object/from16 v19, v20

    invoke-static/range {v5 .. v19}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 205
    invoke-interface {v4, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_5

    .line 190
    .end local v0    # "seekFrameSeeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    .end local v3    # "metadataSeeker":Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    :cond_6
    nop

    .line 223
    :goto_5
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .line 178
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 170
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 171
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 172
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 173
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

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
