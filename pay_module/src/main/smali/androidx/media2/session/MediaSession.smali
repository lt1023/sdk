.class public Landroidx/media2/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSession$BuilderBase;,
        Landroidx/media2/session/MediaSession$MediaSessionImpl;,
        Landroidx/media2/session/MediaSession$ControllerCb;,
        Landroidx/media2/session/MediaSession$CommandButton;,
        Landroidx/media2/session/MediaSession$ControllerInfo;,
        Landroidx/media2/session/MediaSession$Builder;,
        Landroidx/media2/session/MediaSession$SessionCallback;
    }
.end annotation


# static fields
.field private static final SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "STATIC_LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATIC_LOCK:Ljava/lang/Object;

.field static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private final mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p4, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p5, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroidx/media2/session/MediaSession$SessionCallback;
    .param p7, "tokenExtras"    # Landroid/os/Bundle;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Landroidx/media2/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Landroidx/media2/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    sget-object v1, Landroidx/media2/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual/range {p0 .. p7}, Landroidx/media2/session/MediaSession;->createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;Landroid/os/Bundle;)Landroidx/media2/session/MediaSession$MediaSessionImpl;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 165
    return-void

    .line 159
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session ID must be unique. ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "id":Ljava/lang/String;
    .end local p3    # "player":Landroidx/media2/common/SessionPlayer;
    .end local p4    # "sessionActivity":Landroid/app/PendingIntent;
    .end local p5    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p6    # "callback":Landroidx/media2/session/MediaSession$SessionCallback;
    .end local p7    # "tokenExtras":Landroid/os/Bundle;
    throw v1

    .line 162
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "id":Ljava/lang/String;
    .restart local p3    # "player":Landroidx/media2/common/SessionPlayer;
    .restart local p4    # "sessionActivity":Landroid/app/PendingIntent;
    .restart local p5    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p6    # "callback":Landroidx/media2/session/MediaSession$SessionCallback;
    .restart local p7    # "tokenExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static getSession(Landroid/net/Uri;)Landroidx/media2/session/MediaSession;
    .locals 4
    .param p0, "sessionUri"    # Landroid/net/Uri;

    .line 182
    sget-object v0, Landroidx/media2/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Landroidx/media2/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaSession;

    .line 184
    .local v2, "session":Landroidx/media2/session/MediaSession;
    invoke-direct {v2}, Landroidx/media2/session/MediaSession;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    monitor-exit v0

    return-object v2

    .line 184
    :cond_0
    nop

    .line 187
    .end local v2    # "session":Landroidx/media2/session/MediaSession;
    goto :goto_0

    .line 188
    :cond_1
    monitor-exit v0

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method private getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 408
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public broadcastCustomCommand(Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 346
    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p1}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->broadcastCustomCommand(Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V

    .line 353
    return-void

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command should be a custom command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 207
    :try_start_0
    sget-object v0, Landroidx/media2/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :try_start_1
    sget-object v1, Landroidx/media2/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    goto :goto_0

    .line 209
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 211
    :catch_0
    move-exception v0

    .line 214
    :goto_0
    return-void
.end method

.method createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;Landroid/os/Bundle;)Landroidx/media2/session/MediaSession$MediaSessionImpl;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p4, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p5, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroidx/media2/session/MediaSession$SessionCallback;
    .param p7, "tokenExtras"    # Landroid/os/Bundle;

    .line 170
    new-instance v9, Landroidx/media2/session/MediaSessionImplBase;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media2/session/MediaSessionImplBase;-><init>(Landroidx/media2/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;Landroid/os/Bundle;)V

    return-object v9
.end method

.method getCallback()Landroidx/media2/session/MediaSession$SessionCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 260
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v0

    return-object v0
.end method

.method getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 256
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 252
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 241
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Landroidx/media2/session/MediaSession$MediaSessionImpl;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    return-object v0
.end method

.method getLegacyBrowerServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getLegacyBrowserServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getPlayer()Landroidx/media2/common/SessionPlayer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 232
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Landroidx/media2/session/SessionToken;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getToken()Landroidx/media2/session/SessionToken;

    move-result-object v0

    return-object v0
.end method

.method handleControllerConnectionFromService(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 6
    .param p1, "controller"    # Landroidx/media2/session/IMediaController;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 399
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->connectFromService(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 400
    return-void
.end method

.method public isClosed()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public sendCustomCommand(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Landroidx/media2/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 367
    if-eqz p1, :cond_2

    .line 370
    if-eqz p2, :cond_1

    .line 373
    invoke-virtual {p2}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->sendCustomCommand(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command should be a custom command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "controller shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowedCommands(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 324
    if-eqz p1, :cond_1

    .line 327
    if-eqz p2, :cond_0

    .line 330
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->setAllowedCommands(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V

    .line 331
    return-void

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "commands shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "controller shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomLayout(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 302
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    if-eqz p1, :cond_1

    .line 305
    if-eqz p2, :cond_0

    .line 308
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->setCustomLayout(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "layout shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "controller shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updatePlayer(Landroidx/media2/common/SessionPlayer;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Landroidx/media2/session/MediaSession;->mImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->updatePlayer(Landroidx/media2/common/SessionPlayer;)V

    .line 202
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "player shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
