.class final Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PsScrSeeker"
.end annotation


# instance fields
.field private final packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .locals 1
    .param p1, "scrTimestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 74
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$1;

    .line 67
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    return-void
.end method

.method private searchForScrValueInBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 16
    .param p1, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "targetScrTimeUs"    # J
    .param p4, "bufferStartOffset"    # J

    .line 97
    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    const/4 v3, -0x1

    .line 98
    .local v3, "startOfLastPacketPosition":I
    const/4 v4, -0x1

    .line 99
    .local v4, "endOfLastPacketPosition":I
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    .local v5, "lastScrTimeUsInRange":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    const/4 v8, 0x4

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v7, v8, :cond_5

    .line 102
    iget-object v7, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v11

    invoke-static {v7, v11}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v7

    .line 103
    .local v7, "nextStartCode":I
    const/16 v11, 0x1ba

    if-eq v7, v11, :cond_0

    .line 104
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 105
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v11

    .line 112
    .local v11, "scrValue":J
    cmp-long v8, v11, v9

    if-eqz v8, :cond_4

    .line 113
    move-object/from16 v8, p0

    iget-object v13, v8, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v13, v11, v12}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v13

    .line 114
    .local v13, "scrTimeUs":J
    cmp-long v15, v13, p2

    if-lez v15, :cond_2

    .line 115
    cmp-long v15, v5, v9

    if-nez v15, :cond_1

    .line 117
    invoke-static {v13, v14, v1, v2}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v9

    return-object v9

    .line 120
    :cond_1
    int-to-long v9, v3

    add-long/2addr v9, v1

    invoke-static {v9, v10}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v9

    return-object v9

    .line 123
    :cond_2
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v13

    cmp-long v15, v9, p2

    if-lez v15, :cond_3

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v9, v1

    .line 125
    .local v9, "startOfPacketInStream":J
    invoke-static {v9, v10}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v15

    return-object v15

    .line 128
    .end local v9    # "startOfPacketInStream":J
    :cond_3
    move-wide v5, v13

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    goto :goto_1

    .line 112
    .end local v13    # "scrTimeUs":J
    :cond_4
    move-object/from16 v8, p0

    .line 131
    :goto_1
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->skipToEndOfCurrentPack(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 133
    .end local v7    # "nextStartCode":I
    .end local v11    # "scrValue":J
    goto :goto_0

    .line 135
    :cond_5
    move-object/from16 v8, p0

    cmp-long v7, v5, v9

    if-eqz v7, :cond_6

    .line 136
    int-to-long v9, v4

    add-long/2addr v9, v1

    .line 137
    .local v9, "endOfLastPacketPositionInStream":J
    invoke-static {v5, v6, v9, v10}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v7

    return-object v7

    .line 140
    .end local v9    # "endOfLastPacketPositionInStream":J
    :cond_6
    sget-object v7, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v7
.end method

.method private static skipToEndOfCurrentPack(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 7
    .param p0, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 150
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    .line 152
    .local v0, "limit":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 156
    return-void

    .line 158
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 160
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 161
    .local v1, "packStuffingLength":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 162
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 163
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 167
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 168
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 169
    return-void

    .line 172
    :cond_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v2

    .line 173
    .local v2, "nextStartCode":I
    const/16 v4, 0x1bb

    if-ne v2, v4, :cond_4

    .line 174
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 176
    .local v4, "systemHeaderLength":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 177
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 178
    return-void

    .line 180
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 173
    .end local v4    # "systemHeaderLength":I
    :cond_4
    nop

    .line 187
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lt v4, v3, :cond_9

    .line 188
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v2

    .line 189
    const/16 v4, 0x1ba

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1b9

    if-ne v2, v4, :cond_5

    .line 191
    goto :goto_1

    .line 193
    :cond_5
    ushr-int/lit8 v4, v2, 0x8

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    .line 194
    goto :goto_1

    .line 196
    :cond_6
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 198
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    .line 200
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 201
    return-void

    .line 203
    :cond_7
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 204
    .local v4, "pesPacketLength":I
    nop

    .line 205
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 204
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 206
    .end local v4    # "pesPacketLength":I
    goto :goto_0

    .line 189
    :cond_8
    goto :goto_1

    .line 187
    :cond_9
    nop

    .line 207
    :goto_1
    return-void
.end method


# virtual methods
.method public onSeekFinished()V
    .locals 2

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([B)V

    .line 93
    return-void
.end method

.method public searchForTimestamp(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;JLandroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 9
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "targetTimestamp"    # J
    .param p4, "outputFrameHolder"    # Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    .line 82
    .local v6, "inputPosition":J
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    sub-long/2addr v0, v6

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 84
    .local v8, "bytesToSearch":I
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 87
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->searchForScrValueInBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0
.end method
