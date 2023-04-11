.class public final Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DO_NOT_OFFSET:J = 0x7fffffffffffffffL

.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L


# instance fields
.field private firstSampleTimestampUs:J

.field private volatile lastSampleTimestampUs:J

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "firstSampleTimestampUs"    # J

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    .line 56
    return-void
.end method

.method public static ptsToUs(J)J
    .locals 4
    .param p0, "pts"    # J

    .line 179
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static usToPts(J)J
    .locals 4
    .param p0, "us"    # J

    .line 189
    const-wide/32 v0, 0x15f90

    mul-long v0, v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public adjustSampleTimestamp(J)J
    .locals 5
    .param p1, "timeUs"    # J

    .line 141
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 142
    return-wide v0

    .line 145
    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 146
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    goto :goto_1

    .line 148
    :cond_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 150
    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->timestampOffsetUs:J

    goto :goto_0

    .line 148
    :cond_2
    nop

    .line 152
    :goto_0
    monitor-enter p0

    .line 153
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, p1

    return-wide v0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public adjustTsTimestamp(J)J
    .locals 13
    .param p1, "pts90Khz"    # J

    .line 116
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 117
    return-wide v0

    .line 119
    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    .line 122
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->usToPts(J)J

    move-result-wide v0

    .line 123
    .local v0, "lastPts":J
    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    div-long/2addr v2, v4

    .line 124
    .local v2, "closestWrapCount":J
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    .line 125
    .local v6, "ptsWrapBelow":J
    mul-long v4, v4, v2

    add-long/2addr v4, p1

    .line 127
    .local v4, "ptsWrapAbove":J
    sub-long v8, v6, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v10, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    .line 128
    move-wide v8, v6

    goto :goto_0

    .line 129
    :cond_1
    move-wide v8, v4

    :goto_0
    move-wide p1, v8

    goto :goto_1

    .line 119
    .end local v0    # "lastPts":J
    .end local v2    # "closestWrapCount":J
    .end local v4    # "ptsWrapAbove":J
    .end local v6    # "ptsWrapBelow":J
    :cond_2
    nop

    .line 131
    :goto_1
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstSampleTimestampUs()J
    .locals 2

    .line 72
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->firstSampleTimestampUs:J

    return-wide v0
.end method

.method public getLastAdjustedTimestampUs()J
    .locals 7

    .line 82
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 83
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v2, v0

    goto :goto_0

    .line 84
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    move-wide v2, v0

    nop

    .line 82
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getTimestampOffsetUs()J
    .locals 7

    .line 97
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 98
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 99
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 97
    :goto_0
    return-wide v2
.end method

.method public reset()V
    .locals 2

    .line 106
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    .line 107
    return-void
.end method

.method public declared-synchronized setFirstSampleTimestampUs(J)V
    .locals 5
    .param p1, "firstSampleTimestampUs"    # J

    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 67
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .end local p1    # "firstSampleTimestampUs":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitUntilInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :goto_0
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method
