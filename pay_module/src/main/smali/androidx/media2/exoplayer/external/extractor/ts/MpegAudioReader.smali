.class public final Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private formatId:Ljava/lang/String;

.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

.field private final headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasFF:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->state:I

    .line 71
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 72
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 73
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private findHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 9
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 133
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 134
    .local v0, "data":[B
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 135
    .local v1, "startOffset":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    .line 136
    .local v2, "endOffset":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 137
    aget-byte v4, v0, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 138
    .local v4, "byteIsFF":Z
    :goto_1
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v5, :cond_1

    aget-byte v5, v0, v3

    const/16 v8, 0xe0

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 139
    .local v5, "found":Z
    :goto_2
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 140
    if-eqz v5, :cond_2

    .line 141
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 143
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 144
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v8, v0, v3

    aput-byte v8, v6, v7

    .line 145
    const/4 v6, 0x2

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 146
    iput v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->state:I

    .line 147
    return-void

    .line 140
    :cond_2
    nop

    .line 136
    .end local v4    # "byteIsFF":Z
    .end local v5    # "found":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 151
    return-void
.end method

.method private readFrameRemainder(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 9
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 215
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 216
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 217
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 218
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v1, v6, :cond_0

    .line 220
    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 224
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->timeUs:J

    .line 225
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 226
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->state:I

    .line 227
    return-void
.end method

.method private readHeaderRemainder(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 22
    .param p1, "source"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 170
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 171
    .local v1, "bytesToRead":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 172
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 173
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge v2, v3, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 179
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static {v2, v6}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z

    move-result v2

    .line 180
    .local v2, "parsedHeader":Z
    const/4 v6, 0x1

    if-nez v2, :cond_1

    .line 182
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 183
    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->state:I

    .line 184
    return-void

    .line 187
    :cond_1
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameSize:I

    .line 188
    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v7, :cond_2

    .line 189
    const-wide/32 v7, 0xf4240

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v9, v9

    mul-long v9, v9, v7

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v7, v7

    div-long/2addr v9, v7

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 190
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget-object v12, v7, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x1000

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->header:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v21, v9

    invoke-static/range {v11 .. v21}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 193
    .local v7, "format":Landroidx/media2/exoplayer/external/Format;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v8, v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 194
    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    goto :goto_0

    .line 188
    .end local v7    # "format":Landroidx/media2/exoplayer/external/Format;
    :cond_2
    nop

    .line 197
    :goto_0
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 198
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v4, v6, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 199
    const/4 v3, 0x2

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->state:I

    .line 200
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 1
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 98
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 107
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->readFrameRemainder(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 108
    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->readHeaderRemainder(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 105
    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->findHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 102
    goto :goto_0

    .line 113
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 86
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 87
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 89
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 118
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 93
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->timeUs:J

    .line 94
    return-void
.end method

.method public seek()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->state:I

    .line 80
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 81
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 82
    return-void
.end method
