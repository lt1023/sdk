.class public Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;
.super Landroidx/media2/exoplayer/external/BaseRenderer;
.source "CameraMotionRenderer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final SAMPLE_WINDOW_DURATION_US:I = 0x186a0


# instance fields
.field private final buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

.field private final formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

.field private lastTimestampUs:J

.field private listener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private offsetUs:J

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/BaseRenderer;-><init>(I)V

    .line 55
    new-instance v0, Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 58
    return-void
.end method

.method private parseMetadata(Ljava/nio/ByteBuffer;)[F
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 128
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 129
    .local v1, "result":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 130
    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private resetListener()V
    .locals 2

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 137
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->listener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    goto :goto_0

    .line 137
    :cond_0
    nop

    .line 140
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 70
    move-object v0, p2

    check-cast v0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->listener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 74
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->resetListener()V

    .line 89
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->resetListener()V

    .line 84
    return-void
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 78
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->offsetUs:J

    .line 79
    return-void
.end method

.method public render(JJ)V
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    const-wide/32 v2, 0x186a0

    add-long/2addr v2, p1

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 97
    .local v0, "result":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->flip()V

    .line 102
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 103
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->listener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->parseMetadata(Ljava/nio/ByteBuffer;)[F

    move-result-object v1

    .line 105
    .local v1, "rotation":[F
    if-eqz v1, :cond_1

    .line 106
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->listener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;->offsetUs:J

    sub-long/2addr v3, v5

    invoke-interface {v2, v3, v4, v1}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    goto :goto_1

    .line 105
    :cond_1
    goto :goto_1

    .line 103
    .end local v1    # "rotation":[F
    :cond_2
    nop

    .line 109
    .end local v0    # "result":I
    :goto_1
    goto :goto_0

    .line 97
    .restart local v0    # "result":I
    :cond_3
    :goto_2
    nop

    .line 98
    return-void

    .line 94
    .end local v0    # "result":I
    :cond_4
    nop

    .line 110
    return-void
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 62
    const-string v0, "application/x-camera-motion"

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x4

    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0
.end method
