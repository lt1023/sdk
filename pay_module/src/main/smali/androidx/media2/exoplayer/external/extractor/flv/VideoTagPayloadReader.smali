.class final Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;
.super Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private final nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 62
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 64
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 65
    return-void
.end method


# virtual methods
.method protected parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 6
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 75
    .local v0, "header":I
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 76
    .local v1, "frameType":I
    and-int/lit8 v2, v0, 0xf

    .line 78
    .local v2, "videoCodec":I
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 81
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->frameType:I

    .line 82
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 79
    :cond_1
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Video format not supported: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .locals 22
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 88
    .local v2, "packetType":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt24()I

    move-result v3

    .line 90
    .local v3, "compositionTimeMs":I
    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long v4, p2, v4

    .line 92
    .end local p2    # "timeUs":J
    .local v4, "timeUs":J
    const/4 v7, 0x0

    if-nez v2, :cond_0

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v8, :cond_0

    .line 93
    new-instance v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    new-array v9, v9, [B

    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 94
    .local v8, "videoSequence":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget-object v9, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    invoke-virtual {v1, v9, v7, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 95
    invoke-static {v8}, Landroidx/media2/exoplayer/external/video/AvcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/AvcConfig;

    move-result-object v7

    .line 96
    .local v7, "avcConfig":Landroidx/media2/exoplayer/external/video/AvcConfig;
    iget v9, v7, Landroidx/media2/exoplayer/external/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 98
    const/4 v10, 0x0

    const-string/jumbo v11, "video/avc"

    const/4 v12, 0x0

    const/4 v13, -0x1

    iget v15, v7, Landroidx/media2/exoplayer/external/video/AvcConfig;->width:I

    iget v9, v7, Landroidx/media2/exoplayer/external/video/AvcConfig;->height:I

    const/high16 v17, -0x40800000    # -1.0f

    iget-object v6, v7, Landroidx/media2/exoplayer/external/video/AvcConfig;->initializationData:Ljava/util/List;

    const/16 v19, -0x1

    iget v14, v7, Landroidx/media2/exoplayer/external/video/AvcConfig;->pixelWidthAspectRatio:F

    const/16 v21, 0x0

    move/from16 v20, v14

    const/4 v14, -0x1

    move/from16 v16, v9

    move-object/from16 v18, v6

    invoke-static/range {v10 .. v21}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    .line 101
    .local v6, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v9, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 102
    const/4 v9, 0x1

    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    .end local v6    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v7    # "avcConfig":Landroidx/media2/exoplayer/external/video/AvcConfig;
    .end local v8    # "videoSequence":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    goto :goto_2

    .line 92
    :cond_0
    const/4 v9, 0x1

    .line 103
    if-ne v2, v9, :cond_3

    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v6, :cond_3

    .line 107
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v13, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 108
    .local v13, "nalLengthData":[B
    aput-byte v7, v13, v7

    .line 109
    aput-byte v7, v13, v9

    .line 110
    const/4 v6, 0x2

    aput-byte v7, v13, v6

    .line 111
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v8, 0x4

    rsub-int/lit8 v14, v6, 0x4

    .line 115
    .local v14, "nalUnitLengthFieldLengthDiff":I
    const/4 v6, 0x0

    move v15, v6

    .line 117
    .local v15, "bytesWritten":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    if-lez v6, :cond_1

    .line 119
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {v1, v6, v14, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 120
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 121
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 124
    .local v6, "bytesToWrite":I
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 125
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v9, v10, v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 126
    add-int/lit8 v15, v15, 0x4

    .line 129
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v9, v1, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 130
    add-int/2addr v15, v6

    goto :goto_0

    .line 132
    .end local v6    # "bytesToWrite":I
    :cond_1
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v7, v4

    move v10, v15

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    goto :goto_3

    .line 103
    .end local v13    # "nalLengthData":[B
    .end local v14    # "nalUnitLengthFieldLengthDiff":I
    .end local v15    # "bytesWritten":I
    :cond_3
    :goto_2
    nop

    .line 135
    :goto_3
    return-void
.end method

.method public seek()V
    .locals 0

    .line 70
    return-void
.end method
