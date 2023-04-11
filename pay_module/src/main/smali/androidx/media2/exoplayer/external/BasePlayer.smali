.class public abstract Landroidx/media2/exoplayer/external/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/Player;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;,
        Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
    }
.end annotation


# instance fields
.field protected final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 36
    return-void
.end method

.method private getRepeatModeForNavigation()I
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getRepeatMode()I

    move-result v0

    .line 144
    .local v0, "repeatMode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method public final getBufferedPercentage()I
    .locals 9

    .line 114
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 115
    .local v0, "position":J
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getDuration()J

    move-result-wide v2

    .line 116
    .local v2, "duration":J
    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x64

    mul-long v6, v6, v0

    div-long/2addr v6, v2

    long-to-int v7, v6

    invoke-static {v7, v5, v4}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v4

    goto :goto_1

    .line 116
    :cond_2
    :goto_0
    nop

    .line 117
    const/4 v4, 0x0

    .line 116
    :goto_1
    return v4
.end method

.method public final getContentDuration()J
    .locals 3

    .line 135
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    .line 136
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/BasePlayer;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDurationMs()J

    move-result-wide v1

    .line 136
    :goto_0
    return-wide v1
.end method

.method public final getCurrentTag()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 105
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 106
    .local v0, "windowIndex":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v1

    .line 107
    .local v1, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 108
    const/4 v2, 0x0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/BasePlayer;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;Z)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Timeline$Window;->tag:Ljava/lang/Object;

    .line 107
    :goto_0
    return-object v2
.end method

.method public final getNextWindowIndex()I
    .locals 4

    .line 86
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    .line 87
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, -0x1

    goto :goto_0

    .line 89
    :cond_0
    nop

    .line 90
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    .line 87
    :goto_0
    return v1
.end method

.method public final getPreviousWindowIndex()I
    .locals 4

    .line 95
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    .line 96
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, -0x1

    goto :goto_0

    .line 98
    :cond_0
    nop

    .line 99
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    .line 96
    :goto_0
    return v1
.end method

.method public final hasNext()Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getNextWindowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getPreviousWindowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 3

    .line 123
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    .line 124
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/BasePlayer;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    .line 130
    .local v0, "timeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/BasePlayer;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/Timeline$Window;->isSeekable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final next()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getNextWindowIndex()I

    move-result v0

    .line 74
    .local v0, "nextWindowIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/BasePlayer;->seekToDefaultPosition(I)V

    goto :goto_0

    .line 74
    :cond_0
    nop

    .line 77
    :goto_0
    return-void
.end method

.method public final previous()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getPreviousWindowIndex()I

    move-result v0

    .line 61
    .local v0, "previousWindowIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/BasePlayer;->seekToDefaultPosition(I)V

    goto :goto_0

    .line 61
    :cond_0
    nop

    .line 64
    :goto_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .line 50
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/BasePlayer;->seekTo(IJ)V

    .line 51
    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/BasePlayer;->seekToDefaultPosition(I)V

    .line 41
    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 2
    .param p1, "windowIndex"    # I

    .line 45
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/BasePlayer;->seekTo(IJ)V

    .line 46
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/BasePlayer;->stop(Z)V

    .line 82
    return-void
.end method
