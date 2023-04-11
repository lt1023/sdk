.class public Landroidx/media2/player/AudioFocusHandler;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;,
        Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AudioFocusHandler"


# instance fields
.field private final mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "player"    # Landroidx/media2/player/MediaPlayer;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    .line 65
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->close()V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->onPause()V

    .line 84
    return-void
.end method

.method public onPlay()Z
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->onPlay()Z

    move-result v0

    return v0
.end method

.method public onReset()V
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->onReset()V

    .line 91
    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Landroidx/media2/player/AudioFocusHandler;->mImpl:Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0, p1}, Landroidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl;->sendIntent(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
