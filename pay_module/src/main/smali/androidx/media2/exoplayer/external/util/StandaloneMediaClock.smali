.class public final Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/MediaClock;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private baseElapsedMs:J

.field private baseUs:J

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

.field private started:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/Clock;)V
    .locals 1
    .param p1, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 47
    sget-object v0, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 48
    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object v0
.end method

.method public getPositionUs()J
    .locals 6

    .line 84
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->baseUs:J

    .line 85
    .local v0, "positionUs":J
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->baseElapsedMs:J

    sub-long/2addr v2, v4

    .line 87
    .local v2, "elapsedSinceBaseMs":J
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 88
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 90
    :cond_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-virtual {v4, v2, v3}, Landroidx/media2/exoplayer/external/PlaybackParameters;->getMediaTimeUsForPlayoutTimeMs(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 85
    .end local v2    # "elapsedSinceBaseMs":J
    :cond_1
    nop

    .line 93
    :goto_0
    return-wide v0
.end method

.method public resetPosition(J)V
    .locals 2
    .param p1, "positionUs"    # J

    .line 76
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->baseUs:J

    .line 77
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->baseElapsedMs:J

    goto :goto_0

    .line 77
    :cond_0
    nop

    .line 80
    :goto_0
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 99
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->resetPosition(J)V

    goto :goto_0

    .line 99
    :cond_0
    nop

    .line 102
    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 103
    return-object p1
.end method

.method public start()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->started:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->baseElapsedMs:J

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->started:Z

    goto :goto_0

    .line 54
    :cond_0
    nop

    .line 58
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->resetPosition(J)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->started:Z

    goto :goto_0

    .line 64
    :cond_0
    nop

    .line 68
    :goto_0
    return-void
.end method
