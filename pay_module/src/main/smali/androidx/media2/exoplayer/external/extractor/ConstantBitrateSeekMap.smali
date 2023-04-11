.class public Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;
.super Ljava/lang/Object;
.source "ConstantBitrateSeekMap.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final dataSize:J

.field private final durationUs:J

.field private final firstFrameBytePosition:J

.field private final frameSize:I

.field private final inputLength:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 3
    .param p1, "inputLength"    # J
    .param p3, "firstFrameBytePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->inputLength:J

    .line 53
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    .line 54
    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p6

    :goto_0
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->frameSize:I

    .line 55
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->bitrate:I

    .line 57
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 58
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 59
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->durationUs:J

    goto :goto_1

    .line 61
    :cond_1
    sub-long v0, p1, p3

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 62
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->durationUs:J

    .line 64
    :goto_1
    return-void
.end method

.method private getFramePositionForTimeUs(J)J
    .locals 13
    .param p1, "timeUs"    # J

    .line 122
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0x7a1200

    div-long/2addr v0, v2

    .line 124
    .local v0, "positionOffset":J
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v3, v2

    div-long v3, v0, v3

    int-to-long v5, v2

    mul-long v0, v3, v5

    .line 125
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->dataSize:J

    int-to-long v5, v2

    sub-long v11, v3, v5

    .line 126
    const-wide/16 v9, 0x0

    move-wide v7, v0

    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 127
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private static getTimeUsAtPosition(JJI)J
    .locals 4
    .param p0, "position"    # J
    .param p2, "firstFrameBytePosition"    # J
    .param p4, "bitrate"    # I

    .line 115
    sub-long v0, p0, p2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    int-to-long v2, p4

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 91
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 11
    .param p1, "timeUs"    # J

    .line 73
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 74
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v0

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->getFramePositionForTimeUs(J)J

    move-result-wide v0

    .line 77
    .local v0, "seekFramePosition":J
    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v2

    .line 78
    .local v2, "seekTimeUs":J
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 79
    .local v4, "seekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    cmp-long v5, v2, p1

    if-gez v5, :cond_2

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v6, v5

    add-long/2addr v6, v0

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->inputLength:J

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    int-to-long v5, v5

    add-long/2addr v5, v0

    .line 83
    .local v5, "secondSeekPosition":J
    invoke-virtual {p0, v5, v6}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v7

    .line 84
    .local v7, "secondSeekTimeUs":J
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v9, v7, v8, v5, v6}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 85
    .local v9, "secondSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    new-instance v10, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v10, v4, v9}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v10

    .line 79
    .end local v5    # "secondSeekPosition":J
    .end local v7    # "secondSeekTimeUs":J
    .end local v9    # "secondSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    :cond_2
    :goto_0
    nop

    .line 80
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v5, v4}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v5
.end method

.method public getTimeUsAtPosition(J)J
    .locals 3
    .param p1, "position"    # J

    .line 101
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->bitrate:I

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 5

    .line 68
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
