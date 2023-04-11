.class final Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;
.super Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
.source "OpusReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final OPUS_CODE:I = 0x4f707573

.field private static final OPUS_SIGNATURE:[B

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private headerRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private getPacketDurationUs([B)J
    .locals 8
    .param p1, "packet"    # [B

    .line 110
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 112
    .local v0, "toc":I
    and-int/lit8 v1, v0, 0x3

    packed-switch v1, :pswitch_data_0

    .line 121
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3f

    goto :goto_0

    .line 118
    :pswitch_0
    const/4 v1, 0x2

    .line 119
    .local v1, "frames":I
    goto :goto_0

    .line 114
    .end local v1    # "frames":I
    :pswitch_1
    const/4 v1, 0x1

    .line 115
    .restart local v1    # "frames":I
    nop

    .line 125
    :goto_0
    shr-int/lit8 v2, v0, 0x3

    .line 126
    .local v2, "config":I
    and-int/lit8 v3, v2, 0x3

    .line 127
    .local v3, "length":I
    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 128
    const/16 v4, 0x9c4

    shl-int v3, v4, v3

    goto :goto_1

    .line 129
    :cond_0
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v2, v4, :cond_1

    .line 130
    and-int/lit8 v4, v3, 0x1

    shl-int v3, v5, v4

    goto :goto_1

    .line 131
    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 132
    const v3, 0xea60

    goto :goto_1

    .line 134
    :cond_2
    shl-int v3, v5, v3

    .line 136
    :goto_1
    int-to-long v4, v1

    int-to-long v6, v3

    mul-long v4, v4, v6

    return-wide v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putNativeOrderLong(Ljava/util/List;I)V
    .locals 4
    .param p2, "samples"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 98
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    const-wide/32 v2, 0xbb80

    div-long/2addr v0, v2

    .line 99
    .local v0, "ns":J
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 100
    .local v2, "array":[B
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public static verifyBitstreamType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 52
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    sget-object v1, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 53
    return v3

    .line 55
    :cond_0
    array-length v0, v1

    new-array v0, v0, [B

    .line 56
    .local v0, "header":[B
    array-length v1, v1

    invoke-virtual {p0, v0, v3, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 57
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected preparePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 2
    .param p1, "packet"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 70
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;)Z
    .locals 19
    .param p1, "packet"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->headerRead:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 76
    iget-object v2, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 77
    .local v2, "metadata":[B
    const/16 v4, 0x9

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 78
    .local v4, "channelCount":I
    const/16 v5, 0xb

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0xa

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    or-int v15, v5, v6

    .line 80
    .local v15, "preskip":I
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v5

    .line 81
    .local v14, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-direct {v0, v14, v15}, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 83
    const/16 v5, 0xf00

    invoke-direct {v0, v14, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 85
    const/4 v5, 0x0

    const-string v6, "audio/opus"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const v11, 0xbb80

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v10, v4

    move-object v12, v14

    move-object/from16 v18, v14

    .end local v14    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v18, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v14, v16

    move/from16 v16, v15

    .end local v15    # "preskip":I
    .local v16, "preskip":I
    move-object/from16 v15, v17

    invoke-static/range {v5 .. v15}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    move-object/from16 v6, p4

    iput-object v5, v6, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media2/exoplayer/external/Format;

    .line 88
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->headerRead:Z

    .line 89
    .end local v2    # "metadata":[B
    .end local v4    # "channelCount":I
    .end local v16    # "preskip":I
    .end local v18    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    nop

    .line 94
    return v3

    .line 90
    :cond_0
    move-object/from16 v6, p4

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    const v4, 0x4f707573

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 91
    .local v2, "headerPacket":Z
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 92
    return v2
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .line 62
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->reset(Z)V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OpusReader;->headerRead:Z

    goto :goto_0

    .line 63
    :cond_0
    nop

    .line 66
    :goto_0
    return-void
.end method
