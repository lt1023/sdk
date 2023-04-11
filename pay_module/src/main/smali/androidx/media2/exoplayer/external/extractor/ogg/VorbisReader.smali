.class final Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;
.super Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field private commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static appendNumberOfSamples(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .locals 6
    .param p0, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "packetSampleCount"    # J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 160
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 165
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 167
    return-void
.end method

.method private static decodeBlockSize(BLandroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;)I
    .locals 2
    .param p0, "firstByteOfAudioPacket"    # B
    .param p1, "vorbisSetup"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    .line 171
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result v0

    .line 173
    .local v0, "modeNumber":I
    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 178
    .local v1, "currentBlockSize":I
    :goto_0
    return v1
.end method

.method static readBits(BII)I
    .locals 3
    .param p0, "src"    # B
    .param p1, "length"    # I
    .param p2, "leastSignificantBitIndex"    # I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 153
    shr-int v0, p0, p2

    rsub-int/lit8 v1, p1, 0x8

    const/16 v2, 0xff

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static verifyBitstreamType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 2
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 47
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;Z)Z

    move-result v0
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroidx/media2/exoplayer/external/ParserException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected onSeekEnd(J)V
    .locals 4
    .param p1, "currentGranule"    # J

    .line 67
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 68
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 69
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-eqz v1, :cond_1

    iget v0, v1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    nop

    :cond_1
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 70
    return-void
.end method

.method protected preparePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 5
    .param p1, "packet"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 75
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 76
    const-wide/16 v0, -0x1

    return-wide v0

    .line 80
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->decodeBlockSize(BLandroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 83
    .local v0, "packetBlockSize":I
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v3, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 84
    :cond_1
    nop

    .line 86
    .local v1, "samplesInPacket":I
    :goto_0
    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->appendNumberOfSamples(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V

    .line 89
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 90
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 91
    int-to-long v2, v1

    return-wide v2
.end method

.method protected readHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;)Z
    .locals 14
    .param p1, "packet"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 97
    move-object v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x0

    return v1

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->readSetupHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    .line 102
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 103
    return v2

    .line 106
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v1, "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v3, 0x0

    const-string v4, "audio/vorbis"

    const/4 v5, 0x0

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    const/4 v7, -0x1

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v9, v9, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    long-to-int v9, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v1

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    move-object/from16 v4, p4

    iput-object v3, v4, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media2/exoplayer/external/Format;

    .line 114
    return v2
.end method

.method readSetupHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;
    .locals 10
    .param p1, "scratch"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readVorbisIdentificationHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 122
    return-object v1

    .line 125
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    if-nez v0, :cond_1

    .line 126
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readVorbisCommentHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    .line 127
    return-object v1

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 133
    .local v0, "setupHeaderData":[B
    iget-object v1, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readVorbisModes(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    move-result-object v7

    .line 137
    .local v7, "modes":[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v8

    .line 139
    .local v8, "iLogModes":I
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    move-object v1, v9

    move-object v4, v0

    move-object v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;[B[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;I)V

    return-object v9
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .line 55
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->reset(Z)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    .line 58
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 59
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    goto :goto_0

    .line 56
    :cond_0
    nop

    .line 61
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 62
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 63
    return-void
.end method
