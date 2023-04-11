.class Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;
.super Ljava/lang/Object;
.source "MediaSessionServiceImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->connect(Landroidx/media2/session/IMediaController;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

.field final synthetic val$caller:Landroidx/media2/session/IMediaController;

.field final synthetic val$connectionHints:Landroid/os/Bundle;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media2/session/IMediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    .line 261
    iput-object p1, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->this$0:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$pid:I

    iput p4, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$uid:I

    iput-object p5, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$connectionHints:Landroid/os/Bundle;

    iput-object p6, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 264
    const/4 v0, 0x1

    .line 266
    .local v0, "shouldNotifyDisconnected":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->this$0:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mServiceImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaSessionServiceImplBase;

    .line 267
    .local v2, "serviceImpl":Landroidx/media2/session/MediaSessionServiceImplBase;
    if-nez v2, :cond_1

    .line 269
    const-string v3, "MSS2ImplBase"

    const-string v4, "ServiceImpl isn\'t available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    if-eqz v0, :cond_0

    .line 316
    const-string v3, "MSS2ImplBase"

    const-string v4, "Notifying the controller of its disconnection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_1
    iget-object v3, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-interface {v3, v1}, Landroidx/media2/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    goto :goto_0

    .line 314
    :cond_0
    nop

    .line 271
    :goto_0
    return-void

    .line 273
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroidx/media2/session/MediaSessionServiceImplBase;->getInstance()Landroidx/media2/session/MediaSessionService;

    move-result-object v3

    .line 274
    .local v3, "service":Landroidx/media2/session/MediaSessionService;
    if-nez v3, :cond_3

    .line 276
    const-string v4, "MSS2ImplBase"

    const-string v5, "Service isn\'t available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    if-eqz v0, :cond_2

    .line 316
    const-string v4, "MSS2ImplBase"

    const-string v5, "Notifying the controller of its disconnection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_3
    iget-object v4, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-interface {v4, v1}, Landroidx/media2/session/IMediaController;->onDisconnected(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 323
    goto :goto_1

    .line 320
    :catch_1
    move-exception v1

    goto :goto_1

    .line 314
    :cond_2
    nop

    .line 278
    :goto_1
    return-void

    .line 281
    :cond_3
    :try_start_4
    new-instance v4, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v5, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$packageName:Ljava/lang/String;

    iget v6, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$pid:I

    iget v7, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$uid:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 283
    .local v4, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    iget-object v5, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->this$0:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    iget-object v5, v5, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mMediaSessionManager:Landroidx/media/MediaSessionManager;

    invoke-virtual {v5, v4}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v5

    .line 285
    .local v5, "isTrusted":Z
    new-instance v6, Landroidx/media2/session/MediaSession$ControllerInfo;

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$connectionHints:Landroid/os/Bundle;

    invoke-direct {v6, v4, v5, v7, v8}, Landroidx/media2/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    .line 289
    .local v6, "controllerInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    const-string v7, "MSS2ImplBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handling incoming connection request from the controller="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    :try_start_5
    invoke-virtual {v3, v6}, Landroidx/media2/session/MediaSessionService;->onGetSession(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/MediaSession;

    move-result-object v7

    .line 295
    .local v7, "session":Landroidx/media2/session/MediaSession;
    if-nez v7, :cond_5

    .line 297
    const-string v8, "MSS2ImplBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rejecting incoming connection request from the controller="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    if-eqz v0, :cond_4

    .line 316
    const-string v8, "MSS2ImplBase"

    const-string v9, "Notifying the controller of its disconnection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_6
    iget-object v8, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-interface {v8, v1}, Landroidx/media2/session/IMediaController;->onDisconnected(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 323
    goto :goto_2

    .line 320
    :catch_2
    move-exception v1

    goto :goto_2

    .line 314
    :cond_4
    nop

    .line 300
    :goto_2
    return-void

    .line 303
    :cond_5
    :try_start_7
    invoke-virtual {v3, v7}, Landroidx/media2/session/MediaSessionService;->addSession(Landroidx/media2/session/MediaSession;)V

    .line 304
    const/4 v0, 0x0

    .line 306
    iget-object v9, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$caller:Landroidx/media2/session/IMediaController;

    iget-object v10, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$packageName:Ljava/lang/String;

    iget v11, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$pid:I

    iget v12, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$uid:I

    iget-object v13, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$connectionHints:Landroid/os/Bundle;

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, Landroidx/media2/session/MediaSession;->handleControllerConnectionFromService(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 311
    goto :goto_3

    .line 308
    .end local v7    # "session":Landroidx/media2/session/MediaSession;
    :catch_3
    move-exception v7

    .line 310
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v8, "MSS2ImplBase"

    const-string v9, "Failed to add a session to session service"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 314
    .end local v2    # "serviceImpl":Landroidx/media2/session/MediaSessionServiceImplBase;
    .end local v3    # "service":Landroidx/media2/session/MediaSessionService;
    .end local v4    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local v5    # "isTrusted":Z
    .end local v6    # "controllerInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v0, :cond_6

    .line 316
    const-string v2, "MSS2ImplBase"

    const-string v3, "Notifying the controller of its disconnection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_9
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-interface {v2, v1}, Landroidx/media2/session/IMediaController;->onDisconnected(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    .line 320
    :catch_4
    move-exception v1

    .line 323
    :goto_4
    goto :goto_5

    .line 314
    :cond_6
    nop

    .line 326
    :goto_5
    return-void

    .line 314
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_7

    .line 316
    const-string v3, "MSS2ImplBase"

    const-string v4, "Notifying the controller of its disconnection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_a
    iget-object v3, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;->val$caller:Landroidx/media2/session/IMediaController;

    invoke-interface {v3, v1}, Landroidx/media2/session/IMediaController;->onDisconnected(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    .line 323
    goto :goto_6

    .line 320
    :catch_5
    move-exception v1

    goto :goto_6

    .line 314
    :cond_7
    nop

    .line 323
    :goto_6
    throw v2
.end method
