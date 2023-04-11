.class Landroidx/media2/session/MediaSessionLegacyStub$25;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTaskInternal(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;

.field final synthetic val$commandCode:I

.field final synthetic val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field final synthetic val$sessionCommand:Landroidx/media2/session/SessionCommand;

.field final synthetic val$task:Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 506
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iput-object p3, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$sessionCommand:Landroidx/media2/session/SessionCommand;

    iput p4, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$commandCode:I

    iput-object p5, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$task:Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 509
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 514
    .local v0, "ctrl":Landroidx/media2/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 515
    move-object v1, v0

    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Landroidx/media2/session/MediaSession$ControllerInfo;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionManager:Landroidx/media/MediaSessionManager;

    iget-object v4, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 519
    invoke-virtual {v3, v4}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v3

    new-instance v4, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;

    iget-object v5, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v6, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v4, v5, v6}, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media2/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    .line 523
    .local v1, "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    :goto_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    invoke-virtual {v2, v1}, Landroidx/media2/session/ConnectedControllersManager;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 524
    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 525
    invoke-interface {v3}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v3

    .line 524
    invoke-virtual {v2, v3, v1}, Landroidx/media2/session/MediaSession$SessionCallback;->onConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SessionCommandGroup;

    move-result-object v2

    .line 526
    .local v2, "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    if-nez v2, :cond_2

    .line 528
    :try_start_0
    invoke-virtual {v1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/media2/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    goto :goto_1

    .line 529
    :catch_0
    move-exception v3

    .line 532
    :goto_1
    return-void

    .line 534
    :cond_2
    iget-object v3, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 535
    invoke-virtual {v1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v4

    .line 534
    invoke-virtual {v3, v4, v1, v2}, Landroidx/media2/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V

    goto :goto_2

    .line 523
    .end local v2    # "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    :cond_3
    nop

    .line 537
    :goto_2
    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$sessionCommand:Landroidx/media2/session/SessionCommand;

    iget v4, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$commandCode:I

    iget-object v5, p0, Landroidx/media2/session/MediaSessionLegacyStub$25;->val$task:Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroidx/media2/session/MediaSessionLegacyStub;->handleTaskOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 538
    return-void
.end method
