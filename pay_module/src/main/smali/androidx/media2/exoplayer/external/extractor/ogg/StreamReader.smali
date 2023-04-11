.class abstract Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# static fields
.field private static final STATE_END_OF_INPUT:I = 0x3

.field private static final STATE_READ_HEADERS:I = 0x0

.field private static final STATE_READ_PAYLOAD:I = 0x2

.field private static final STATE_SKIP_HEADERS:I = 0x1


# instance fields
.field private currentGranule:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private formatSet:Z

.field private lengthOfReadPacket:J

.field private final oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

.field private oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

.field private payloadStartPosition:J

.field private sampleRate:I

.field private seekMapSet:Z

.field private setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

.field private state:I

.field private targetGranule:J

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    .line 68
    return-void
.end method

.method private readHeaders(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .locals 18
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 129
    move-object/from16 v11, p0

    const/4 v0, 0x1

    move v12, v0

    .line 130
    .local v12, "readingHeaders":Z
    :goto_0
    if-eqz v12, :cond_2

    .line 131
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x3

    iput v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    .line 133
    const/4 v0, -0x1

    return v0

    .line 135
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v0, v2

    iput-wide v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 137
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->getPayload()Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v0

    iget-wide v1, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v3, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {v11, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->readHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;)Z

    move-result v12

    .line 138
    if-eqz v12, :cond_1

    .line 139
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_0

    .line 138
    :cond_1
    goto :goto_0

    .line 143
    :cond_2
    move-object/from16 v13, p1

    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iput v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->sampleRate:I

    .line 144
    iget-boolean v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->formatSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 145
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v2, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 146
    iput-boolean v1, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->formatSet:Z

    goto :goto_1

    .line 144
    :cond_3
    nop

    .line 149
    :goto_1
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    iput-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    move/from16 v17, v12

    goto :goto_3

    .line 151
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 152
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {v0, v15}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$1;)V

    iput-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    move/from16 v17, v12

    goto :goto_3

    .line 154
    :cond_5
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->getPageHeader()Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    move-result-object v8

    .line 155
    .local v8, "firstPayloadPageHeader":Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
    iget v0, v8, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    .line 156
    .local v10, "isLastPage":Z
    :goto_2
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;

    iget-wide v1, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 159
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    iget v0, v8, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    iget v5, v8, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v5

    int-to-long v6, v0

    iget-wide v14, v8, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v0, v9

    move-object/from16 v5, p0

    move-object/from16 v16, v8

    move/from16 v17, v12

    move-object v12, v9

    .end local v8    # "firstPayloadPageHeader":Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
    .end local v12    # "readingHeaders":Z
    .local v16, "firstPayloadPageHeader":Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
    .local v17, "readingHeaders":Z
    move-wide v8, v14

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/extractor/ogg/DefaultOggSeeker;-><init>(JJLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader;JJZ)V

    iput-object v12, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    .line 166
    .end local v10    # "isLastPage":Z
    .end local v16    # "firstPayloadPageHeader":Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
    :goto_3
    const/4 v0, 0x0

    iput-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    .line 167
    const/4 v0, 0x2

    iput v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    .line 169
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->trimPayload()V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method private readPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 24
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 176
    .local v2, "position":J
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    .line 177
    move-object/from16 v7, p2

    iput-wide v2, v7, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 178
    return v4

    .line 179
    :cond_0
    move-object/from16 v7, p2

    const-wide/16 v8, -0x1

    cmp-long v10, v2, v8

    if-gez v10, :cond_1

    .line 180
    const-wide/16 v10, 0x2

    add-long/2addr v10, v2

    neg-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->onSeekEnd(J)V

    goto :goto_0

    .line 179
    :cond_1
    nop

    .line 182
    :goto_0
    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v10, :cond_2

    .line 183
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    invoke-interface {v10}, Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;->createSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object v10

    .line 184
    .local v10, "seekMap":Landroidx/media2/exoplayer/external/extractor/SeekMap;
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v11, v10}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 185
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->seekMapSet:Z

    goto :goto_1

    .line 182
    .end local v10    # "seekMap":Landroidx/media2/exoplayer/external/extractor/SeekMap;
    :cond_2
    nop

    .line 188
    :goto_1
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v4, v10, v5

    if-gtz v4, :cond_4

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 201
    :cond_3
    const/4 v4, 0x3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    .line 202
    const/4 v4, -0x1

    return v4

    .line 188
    :cond_4
    :goto_2
    nop

    .line 189
    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 190
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->getPayload()Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-result-object v4

    .line 191
    .local v4, "payload":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->preparePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v10

    .line 192
    .local v10, "granulesInPacket":J
    cmp-long v12, v10, v5

    if-ltz v12, :cond_5

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->currentGranule:J

    add-long v12, v5, v10

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v16, v12, v14

    if-ltz v16, :cond_5

    .line 194
    invoke-virtual {v0, v5, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v5

    .line 195
    .local v5, "timeUs":J
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v13

    invoke-interface {v12, v4, v13}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 196
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/16 v20, 0x1

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v12

    move-wide/from16 v18, v5

    invoke-interface/range {v17 .. v23}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 197
    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->targetGranule:J

    goto :goto_3

    .line 192
    .end local v5    # "timeUs":J
    :cond_5
    nop

    .line 199
    :goto_3
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v5, v10

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->currentGranule:J

    .line 200
    .end local v4    # "payload":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v10    # "granulesInPacket":J
    nop

    .line 204
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method protected convertGranuleToTime(J)J
    .locals 4
    .param p1, "granule"    # J

    .line 214
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected convertTimeToGranule(J)J
    .locals 4
    .param p1, "timeUs"    # J

    .line 224
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 1
    .param p1, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 71
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 72
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->reset(Z)V

    .line 74
    return-void
.end method

.method protected onSeekEnd(J)V
    .locals 0
    .param p1, "currentGranule"    # J

    .line 253
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->currentGranule:J

    .line 254
    return-void
.end method

.method protected abstract preparePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
.end method

.method final read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 121
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->readPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 117
    :pswitch_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    .line 119
    const/4 v0, 0x0

    return v0

    .line 115
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->readHeaders(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract readHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected reset(Z)V
    .locals 4
    .param p1, "headerData"    # Z

    .line 82
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->setupData:Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;

    .line 84
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 85
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    goto :goto_0

    .line 87
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    .line 89
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->targetGranule:J

    .line 90
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->currentGranule:J

    .line 91
    return-void
.end method

.method final seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggPacket:Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->reset()V

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 99
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->reset(Z)V

    goto :goto_0

    .line 101
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;

    invoke-interface {v0, p3, p4}, Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;->startSeek(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->targetGranule:J

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->state:I

    goto :goto_0

    .line 101
    :cond_1
    nop

    .line 106
    :goto_0
    return-void
.end method
