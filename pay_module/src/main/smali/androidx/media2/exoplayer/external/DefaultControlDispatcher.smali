.class public Landroidx/media2/exoplayer/external/DefaultControlDispatcher;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/ControlDispatcher;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSeekTo(Landroidx/media2/exoplayer/external/Player;IJ)Z
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .line 40
    invoke-interface {p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/Player;->seekTo(IJ)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchSetPlayWhenReady(Landroidx/media2/exoplayer/external/Player;Z)Z
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;
    .param p2, "playWhenReady"    # Z

    .line 34
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/Player;->setPlayWhenReady(Z)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchSetRepeatMode(Landroidx/media2/exoplayer/external/Player;I)Z
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;
    .param p2, "repeatMode"    # I

    .line 46
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/Player;->setRepeatMode(I)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchSetShuffleModeEnabled(Landroidx/media2/exoplayer/external/Player;Z)Z
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;
    .param p2, "shuffleModeEnabled"    # Z

    .line 52
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/Player;->setShuffleModeEnabled(Z)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchStop(Landroidx/media2/exoplayer/external/Player;Z)Z
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;
    .param p2, "reset"    # Z

    .line 58
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/Player;->stop(Z)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
