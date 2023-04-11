.class Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaControllerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionServiceConnection"
.end annotation


# instance fields
.field private final mConnectionHints:Landroid/os/Bundle;

.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroidx/media2/session/MediaControllerImplBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "connectionHints"    # Landroid/os/Bundle;

    .line 1375
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->mConnectionHints:Landroid/os/Bundle;

    .line 1377
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1428
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->close()V

    .line 1429
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1381
    const/4 v0, 0x0

    .line 1384
    .local v0, "connectionRequested":Z
    :try_start_0
    sget-boolean v1, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1385
    const-string v1, "MC2ImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    :cond_0
    nop

    .line 1388
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media2/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1389
    const-string v1, "MC2ImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v3}, Landroidx/media2/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but is connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    if-nez v0, :cond_1

    .line 1406
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v1}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_1

    .line 1405
    :cond_1
    nop

    .line 1391
    :goto_1
    return-void

    .line 1393
    :cond_2
    :try_start_1
    invoke-static {p2}, Landroidx/media2/session/IMediaSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaSessionService;

    move-result-object v1

    .line 1394
    .local v1, "iService":Landroidx/media2/session/IMediaSessionService;
    if-nez v1, :cond_4

    .line 1395
    const-string v2, "MC2ImplBase"

    const-string v3, "Service interface is missing."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    if-nez v0, :cond_3

    .line 1406
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v2, v2, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v2}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_2

    .line 1405
    :cond_3
    nop

    .line 1396
    :goto_2
    return-void

    .line 1398
    :cond_4
    :try_start_2
    new-instance v2, Landroidx/media2/session/ConnectionRequest;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    invoke-virtual {v3}, Landroidx/media2/session/MediaControllerImplBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1399
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->mConnectionHints:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/session/ConnectionRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1400
    .local v2, "request":Landroidx/media2/session/ConnectionRequest;
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v3, v3, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroidx/media2/session/IMediaSessionService;->connect(Landroidx/media2/session/IMediaController;Landroidx/versionedparcelable/ParcelImpl;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1401
    const/4 v0, 0x1

    .line 1405
    .end local v1    # "iService":Landroidx/media2/session/IMediaSessionService;
    .end local v2    # "request":Landroidx/media2/session/ConnectionRequest;
    if-nez v0, :cond_5

    .line 1406
    :goto_3
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v1}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_4

    .line 1405
    :cond_5
    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    .line 1402
    :catch_0
    move-exception v1

    .line 1403
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "MC2ImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has died prematurely"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1405
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    if-nez v0, :cond_5

    .line 1406
    goto :goto_3

    .line 1409
    :goto_4
    return-void

    .line 1405
    :goto_5
    if-nez v0, :cond_6

    .line 1406
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v2, v2, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v2}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_6

    .line 1405
    :cond_6
    nop

    .line 1406
    :goto_6
    throw v1

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1417
    sget-boolean v0, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1418
    const-string v0, "MC2ImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is disconnected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1417
    :cond_0
    nop

    .line 1420
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->close()V

    .line 1421
    return-void
.end method
