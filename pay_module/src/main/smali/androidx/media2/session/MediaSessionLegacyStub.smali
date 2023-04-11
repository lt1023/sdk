.class Landroidx/media2/session/MediaSessionLegacyStub;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCbForAll;,
        Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;,
        Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionLegacyStub"

.field static final sCommandsForOnCommandRequest:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/session/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mControllerInfoForAll:Landroidx/media2/session/MediaSession$ControllerInfo;

.field final mLock:Ljava/lang/Object;

.field final mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

.field final mSessionManager:Landroidx/media/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 65
    const-string v0, "MediaSessionLegacyStub"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/MediaSessionLegacyStub;->DEBUG:Z

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$Builder;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;-><init>()V

    .line 73
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerCommands(IZ)Landroidx/media2/session/SessionCommandGroup$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllVolumeCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->build()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    .line 76
    .local v0, "group":Landroidx/media2/session/SessionCommandGroup;
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup;->getCommands()Ljava/util/Set;

    move-result-object v1

    .line 77
    .local v1, "commands":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/session/SessionCommand;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/session/SessionCommand;

    .line 78
    .local v3, "command":Landroidx/media2/session/SessionCommand;
    sget-object v4, Landroidx/media2/session/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 79
    .end local v3    # "command":Landroidx/media2/session/SessionCommand;
    goto :goto_0

    .line 77
    :cond_0
    nop

    .line 80
    .end local v0    # "group":Landroidx/media2/session/SessionCommandGroup;
    .end local v1    # "commands":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/session/SessionCommand;>;"
    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V
    .locals 5
    .param p1, "session"    # Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 91
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mLock:Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 93
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionManager:Landroidx/media/MediaSessionManager;

    .line 95
    new-instance v0, Landroidx/media2/session/MediaSession$ControllerInfo;

    new-instance v1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    const-string v2, "android.media.session.MediaController"

    .line 97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCbForAll;

    invoke-direct {v2, p0}, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCbForAll;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Landroidx/media2/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mControllerInfoForAll:Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 100
    new-instance v0, Landroidx/media2/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media2/session/ConnectedControllersManager;-><init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 101
    return-void
.end method

.method private dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 1
    .param p1, "commandCode"    # I
    .param p2, "task"    # Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTaskInternal(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 487
    return-void
.end method

