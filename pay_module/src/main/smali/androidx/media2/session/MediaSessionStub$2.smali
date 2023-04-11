.class Landroidx/media2/session/MediaSessionStub$2;
.super Ljava/lang/Object;
.source "MediaSessionStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionStub;->connect(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionStub;

.field final synthetic val$caller:Landroidx/media2/session/IMediaController;

.field final synthetic val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/IMediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionStub;

    .line 325
    iput-object p1, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/session/MediaSessionStub$2;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 328
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;

    .line 332
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 333
    .local v0, "callbackBinder":Landroid/os/IBinder;
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 334
    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 333
    invoke-virtual {v1, v2, v3}, Landroidx/media2/session/MediaSession$SessionCallback;->onConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SessionCommandGroup;

    move-result-object v1

    .line 338
    .local v1, "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v3, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v3}, Landroidx/media2/session/MediaSession$ControllerInfo;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 339
    .local v3, "accept":Z
    :goto_1
    if-eqz v3, :cond_7

    .line 340
    sget-boolean v2, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 341
    const-string v2, "MediaSessionStub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accepting connection, controllerInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " allowedCommands="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 340
    :cond_3
    nop

    .line 344
    :goto_2
    if-nez v1, :cond_4

    .line 347
    new-instance v2, Landroidx/media2/session/SessionCommandGroup;

    invoke-direct {v2}, Landroidx/media2/session/SessionCommandGroup;-><init>()V

    move-object v1, v2

    move-object v4, v1

    goto :goto_3

    .line 344
    :cond_4
    move-object v4, v1

    .line 350
    .end local v1    # "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    .local v4, "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    :goto_3
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v5, v1, Landroidx/media2/session/MediaSessionStub;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 351
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v1, v2}, Landroidx/media2/session/ConnectedControllersManager;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 352
    const-string v1, "MediaSessionStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has sent connection request multiple times"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 351
    :cond_5
    nop

    .line 355
    :goto_4
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v1, v0, v2, v4}, Landroidx/media2/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V

    .line 357
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 358
    invoke-virtual {v1, v2}, Landroidx/media2/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SequencedFutureManager;

    move-result-object v1

    .line 359
    .local v1, "sequencedFutureManager":Landroidx/media2/session/SequencedFutureManager;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    new-instance v2, Landroidx/media2/session/ConnectionResult;

    iget-object v5, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v6, v5, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-direct {v2, v5, v6, v4}, Landroidx/media2/session/ConnectionResult;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/MediaSession$MediaSessionImpl;Landroidx/media2/session/SessionCommandGroup;)V

    .line 372
    .local v2, "state":Landroidx/media2/session/ConnectionResult;
    iget-object v5, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v5, v5, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v5}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 373
    return-void

    .line 376
    :cond_6
    :try_start_1
    iget-object v5, p0, Landroidx/media2/session/MediaSessionStub$2;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-virtual {v1}, Landroidx/media2/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v6

    .line 377
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v7

    .line 376
    invoke-interface {v5, v6, v7}, Landroidx/media2/session/IMediaController;->onConnected(ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 380
    goto :goto_5

    .line 378
    :catch_0
    move-exception v5

    .line 382
    :goto_5
    iget-object v5, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v5, v5, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v5}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v5

    iget-object v6, p0, Landroidx/media2/session/MediaSessionStub$2;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v6, v6, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 383
    invoke-interface {v6}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v6

    iget-object v7, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 382
    invoke-virtual {v5, v6, v7}, Landroidx/media2/session/MediaSession$SessionCallback;->onPostConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)V

    .line 384
    .end local v1    # "sequencedFutureManager":Landroidx/media2/session/SequencedFutureManager;
    .end local v2    # "state":Landroidx/media2/session/ConnectionResult;
    move-object v1, v4

    goto :goto_7

    .line 359
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 385
    .end local v4    # "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    .local v1, "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    :cond_7
    sget-boolean v4, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 386
    const-string v4, "MediaSessionStub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting connection, controllerInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/media2/session/MediaSessionStub$2;->val$controllerInfo:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 385
    :cond_8
    nop

    .line 389
    :goto_6
    :try_start_3
    iget-object v4, p0, Landroidx/media2/session/MediaSessionStub$2;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-interface {v4, v2}, Landroidx/media2/session/IMediaController;->onDisconnected(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 393
    goto :goto_7

    .line 390
    :catch_1
    move-exception v2

    .line 395
    :goto_7
    return-void
.end method
