.class final Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TsPcrSeeker"
.end annotation


# instance fields
.field private final packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final pcrPid:I

.field private final pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .locals 1
    .param p1, "pcrPid"    # I
    .param p2, "pcrTimestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    .line 77
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 78
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 79
    return-void
.end method

.method private searchForPcrValueInBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 24
    .param p1, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "targetPcrTimeUs"    # J
    .param p4, "bufferStartOffset"    # J

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v4

    .line 98
    .local v4, "limit":I
    const-wide/16 v5, -0x1

    .line 99
    .local v5, "startOfLastPacketPosition":J
    const-wide/16 v7, -0x1

    .line 100
    .local v7, "endOfLastPacketPosition":J
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 102
    .local v9, "lastPcrTimeUsInRange":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xbc

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v11, v12, :cond_5

    .line 103
    iget-object v11, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v11

    .line 105
    .local v11, "startOfPacket":I
    add-int/lit16 v12, v11, 0xbc

    .line 106
    .local v12, "endOfPacket":I
    if-le v12, v4, :cond_0

    .line 107
    move v15, v4

    move-wide/from16 v20, v5

    move-wide/from16 v16, v7

    goto :goto_2

    .line 109
    :cond_0
    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    move-wide/from16 v16, v7

    .end local v7    # "endOfLastPacketPosition":J
    .local v16, "endOfLastPacketPosition":J
    invoke-static {v1, v11, v15}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)J

    move-result-wide v7

    .line 110
    .local v7, "pcrValue":J
    cmp-long v15, v7, v13

    if-eqz v15, :cond_4

    .line 111
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v15, v7, v8}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v13

    .line 112
    .local v13, "pcrTimeUs":J
    cmp-long v15, v13, p2

    if-lez v15, :cond_2

    .line 113
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v9, v18

    if-nez v15, :cond_1

    .line 115
    invoke-static {v13, v14, v2, v3}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v15

    return-object v15

    .line 118
    :cond_1
    add-long v18, v2, v5

    invoke-static/range {v18 .. v19}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v15

    return-object v15

    .line 121
    :cond_2
    const-wide/32 v18, 0x186a0

    add-long v18, v13, v18

    cmp-long v15, v18, p2

    if-lez v15, :cond_3

    .line 122
    move v15, v4

    move-wide/from16 v20, v5

    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .local v15, "limit":I
    .local v20, "startOfLastPacketPosition":J
    int-to-long v4, v11

    add-long/2addr v4, v2

    .line 123
    .local v4, "startOfPacketInStream":J
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v6

    return-object v6

    .line 126
    .end local v15    # "limit":I
    .end local v20    # "startOfLastPacketPosition":J
    .local v4, "limit":I
    .restart local v5    # "startOfLastPacketPosition":J
    :cond_3
    move v15, v4

    move-wide/from16 v20, v5

    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .restart local v15    # "limit":I
    .restart local v20    # "startOfLastPacketPosition":J
    move-wide v4, v13

    .line 127
    .end local v9    # "lastPcrTimeUsInRange":J
    .local v4, "lastPcrTimeUsInRange":J
    int-to-long v9, v11

    move-wide/from16 v22, v4

    move-wide v5, v9

    move-wide/from16 v9, v22

    goto :goto_1

    .line 110
    .end local v13    # "pcrTimeUs":J
    .end local v15    # "limit":I
    .end local v20    # "startOfLastPacketPosition":J
    .local v4, "limit":I
    .restart local v5    # "startOfLastPacketPosition":J
    .restart local v9    # "lastPcrTimeUsInRange":J
    :cond_4
    move v15, v4

    move-wide/from16 v20, v5

    .line 129
    .end local v4    # "limit":I
    .restart local v15    # "limit":I
    :goto_1
    invoke-virtual {v1, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 130
    int-to-long v7, v12

    .line 131
    .end local v11    # "startOfPacket":I
    .end local v12    # "endOfPacket":I
    .end local v16    # "endOfLastPacketPosition":J
    .local v7, "endOfLastPacketPosition":J
    move v4, v15

    goto :goto_0

    .line 102
    .end local v15    # "limit":I
    .restart local v4    # "limit":I
    :cond_5
    move v15, v4

    move-wide/from16 v20, v5

    move-wide/from16 v16, v7

    .line 133
    .end local v4    # "limit":I
    .end local v5    # "startOfLastPacketPosition":J
    .end local v7    # "endOfLastPacketPosition":J
    .restart local v15    # "limit":I
    .restart local v16    # "endOfLastPacketPosition":J
    .restart local v20    # "startOfLastPacketPosition":J
    :goto_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v9, v4

    if-eqz v6, :cond_6

    .line 134
    add-long v4, v2, v16

    .line 135
    .local v4, "endOfLastPacketPositionInStream":J
    invoke-static {v9, v10, v4, v5}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v6

    return-object v6

    .line 138
    .end local v4    # "endOfLastPacketPositionInStream":J
    :cond_6
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v4
.end method


# virtual methods
.method public onSeekFinished()V
    .locals 2

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([B)V

    .line 145
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

    .line 85
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    .line 86
    .local v6, "inputPosition":J
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    sub-long/2addr v0, v6

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    .line 88
    .local v8, "bytesToSearch":I
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 91
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->searchForPcrValueInBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0
.end method