.method private dispatchSessionTask(Landroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 1
    .param p1, "sessionCommand"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "task"    # Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTaskInternal(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 492
    return-void
.end method

.method private dispatchSessionTaskInternal(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 9
    .param p1, "sessionCommand"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "commandCode"    # I
    .param p3, "task"    # Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 496
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 500
    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 501
    .local v0, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    if-nez v0, :cond_1

    .line 502
    const-string v1, "MediaSessionLegacyStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteUserInfo is null, ignoring command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", commandCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Landroidx/media2/session/MediaSessionLegacyStub$25;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/MediaSessionLegacyStub$25;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method


# virtual methods
.method getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;
    .locals 1

    .line 481
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    return-object v0
.end method

.method getControllersForAll()Landroidx/media2/session/MediaSession$ControllerInfo;
    .locals 1

    .line 477
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mControllerInfoForAll:Landroidx/media2/session/MediaSession$ControllerInfo;

    return-object v0
.end method

.method handleTaskOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 5
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sessionCommand"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "commandCode"    # I
    .param p4, "task"    # Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 547
    if-eqz p2, :cond_1

    .line 548
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    sget-object v0, Landroidx/media2/session/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    invoke-virtual {v0, p1, p3}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 554
    return-void

    .line 556
    :cond_2
    sget-object v0, Landroidx/media2/session/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    .line 558
    .local v0, "command":Landroidx/media2/session/SessionCommand;
    :goto_0
    if-eqz v0, :cond_5

    .line 559
    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 560
    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v2

    .line 559
    invoke-virtual {v1, v2, p1, v0}, Landroidx/media2/session/MediaSession$SessionCallback;->onCommandRequest(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;)I

    move-result v1

    .line 561
    .local v1, "resultCode":I
    if-eqz v1, :cond_4

    .line 563
    sget-boolean v2, Landroidx/media2/session/MediaSessionLegacyStub;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 564
    const-string v2, "MediaSessionLegacyStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was rejected by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 563
    :cond_3
    nop

    .line 567
    :goto_1
    return-void

    .line 561
    :cond_4
    goto :goto_2

    .line 558
    .end local v1    # "resultCode":I
    :cond_5
    nop

    .line 571
    :goto_2
    :try_start_0
    invoke-interface {p4, p1}, Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;->run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_3

    .line 572
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionLegacyStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .line 411
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 412
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 2
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 416
    if-nez p1, :cond_0

    .line 417
    return-void

    .line 419
    :cond_0
    const/16 v0, 0x271d

    new-instance v1, Landroidx/media2/session/MediaSessionLegacyStub$22;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$22;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 433
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 105
    if-nez p1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroidx/media2/session/SessionCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    .local v0, "command":Landroidx/media2/session/SessionCommand;
    new-instance v1, Landroidx/media2/session/MediaSessionLegacyStub$1;

    invoke-direct {v1, p0, v0, p2, p3}, Landroidx/media2/session/MediaSessionLegacyStub$1;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(Landroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 119
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 380
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .line 330
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$17;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$17;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const v1, 0x9c40

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 338
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 241
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$10;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$10;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const/16 v1, 0x2711

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 247
    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 182
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$6;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$6;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const/16 v1, 0x2710

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 188
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 192
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$7;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$7;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c44

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 205
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 209
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$8;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$8;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c45

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 222
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 226
    if-nez p1, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    const v0, 0x9c46

    new-instance v1, Landroidx/media2/session/MediaSessionLegacyStub$9;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$9;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 237
    return-void
.end method

.method public onPrepare()V
    .locals 2

    .line 123
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$2;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$2;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const/16 v1, 0x2712

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 129
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 133
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$3;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c47

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 146
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 150
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$4;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c48

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 163
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 167
    if-nez p1, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    const v0, 0x9c49

    new-instance v1, Landroidx/media2/session/MediaSessionLegacyStub$5;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$5;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 178
    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 2
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .line 437
    if-nez p1, :cond_0

    .line 438
    return-void

    .line 440
    :cond_0
    const/16 v0, 0x271e

    new-instance v1, Landroidx/media2/session/MediaSessionLegacyStub$23;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaSessionLegacyStub$23;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 459
    return-void
.end method

.method public onRemoveQueueItemAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 463
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$24;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionLegacyStub$24;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;I)V

    const/16 v1, 0x271e

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 474
    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 342
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$18;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$18;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const v1, 0x9c41

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 349
    return-void
.end method

.method public onSeekTo(J)V
    .locals 2
    .param p1, "pos"    # J

    .line 271
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$12;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$12;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;J)V

    const/16 v1, 0x2713

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 277
    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 385
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 303
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$15;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionLegacyStub$15;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;F)V

    const/16 v1, 0x2714

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 309
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 1
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    .line 354
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 358
    if-nez p1, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    const v0, 0x9c4a

    new-instance v1, Landroidx/media2/session/MediaSessionLegacyStub$19;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaSessionLegacyStub$19;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/support/v4/media/RatingCompat;)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 375
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 2
    .param p1, "repeatMode"    # I

    .line 389
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$20;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionLegacyStub$20;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;I)V

    const/16 v1, 0x271b

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 396
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 2
    .param p1, "shuffleMode"    # I

    .line 400
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$21;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionLegacyStub$21;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;I)V

    const/16 v1, 0x271a

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 407
    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .line 281
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$13;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$13;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const/16 v1, 0x2719

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 288
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .line 292
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$14;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$14;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const/16 v1, 0x2718

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 299
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 2
    .param p1, "queueId"    # J

    .line 313
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$16;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionLegacyStub$16;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;J)V

    const/16 v1, 0x2717

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 326
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 254
    new-instance v0, Landroidx/media2/session/MediaSessionLegacyStub$11;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionLegacyStub$11;-><init>(Landroidx/media2/session/MediaSessionLegacyStub;)V

    const/16 v1, 0x2711

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaSessionLegacyStub;->dispatchSessionTask(ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 267
    return-void
.end method
