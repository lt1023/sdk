.class public final Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x400

.field private static final STATE_FINDING_SYNC_1:I = 0x0

.field private static final STATE_FINDING_SYNC_2:I = 0x1

.field private static final STATE_READING_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final SYNC_BYTE_FIRST:I = 0x56

.field private static final SYNC_BYTE_SECOND:I = 0xe0


# instance fields
.field private audioMuxVersionA:I

.field private bytesRead:I

.field private channelCount:I

.field private format:Landroidx/media2/exoplayer/external/Format;

.field private formatId:Ljava/lang/String;

.field private frameLengthType:I

.field private final language:Ljava/lang/String;

.field private numSubframes:I

.field private otherDataLenBits:J

.field private otherDataPresent:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private final sampleBitArray:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private final sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private sampleDurationUs:J

.field private sampleRateHz:I

.field private sampleSize:I

.field private secondHeaderByte:I

.field private state:I

.field private streamMuxRead:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 85
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 86
    return-void
.end method

.method private static latmGetValue(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)J
    .locals 3
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 312
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 313
    .local v0, "bytesForValue":I
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method private parseAudioMuxElement(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)V
    .locals 4
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 161
    .local v0, "useSameStreamMux":Z
    if-nez v0, :cond_0

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 163
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->parseStreamMuxConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v1, :cond_1

    .line 165
    return-void

    .line 164
    :cond_1
    nop

    .line 168
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v1, :cond_4

    .line 169
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->numSubframes:I

    if-nez v1, :cond_3

    .line 172
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->parsePayloadLengthInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I

    move-result v1

    .line 173
    .local v1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->parsePayloadMux(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V

    .line 174
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v2, :cond_2

    .line 175
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 174
    :cond_2
    nop

    .line 177
    .end local v1    # "muxSlotLengthBytes":I
    :goto_1
    nop

    .line 180
    return-void

    .line 170
    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1

    .line 178
    :cond_4
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1
.end method

.method private parseAudioSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I
    .locals 3
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    .line 268
    .local v0, "bitsLeft":I
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object v1

    .line 269
    .local v1, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleRateHz:I

    .line 270
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->channelCount:I

    .line 271
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    sub-int v2, v0, v2

    return v2
.end method

.method private parseFrameLength(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)V
    .locals 1
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 244
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->frameLengthType:I

    .line 245
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->frameLengthType:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 259
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 260
    goto :goto_0

    .line 255
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 256
    goto :goto_0

    .line 250
    :pswitch_3
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 251
    goto :goto_0

    .line 247
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 248
    nop

    .line 264
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parsePayloadLengthInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I
    .locals 3
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "muxSlotLengthBytes":I
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v1, :cond_1

    .line 280
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 281
    .local v1, "tmp":I
    add-int/2addr v0, v1

    .line 282
    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 283
    return v0

    .line 282
    :cond_0
    goto :goto_0

    .line 285
    .end local v1    # "tmp":I
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1

    return-void
.end method

.method private parsePayloadMux(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V
    .locals 10
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p2, "muxLengthBytes"    # I

    .line 291
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->getPosition()I

    move-result v0

    .line 292
    .local v0, "bitPosition":I
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    shr-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    mul-int/lit8 v2, p2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits([BII)V

    .line 299
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 301
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 302
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->timeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, p2

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 303
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->timeUs:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->timeUs:J

    .line 304
    return-void
.end method

.method private parseStreamMuxConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)V
    .locals 22
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 187
    .local v3, "audioMuxVersion":I
    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->audioMuxVersionA:I

    .line 188
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v5, :cond_a

    .line 189
    if-ne v3, v2, :cond_1

    .line 190
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->latmGetValue(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)J

    goto :goto_1

    .line 189
    :cond_1
    nop

    .line 192
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 195
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->numSubframes:I

    .line 196
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 197
    .local v5, "numProgram":I
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 198
    .local v6, "numLayer":I
    if-nez v5, :cond_8

    if-nez v6, :cond_8

    .line 201
    const/16 v7, 0x8

    if-nez v3, :cond_3

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->getPosition()I

    move-result v8

    .line 203
    .local v8, "startPosition":I
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->parseAudioSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I

    move-result v9

    .line 204
    .local v9, "readBits":I
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 205
    add-int/lit8 v10, v9, 0x7

    div-int/2addr v10, v7

    new-array v10, v10, [B

    .line 206
    .local v10, "initData":[B
    invoke-virtual {v1, v10, v4, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits([BII)V

    .line 207
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    const-string v12, "audio/mp4a-latm"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->channelCount:I

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleRateHz:I

    .line 209
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 207
    move/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v21, v2

    invoke-static/range {v11 .. v21}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 210
    .local v2, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->format:Landroidx/media2/exoplayer/external/Format;

    .line 212
    const-wide/32 v11, 0x3d090000

    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v13, v4

    div-long/2addr v11, v13

    iput-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 213
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v4, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_2

    .line 210
    :cond_2
    nop

    .line 215
    .end local v2    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v8    # "startPosition":I
    .end local v9    # "readBits":I
    .end local v10    # "initData":[B
    :goto_2
    goto :goto_3

    .line 216
    :cond_3
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->latmGetValue(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)J

    move-result-wide v7

    long-to-int v2, v7

    .line 217
    .local v2, "ascLen":I
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->parseAudioSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I

    move-result v4

    .line 218
    .local v4, "bitsRead":I
    sub-int v7, v2, v4

    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 220
    .end local v2    # "ascLen":I
    .end local v4    # "bitsRead":I
    :goto_3
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->parseFrameLength(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataPresent:Z

    .line 222
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 223
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v2, :cond_6

    .line 224
    const/4 v2, 0x1

    if-ne v3, v2, :cond_4

    .line 225
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->latmGetValue(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_5

    .line 224
    :cond_4
    nop

    .line 229
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 230
    .local v2, "otherDataLenEsc":Z
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataLenBits:J

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 231
    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    goto :goto_4

    .line 223
    .end local v2    # "otherDataLenEsc":Z
    :cond_6
    nop

    .line 234
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 235
    .local v2, "crcCheckPresent":Z
    if-eqz v2, :cond_7

    .line 236
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 235
    :cond_7
    nop

    .line 238
    .end local v2    # "crcCheckPresent":Z
    .end local v5    # "numProgram":I
    .end local v6    # "numLayer":I
    :goto_6
    nop

    .line 241
    return-void

    .line 198
    .restart local v5    # "numProgram":I
    .restart local v6    # "numLayer":I
    :cond_8
    nop

    .line 199
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v2

    .line 193
    .end local v5    # "numProgram":I
    .end local v6    # "numLayer":I
    :cond_9
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v2

    .line 239
    :cond_a
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v2

    return-void
.end method

.method private resetBufferForSize(I)V
    .locals 2
    .param p1, "newSize"    # I

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 308
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([B)V

    .line 309
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 5
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 109
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_5

    .line 110
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->state:I

    const/16 v1, 0x56

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v3, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 136
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->bytesRead:I

    .line 137
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->bytesRead:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleSize:I

    if-ne v1, v3, :cond_0

    .line 138
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 139
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->parseAudioMuxElement(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)V

    .line 140
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 137
    :cond_0
    goto :goto_0

    .line 126
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleSize:I

    .line 127
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleSize:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 128
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->sampleSize:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->resetBufferForSize(I)V

    goto :goto_1

    .line 127
    :cond_1
    nop

    .line 130
    :goto_1
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->bytesRead:I

    .line 131
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->state:I

    .line 132
    goto :goto_0

    .line 117
    :pswitch_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 118
    .local v0, "secondByte":I
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_2

    .line 119
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 120
    const/4 v1, 0x2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 121
    :cond_2
    if-eq v0, v1, :cond_3

    .line 122
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->state:I

    goto :goto_0

    .line 121
    :cond_3
    goto :goto_0

    .line 112
    .end local v0    # "secondByte":I
    :pswitch_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    .line 112
    :cond_4
    goto/16 :goto_0

    .line 147
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 96
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 97
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 98
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 152
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 103
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->timeUs:J

    .line 104
    return-void
.end method

.method public seek()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->state:I

    .line 91
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 92
    return-void
.end method
