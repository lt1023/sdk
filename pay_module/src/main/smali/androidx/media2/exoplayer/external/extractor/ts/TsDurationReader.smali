.class final Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x1b8a0


# instance fields
.field private durationUs:J

.field private firstPcrValue:J

.field private isDurationRead:Z

.field private isFirstPcrValueRead:Z

.field private isLastPcrValueRead:Z

.field private lastPcrValue:J

.field private final packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 60
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 61
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 62
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->durationUs:J

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 64
    return-void
.end method

.method private finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .locals 2
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([B)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 128
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method private readFirstPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I
    .locals 8
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 135
    .local v1, "bytesToSearch":I
    const/4 v0, 0x0

    .line 136
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 137
    int-to-long v2, v0

    iput-wide v2, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 138
    return v6

    .line 141
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 142
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 143
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 145
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, v2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readFirstPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 146
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    .line 147
    return v3
.end method

.method private readFirstPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J
    .locals 8
    .param p1, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "pcrPid"    # I

    .line 151
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 152
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 153
    .local v1, "searchEndPosition":I
    move v2, v0

    .line 154
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v1, :cond_2

    .line 156
    iget-object v5, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v2

    const/16 v6, 0x47

    if-eq v5, v6, :cond_0

    .line 157
    goto :goto_1

    .line 159
    :cond_0
    invoke-static {p1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)J

    move-result-wide v5

    .line 160
    .local v5, "pcrValue":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    .line 161
    return-wide v5

    .line 160
    :cond_1
    nop

    .line 155
    .end local v5    # "pcrValue":J
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_2
    nop

    .line 164
    .end local v2    # "searchPosition":I
    return-wide v3
.end method

.method private readLastPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I
    .locals 10
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 170
    .local v0, "inputLength":J
    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 171
    .local v3, "bytesToSearch":I
    int-to-long v4, v3

    sub-long v4, v0, v4

    .line 172
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    const/4 v2, 0x1

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    .line 173
    iput-wide v4, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 174
    return v2

    .line 177
    :cond_0
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 178
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 179
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 181
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, v6, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readLastPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J

    move-result-wide v8

    iput-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 182
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    .line 183
    return v7
.end method

.method private readLastPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J
    .locals 8
    .param p1, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "pcrPid"    # I

    .line 187
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 188
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 189
    .local v1, "searchEndPosition":I
    add-int/lit8 v2, v1, -0x1

    .line 190
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_2

    .line 192
    iget-object v5, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v2

    const/16 v6, 0x47

    if-eq v5, v6, :cond_0

    .line 193
    goto :goto_1

    .line 195
    :cond_0
    invoke-static {p1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)J

    move-result-wide v5

    .line 196
    .local v5, "pcrValue":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    .line 197
    return-wide v5

    .line 196
    :cond_1
    nop

    .line 191
    .end local v5    # "pcrValue":J
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 190
    :cond_2
    nop

    .line 200
    .end local v2    # "searchPosition":I
    return-wide v3
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 114
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getPcrTimestampAdjuster()Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .param p3, "pcrPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 88
    if-gtz p3, :cond_0

    .line 89
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 91
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v0, :cond_1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readLastPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I

    move-result v0

    return v0

    .line 94
    :cond_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 95
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 97
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v0, :cond_3

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readFirstPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I

    move-result v0

    return v0

    .line 100
    :cond_3
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 101
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 104
    :cond_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 105
    .local v0, "minPcrPositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    .line 106
    .local v2, "maxPcrPositionUs":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->durationUs:J

    .line 107
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v4

    return v4
.end method
