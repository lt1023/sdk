.class final Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final averageBytesPerSecond:I

.field private final bitsPerSample:I

.field private final blockAlignment:I

.field private dataSize:J

.field private dataStartPosition:J

.field private final encoding:I

.field private final numChannels:I

.field private final sampleRateHz:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "numChannels"    # I
    .param p2, "sampleRateHz"    # I
    .param p3, "averageBytesPerSecond"    # I
    .param p4, "blockAlignment"    # I
    .param p5, "bitsPerSample"    # I
    .param p6, "encoding"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->numChannels:I

    .line 56
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->sampleRateHz:I

    .line 57
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->averageBytesPerSecond:I

    .line 58
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->blockAlignment:I

    .line 59
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->bitsPerSample:I

    .line 60
    iput p6, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->encoding:I

    .line 61
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    .line 137
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->sampleRateHz:I

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int v0, v0, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->numChannels:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .line 132
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->blockAlignment:I

    return v0
.end method

.method public getDataLimit()J
    .locals 4

    .line 78
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataStartPosition:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataSize:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getDurationUs()J
    .locals 6

    .line 95
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataSize:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 96
    .local v0, "numFrames":J
    const-wide/32 v2, 0xf4240

    mul-long v2, v2, v0

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->sampleRateHz:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getEncoding()I
    .locals 1

    .line 152
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->encoding:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .line 147
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->numChannels:I

    return v0
.end method

.method public getSampleRateHz()I
    .locals 1

    .line 142
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->sampleRateHz:I

    return v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 13
    .param p1, "timeUs"    # J

    .line 101
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 103
    .local v0, "positionOffset":J
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v3, v2

    div-long v3, v0, v3

    int-to-long v5, v2

    mul-long v0, v3, v5

    .line 104
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataSize:J

    int-to-long v5, v2

    sub-long v11, v3, v5

    const-wide/16 v9, 0x0

    move-wide v7, v0

    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 105
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataStartPosition:J

    add-long/2addr v2, v0

    .line 106
    .local v2, "seekPosition":J
    invoke-virtual {p0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v4

    .line 107
    .local v4, "seekTimeUs":J
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v6, v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 108
    .local v6, "seekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    cmp-long v7, v4, p1

    if-gez v7, :cond_1

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataSize:J

    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v10, v9

    sub-long/2addr v7, v10

    cmp-long v10, v0, v7

    if-nez v10, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    int-to-long v7, v9

    add-long/2addr v7, v2

    .line 112
    .local v7, "secondSeekPosition":J
    invoke-virtual {p0, v7, v8}, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v9

    .line 113
    .local v9, "secondSeekTimeUs":J
    new-instance v11, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v11, v9, v10, v7, v8}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 114
    .local v11, "secondSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    new-instance v12, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v12, v6, v11}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v12

    .line 108
    .end local v7    # "secondSeekPosition":J
    .end local v9    # "secondSeekTimeUs":J
    .end local v11    # "secondSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    :cond_1
    :goto_0
    nop

    .line 109
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v7, v6}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v7
.end method

.method public getTimeUs(J)J
    .locals 6
    .param p1, "position"    # J

    .line 126
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataStartPosition:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 127
    .local v0, "positionOffset":J
    const-wide/32 v2, 0xf4240

    mul-long v2, v2, v0

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public hasDataBounds()Z
    .locals 5

    .line 83
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataStartPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataSize:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public setDataBounds(JJ)V
    .locals 0
    .param p1, "dataStartPosition"    # J
    .param p3, "dataSize"    # J

    .line 72
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataStartPosition:J

    .line 73
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/wav/WavHeader;->dataSize:J

    .line 74
    return-void
.end method
