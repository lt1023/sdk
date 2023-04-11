.class public abstract Landroidx/media2/session/MediaSessionService;
.super Landroid/app/Service;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;,
        Landroidx/media2/session/MediaSessionService$MediaNotification;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "androidx.media2.session.MediaSessionService"


# instance fields
.field private final mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 123
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionService;->createImpl()Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    .line 124
    return-void
.end method


# virtual methods
.method public final addSession(Landroidx/media2/session/MediaSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->addSession(Landroidx/media2/session/MediaSession;)V

    .line 197
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "session shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createImpl()Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;
    .locals 1

    .line 127
    new-instance v0, Landroidx/media2/session/MediaSessionServiceImplBase;

    invoke-direct {v0}, Landroidx/media2/session/MediaSessionServiceImplBase;-><init>()V

    return-object v0
.end method

.method public final getSessions()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->getSessions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 140
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0, p0}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->onCreate(Landroidx/media2/session/MediaSessionService;)V

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 278
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 279
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->onDestroy()V

    .line 280
    return-void
.end method

.method public abstract onGetSession(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/MediaSession;
    .param p1    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 265
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUpdateNotification(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$MediaNotification;
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 228
    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->onUpdateNotification(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$MediaNotification;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "session shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeSession(Landroidx/media2/session/MediaSession;)V
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Landroidx/media2/session/MediaSessionService;->mImpl:Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;->removeSession(Landroidx/media2/session/MediaSession;)V

    .line 210
    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "session shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
