.class final Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;
.super Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
.source "FlacReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final FRAME_HEADER_SAMPLE_NUMBER_OFFSET:I = 0x4

.field private static final SEEKTABLE_PACKET_TYPE:B = 0x3t


# instance fields
.field private flacOggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;

.field private streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;)Landroidx/media2/exoplayer/external/util/FlacStreamInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    .line 40
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    return-object v0
.end method

.method private getFlacFrameBlockSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .locals 3
    .param p1, "packet"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 102
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    .line 103
    .local v0, "blockSizeCode":I
    packed-switch v0, :pswitch_data_0

    .line 129
    const/4 v1, -0x1

    return v1

    .line 127
    :pswitch_0
    const/16 v1, 0x100

    add-int/lit8 v2, v0, -0x8

    shl-int/2addr v1, v2

    return v1

    .line 114
    :pswitch_1
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 115
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUtf8EncodedLong()J

    .line 116
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 117
    .local v1, "value":I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 118
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 110
    .end local v1    # "value":I
    :pswitch_2
    const/16 v1, 0x240

    add-int/lit8 v2, v0, -0x2

    shl-int/2addr v1, v2

    return v1

    .line 105
    :pswitch_3
    const/16 v1, 0xc0

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAudioPacket([B)Z
    .locals 3
    .param p0, "data"    # [B

    .line 65
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static verifyBitstreamType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 5
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 51
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 51
    :cond_1
    nop

    .line 52
    :goto_0
    const/4 v0, 0x0

    .line 51
    :goto_1
    return v0
.end method


# virtual methods
.method protected preparePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 2
    .param p1, "packet"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 70
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-wide/16 v0, -0x1

    return-wide v0

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->getFlacFrameBlockSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected readHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;)Z
    .locals 18
    .param p1, "packet"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 80
    .local v3, "data":[B
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    if-nez v4, :cond_0

    .line 81
    new-instance v4, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    const/16 v5, 0x11

    invoke-direct {v4, v3, v5}, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;-><init>([BI)V

    iput-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    .line 82
    const/16 v4, 0x9

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 83
    .local v4, "metadata":[B
    const/4 v5, 0x4

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    .line 84
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 85
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v7, 0x0

    const-string v8, "audio/flac"

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    .line 86
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitRate()I

    move-result v11

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    iget v12, v6, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->channels:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    iget v13, v6, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 85
    move-object v14, v5

    invoke-static/range {v7 .. v17}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    iput-object v6, v2, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media2/exoplayer/external/Format;

    .line 88
    .end local v4    # "metadata":[B
    .end local v5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-wide/from16 v6, p2

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    aget-byte v5, v3, v4

    and-int/lit8 v5, v5, 0x7f

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 89
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-direct {v4, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;)V

    iput-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 90
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->parseSeekTable(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    move-wide/from16 v6, p2

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 92
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz v5, :cond_2

    .line 93
    move-wide/from16 v6, p2

    invoke-virtual {v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->setFirstFrameOffset(J)V

    .line 94
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;

    iput-object v5, v2, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    goto :goto_0

    .line 92
    :cond_2
    move-wide/from16 v6, p2

    .line 96
    :goto_0
    return v4

    .line 91
    :cond_3
    move-wide/from16 v6, p2

    .line 98
    :goto_1
    const/4 v4, 0x1

    return v4
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .line 57
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->reset(Z)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->streamInfo:Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    .line 60
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->flacOggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;

    goto :goto_0

    .line 58
    :cond_0
    nop

    .line 62
    :goto_0
    return-void
.end method
