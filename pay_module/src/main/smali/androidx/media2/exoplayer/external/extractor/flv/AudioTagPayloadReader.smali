.class final Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;
.super Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_ALAW:I = 0x7

.field private static final AUDIO_FORMAT_MP3:I = 0x2

.field private static final AUDIO_FORMAT_ULAW:I = 0x8

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 55
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 18
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 67
    .local v1, "header":I
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    .line 68
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 69
    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v4

    .line 70
    .local v3, "sampleRateIndex":I
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget v4, v4, v3

    .line 71
    .local v4, "sampleRate":I
    const/4 v5, 0x0

    const-string v6, "audio/mpeg"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v11, v4

    invoke-static/range {v5 .. v15}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 73
    .local v5, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v6, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 74
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 75
    .end local v3    # "sampleRateIndex":I
    .end local v4    # "sampleRate":I
    .end local v5    # "format":Landroidx/media2/exoplayer/external/Format;
    goto :goto_4

    :cond_0
    const/4 v6, 0x7

    if-eq v3, v6, :cond_3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    :goto_0
    goto :goto_4

    .line 84
    :cond_2
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Audio format not supported: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_3
    :goto_1
    nop

    .line 76
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    if-ne v3, v6, :cond_4

    const-string v3, "audio/g711-alaw"

    move-object v7, v3

    goto :goto_2

    .line 77
    :cond_4
    const-string v3, "audio/g711-mlaw"

    move-object v7, v3

    :goto_2
    nop

    .line 78
    .local v7, "type":Ljava/lang/String;
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_5

    const/4 v13, 0x2

    goto :goto_3

    :cond_5
    const/4 v13, 0x3

    .line 79
    .local v13, "pcmEncoding":I
    :goto_3
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 81
    .local v3, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v4, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 82
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .end local v3    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v7    # "type":Ljava/lang/String;
    .end local v13    # "pcmEncoding":I
    goto :goto_0

    .line 86
    :goto_4
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    .line 87
    .end local v1    # "header":I
    move-object/from16 v1, p1

    goto :goto_5

    .line 89
    :cond_6
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 91
    :goto_5
    return v2
.end method

.method protected parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .locals 17
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 98
    .local v2, "sampleSize":I
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 99
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v5, p2

    move v8, v2

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 100
    .end local v2    # "sampleSize":I
    goto :goto_2

    .line 101
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 102
    .local v2, "packetType":I
    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v4, :cond_1

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    new-array v4, v4, [B

    .line 105
    .local v4, "audioSpecificConfig":[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v1, v4, v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 106
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v5

    .line 108
    .local v5, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    const-string v7, "audio/mp4a-latm"

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    iget-object v11, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 109
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 110
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 108
    invoke-static/range {v6 .. v16}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    .line 111
    .local v6, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v7, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 112
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .end local v4    # "audioSpecificConfig":[B
    .end local v5    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "format":Landroidx/media2/exoplayer/external/Format;
    goto :goto_0

    .line 102
    :cond_1
    nop

    .line 113
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_2

    .line 114
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    .line 115
    .local v3, "sampleSize":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v4, v1, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 116
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v7, p2

    move v10, v3

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 119
    .end local v2    # "packetType":I
    .end local v3    # "sampleSize":I
    :goto_2
    return-void
.end method

.method public seek()V
    .locals 0

    .line 61
    return-void
.end method
