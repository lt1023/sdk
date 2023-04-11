.class public final Landroidx/media2/exoplayer/external/util/FlacStreamInfo;
.super Ljava/lang/Object;
.source "FlacStreamInfo.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final bitsPerSample:I

.field public final channels:I

.field public final maxBlockSize:I

.field public final maxFrameSize:I

.field public final minBlockSize:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final totalSamples:J


# direct methods
.method public constructor <init>(IIIIIIIJ)V
    .locals 0
    .param p1, "minBlockSize"    # I
    .param p2, "maxBlockSize"    # I
    .param p3, "minFrameSize"    # I
    .param p4, "maxFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "channels"    # I
    .param p7, "bitsPerSample"    # I
    .param p8, "totalSamples"    # J

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minBlockSize:I

    .line 87
    iput p2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxBlockSize:I

    .line 88
    iput p3, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minFrameSize:I

    .line 89
    iput p4, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxFrameSize:I

    .line 90
    iput p5, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    .line 91
    iput p6, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->channels:I

    .line 92
    iput p7, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitsPerSample:I

    .line 93
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->totalSamples:J

    .line 94
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    .line 50
    .local v0, "scratch":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 51
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minBlockSize:I

    .line 52
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxBlockSize:I

    .line 53
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minFrameSize:I

    .line 54
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxFrameSize:I

    .line 55
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    .line 56
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->channels:I

    .line 57
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitsPerSample:I

    .line 58
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    .line 59
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->totalSamples:J

    .line 61
    return-void
.end method


# virtual methods
.method public bitRate()I
    .locals 2

    .line 103
    iget v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitsPerSample:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    mul-int v0, v0, v1

    return v0
.end method

.method public durationUs()J
    .locals 4

    .line 108
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->totalSamples:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getApproxBytesPerFrame()J
    .locals 6

    .line 125
    iget v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxFrameSize:I

    if-lez v0, :cond_0

    .line 126
    int-to-long v0, v0

    iget v2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minFrameSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_1

    .line 130
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minBlockSize:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxBlockSize:I

    if-ne v0, v1, :cond_1

    if-lez v0, :cond_1

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1000

    .line 131
    .local v0, "blockSize":J
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->channels:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitsPerSample:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x40

    add-long v0, v2, v4

    .line 133
    .local v0, "approxBytesPerFrame":J
    :goto_1
    return-wide v0
.end method

.method public getSampleIndex(J)J
    .locals 10
    .param p1, "timeUs"    # J

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 119
    .local v0, "sampleIndex":J
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->totalSamples:J

    const-wide/16 v4, 0x1

    sub-long v8, v2, v4

    const-wide/16 v6, 0x0

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public maxDecodedFrameSize()I
    .locals 2

    .line 98
    iget v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxBlockSize:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->channels:I

    mul-int v0, v0, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    mul-int v0, v0, v1

    return v0
.end method
