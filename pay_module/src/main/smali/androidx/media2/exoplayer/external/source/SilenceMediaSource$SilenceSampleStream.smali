.class final Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/SilenceMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SilenceSampleStream"
.end annotation


# instance fields
.field private final durationBytes:J

.field private positionBytes:J

.field private sentFormat:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "durationUs"    # J

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$100(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    .line 194
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 195
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    .line 207
    return-void
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .locals 10
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p2, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .line 212
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr v2, v4

    .line 219
    .local v2, "bytesRemaining":J
    const-wide/16 v4, 0x0

    const/4 v0, -0x4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 220
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 221
    return v0

    .line 224
    :cond_1
    invoke-static {}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$200()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 225
    .local v5, "bytesToWrite":I
    invoke-virtual {p2, v5}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 226
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 227
    iget-object v1, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$200()[B

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 228
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$300(J)J

    move-result-wide v6

    iput-wide v6, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    .line 229
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 230
    return v0

    .line 212
    .end local v2    # "bytesRemaining":J
    .end local v5    # "bytesToWrite":I
    :cond_2
    :goto_0
    nop

    .line 213
    invoke-static {}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$000()Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 214
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    .line 215
    const/4 v0, -0x5

    return v0
.end method

.method public seekTo(J)V
    .locals 2
    .param p1, "positionUs"    # J

    .line 198
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$100(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 199
    return-void
.end method

.method public skipData(J)I
    .locals 6
    .param p1, "positionUs"    # J

    .line 235
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 236
    .local v0, "oldPositionBytes":J
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 237
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr v2, v0

    invoke-static {}, Landroidx/media2/exoplayer/external/source/SilenceMediaSource;->access$200()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v3, v2

    return v3
.end method
