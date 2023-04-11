.class public abstract Landroidx/media2/session/MediaSession$SessionCallback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;
    }
.end annotation


# instance fields
.field mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandRequest(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public onConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SessionCommandGroup;
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 439
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$Builder;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;-><init>()V

    .line 440
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPredefinedCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->build()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    .line 442
    .local v0, "commands":Landroidx/media2/session/SessionCommandGroup;
    return-object v0
.end method

.method public onCreateMediaItem(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/common/MediaItem;
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCustomCommand(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Landroidx/media2/session/SessionResult;
    .locals 3
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customCommand"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 595
    new-instance v0, Landroidx/media2/session/SessionResult;

    const/4 v1, -0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public onDisconnected(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 467
    return-void
.end method

.method public onFastForward(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 752
    const/4 v0, -0x6

    return v0
.end method

.method public onPlayFromMediaId(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 614
    const/4 v0, -0x6

    return v0
.end method

.method public onPlayFromSearch(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 633
    const/4 v0, -0x6

    return v0
.end method

.method public onPlayFromUri(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 652
    const/4 v0, -0x6

    return v0
.end method

.method final onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
    .param p2, "state"    # I

    .line 804
    iget-object v0, p0, Landroidx/media2/session/MediaSession$SessionCallback;->mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;->onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V

    goto :goto_0

    .line 804
    :cond_0
    nop

    .line 807
    :goto_0
    return-void
.end method

.method public onPostConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 458
    return-void
.end method

.method public onPrepareFromMediaId(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 681
    const/4 v0, -0x6

    return v0
.end method

.method public onPrepareFromSearch(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 710
    const/4 v0, -0x6

    return v0
.end method

.method public onPrepareFromUri(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 738
    const/4 v0, -0x6

    return v0
.end method

.method public onRewind(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 766
    const/4 v0, -0x6

    return v0
.end method

.method final onSessionClosed(Landroidx/media2/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;

    .line 810
    iget-object v0, p0, Landroidx/media2/session/MediaSession$SessionCallback;->mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;->onSessionClosed(Landroidx/media2/session/MediaSession;)V

    goto :goto_0

    .line 810
    :cond_0
    nop

    .line 813
    :goto_0
    return-void
.end method

.method public onSetRating(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/common/Rating;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "rating"    # Landroidx/media2/common/Rating;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 572
    const/4 v0, -0x6

    return v0
.end method

.method public onSkipBackward(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 796
    const/4 v0, -0x6

    return v0
.end method

.method public onSkipForward(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 781
    const/4 v0, -0x6

    return v0
.end method

.method setForegroundServiceEventCallback(Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    .line 816
    iput-object p1, p0, Landroidx/media2/session/MediaSession$SessionCallback;->mForegroundServiceEventCallback:Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;

    .line 817
    return-void
.end method
