.class final Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x4e20


# instance fields
.field private durationUs:J

.field private firstScrValue:J

.field private isDurationRead:Z

.field private isFirstScrValueRead:Z

.field private isLastScrValueRead:Z

.field private lastScrValue:J

.field private final packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 63
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 64
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 65
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->durationUs:J

    .line 66
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 67
    return-void
.end method

.method private static checkMarkerBits([B)Z
    .locals 4
    .param p0, "scrBytes"    # [B

    .line 227
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    .line 228
    return v0

    .line 232
    :cond_0
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    .line 233
    return v0

    .line 237
    :cond_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    .line 238
    return v0

    .line 241
    :cond_2
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3

    .line 242
    return v0

    .line 246
    :cond_3
    const/16 v1, 0x8

    aget-byte v1, p0, v1

    const/4 v3, 0x3

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v0, 0x1

    nop

    :cond_4
    return v0
.end method

.method private finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .locals 2
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([B)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isDurationRead:Z

    .line 141
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method private peekIntAtPosition([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "position"    # I

    .line 219
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private readFirstScrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 8
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 148
    .local v1, "bytesToSearch":I
    const/4 v0, 0x0

    .line 149
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 150
    int-to-long v2, v0

    iput-wide v2, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 151
    return v6

    .line 154
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 155
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 156
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 158
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readFirstScrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->firstScrValue:J

    .line 159
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    .line 160
    return v3
.end method

.method private readFirstScrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 9
    .param p1, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 164
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 165
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 166
    .local v1, "searchEndPosition":I
    move v2, v0

    .line 167
    .local v2, "searchPosition":I
    :goto_0
    add-int/lit8 v3, v1, -0x3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v3, :cond_2

    .line 169
    iget-object v3, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v3, v2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v3

    .line 170
    .local v3, "nextStartCode":I
    const/16 v6, 0x1ba

    if-ne v3, v6, :cond_1

    .line 171
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 172
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v6

    .line 173
    .local v6, "scrValue":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    .line 174
    return-wide v6

    .line 173
    :cond_0
    goto :goto_1

    .line 170
    .end local v6    # "scrValue":J
    :cond_1
    nop

    .line 168
    .end local v3    # "nextStartCode":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_2
    nop

    .line 178
    .end local v2    # "searchPosition":I
    return-wide v4
.end method

.method private readLastScrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 10
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 184
    .local v0, "inputLength":J
    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 185
    .local v3, "bytesToSearch":I
    int-to-long v4, v3

    sub-long v4, v0, v4

    .line 186
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    const/4 v2, 0x1

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    .line 187
    iput-wide v4, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 188
    return v2

    .line 191
    :cond_0
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 192
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 193
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 195
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readLastScrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v8

    iput-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 196
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    .line 197
    return v7
.end method

.method private readLastScrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 9
    .param p1, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 201
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 202
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 203
    .local v1, "searchEndPosition":I
    add-int/lit8 v2, v1, -0x4

    .line 204
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v2, v0, :cond_2

    .line 206
    iget-object v5, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v5, v2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v5

    .line 207
    .local v5, "nextStartCode":I
    const/16 v6, 0x1ba

    if-ne v5, v6, :cond_1

    .line 208
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 209
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v6

    .line 210
    .local v6, "scrValue":J
    cmp-long v8, v6, v3

    if-eqz v8, :cond_0

    .line 211
    return-wide v6

    .line 210
    :cond_0
    goto :goto_1

    .line 207
    .end local v6    # "scrValue":J
    :cond_1
    nop

    .line 205
    .end local v5    # "nextStartCode":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 204
    :cond_2
    nop

    .line 215
    .end local v2    # "searchPosition":I
    return-wide v3
.end method

.method public static readScrValueFromPack(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 6
    .param p0, "packetBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 124
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 125
    .local v0, "originalPosition":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    .line 127
    return-wide v2

    .line 129
    :cond_0
    new-array v1, v4, [B

    .line 130
    .local v1, "scrBytes":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 131
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 132
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->checkMarkerBits([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    return-wide v2

    .line 135
    :cond_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readScrValueFromPackHeader([B)J

    move-result-wide v2

    return-wide v2
.end method

.method private static readScrValueFromPackHeader([B)J
    .locals 13
    .param p0, "scrBytes"    # [B

    .line 257
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x38

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const/16 v4, 0x1e

    shl-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v0, 0x14

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    const/4 v0, 0x2

    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v10, 0xf8

    and-long/2addr v4, v10

    shr-long/2addr v4, v3

    const/16 v12, 0xf

    shl-long/2addr v4, v12

    or-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0xd

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    aget-byte v0, p0, v3

    int-to-long v4, v0

    and-long/2addr v4, v8

    const/4 v0, 0x5

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v10

    shr-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 116
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getScrTimestampAdjuster()Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .locals 6
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "seekPositionHolder"    # Landroidx/media2/exoplayer/external/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readLastScrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 98
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->lastScrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 99
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 101
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v0, :cond_2

    .line 102
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readFirstScrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 104
    :cond_2
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 105
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 108
    :cond_3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 109
    .local v0, "minScrPositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->lastScrValue:J

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    .line 110
    .local v2, "maxScrPositionUs":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->durationUs:J

    .line 111
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v4

    return v4
.end method
