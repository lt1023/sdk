.class Landroidx/media2/session/MediaSessionStub;
.super Landroidx/media2/session/IMediaSession$Stub;
.source "MediaSessionStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSessionStub$Controller2Cb;,
        Landroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;,
        Landroidx/media2/session/MediaSessionStub$SessionCallbackTask;,
        Landroidx/media2/session/MediaSessionStub$SessionPlayerTask;,
        Landroidx/media2/session/MediaSessionStub$SessionTask;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final RETHROW_EXCEPTION:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaSessionStub"

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
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mLock:Ljava/lang/Object;

.field final mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

.field final mSessionManager:Landroidx/media/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 79
    const-string v0, "MediaSessionStub"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSessionStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$Builder;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;-><init>()V

    .line 85
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerCommands(IZ)Landroidx/media2/session/SessionCommandGroup$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllVolumeCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->build()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    .line 88
    .local v0, "group":Landroidx/media2/session/SessionCommandGroup;
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup;->getCommands()Ljava/util/Set;

    move-result-object v1

    .line 89
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

    .line 90
    .local v3, "command":Landroidx/media2/session/SessionCommand;
    sget-object v4, Landroidx/media2/session/MediaSessionStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 91
    .end local v3    # "command":Landroidx/media2/session/SessionCommand;
    goto :goto_0

    .line 89
    :cond_0
    nop

    .line 92
    .end local v0    # "group":Landroidx/media2/session/SessionCommandGroup;
    .end local v1    # "commands":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/session/SessionCommand;>;"
    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V
    .locals 1
    .param p1, "sessionImpl"    # Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 103
    invoke-direct {p0}, Landroidx/media2/session/IMediaSession$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mLock:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 105
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mSessionManager:Landroidx/media/MediaSessionManager;

    .line 107
    new-instance v0, Landroidx/media2/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media2/session/ConnectedControllersManager;-><init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 108
    return-void
.end method

.method private dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V
    .locals 7
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "seq"    # I
    .param p3, "commandCode"    # I
    .param p4, "task"    # Landroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 312
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    instance-of v0, v0, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    if-eqz v0, :cond_0

    .line 315
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTaskInternal(Landroidx/media2/session/IMediaController;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 316
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MediaSession cannot handle MediaLibrarySession command"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "seq"    # I
    .param p3, "commandCode"    # I
    .param p4, "task"    # Landroidx/media2/session/MediaSessionStub$SessionTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTaskInternal(Landroidx/media2/session/IMediaController;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 160
    return-void
.end method

.method private dispatchSessionTask(Landroidx/media2/session/IMediaController;ILandroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "seq"    # I
    .param p3, "sessionCommand"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "task"    # Landroidx/media2/session/MediaSessionStub$SessionTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTaskInternal(Landroidx/media2/session/IMediaController;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 166
    return-void
.end method

.method private dispatchSessionTaskInternal(Landroidx/media2/session/IMediaController;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionStub$SessionTask;)V
    .locals 13
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "seq"    # I
    .param p3, "sessionCommand"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "commandCode"    # I
    .param p5, "task"    # Landroidx/media2/session/MediaSessionStub$SessionTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    move-object v8, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 174
    .local v9, "token":J
    :try_start_0
    iget-object v0, v8, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 175
    invoke-interface {p1}, Landroidx/media2/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroidx/media2/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 176
    .local v0, "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    iget-object v1, v8, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, v8, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    new-instance v12, Landroidx/media2/session/MediaSessionStub$1;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/media2/session/MediaSessionStub$1;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v0    # "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    nop

    .line 308
    return-void

    .line 176
    .restart local v0    # "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    :cond_1
    :goto_0
    nop

    .line 306
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    return-void

    .line 306
    .end local v0    # "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method static sendLibraryResult(Landroidx/media2/session/MediaSession$ControllerInfo;II)V
    .locals 1
    .param p0, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "seq"    # I
    .param p2, "resultCode"    # I

    .line 143
    new-instance v0, Landroidx/media2/session/LibraryResult;

    invoke-direct {v0, p2}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-static {p0, p1, v0}, Landroidx/media2/session/MediaSessionStub;->sendLibraryResult(Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/LibraryResult;)V

    .line 144
    return-void
.end method

.method static sendLibraryResult(Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/LibraryResult;)V
    .locals 4
    .param p0, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/session/LibraryResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSession$ControllerCb;->onLibraryResult(ILandroidx/media2/session/LibraryResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static sendPlayerResult(Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/common/SessionPlayer$PlayerResult;)V
    .locals 4
    .param p0, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/common/SessionPlayer$PlayerResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSession$ControllerCb;->onPlayerResult(ILandroidx/media2/common/SessionPlayer$PlayerResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static sendSessionResult(Landroidx/media2/session/MediaSession$ControllerInfo;II)V
    .locals 1
    .param p0, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "seq"    # I
    .param p2, "resultCode"    # I

    .line 117
    new-instance v0, Landroidx/media2/session/SessionResult;

    invoke-direct {v0, p2}, Landroidx/media2/session/SessionResult;-><init>(I)V

    invoke-static {p0, p1, v0}, Landroidx/media2/session/MediaSessionStub;->sendSessionResult(Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/SessionResult;)V

    .line 118
    return-void
.end method

.method static sendSessionResult(Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/SessionResult;)V
    .locals 4
    .param p0, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/session/SessionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSession$ControllerCb;->onSessionResult(ILandroidx/media2/session/SessionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addPlaylistItem(Landroidx/media2/session/IMediaController;IILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaId"    # Ljava/lang/String;

    .line 888
    if-nez p1, :cond_0

    .line 889
    return-void

    .line 891
    :cond_0
    const/16 v0, 0x271d

    new-instance v1, Landroidx/media2/session/MediaSessionStub$25;

    invoke-direct {v1, p0, p4, p3}, Landroidx/media2/session/MediaSessionStub$25;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 907
    return-void
.end method

.method public adjustVolume(Landroidx/media2/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "direction"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 498
    if-nez p1, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    const/16 v0, 0x7531

    new-instance v1, Landroidx/media2/session/MediaSessionStub$4;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$4;-><init>(Landroidx/media2/session/MediaSessionStub;II)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 513
    return-void
.end method

.method public connect(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 11
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "connectionRequest"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 425
    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 428
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 429
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 430
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 431
    .local v8, "token":J
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/media2/session/ConnectionRequest;

    .line 434
    .local v10, "request":Landroidx/media2/session/ConnectionRequest;
    if-eqz v7, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Landroidx/media2/session/ConnectionRequest;->getPid()I

    move-result v0

    move v3, v0

    .line 436
    .local v3, "pid":I
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Landroidx/media2/session/ConnectionRequest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroidx/media2/session/ConnectionRequest;->getConnectionHints()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/MediaSessionStub;->connect(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 425
    .end local v3    # "pid":I
    .end local v6    # "uid":I
    .end local v7    # "callingPid":I
    .end local v8    # "token":J
    .end local v10    # "request":Landroidx/media2/session/ConnectionRequest;
    :cond_2
    :goto_1
    nop

    .line 426
    return-void
.end method

.method connect(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 320
    new-instance v0, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p2, p3, p4}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 322
    .local v0, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    new-instance v1, Landroidx/media2/session/MediaSession$ControllerInfo;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub;->mSessionManager:Landroidx/media/MediaSessionManager;

    .line 323
    invoke-virtual {v2, v0}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v2

    new-instance v3, Landroidx/media2/session/MediaSessionStub$Controller2Cb;

    invoke-direct {v3, p0, p1}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/IMediaController;)V

    invoke-direct {v1, v0, v2, v3, p5}, Landroidx/media2/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    .line 325
    .local v1, "controllerInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroidx/media2/session/MediaSessionStub$2;

    invoke-direct {v3, p0, v1, p1}, Landroidx/media2/session/MediaSessionStub$2;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/IMediaController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method convertMediaItemOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/common/MediaItem;
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "mediaId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 402
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 406
    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/session/MediaSession$SessionCallback;->onCreateMediaItem(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 407
    .local v0, "newItem":Landroidx/media2/common/MediaItem;
    if-nez v0, :cond_1

    .line 408
    const-string v1, "MediaSessionStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateMediaItem(mediaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") returned null. Ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 411
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    const-string v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    :goto_0
    return-object v0

    .line 410
    :cond_2
    goto :goto_1

    .line 409
    :cond_3
    nop

    .line 412
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateMediaItem(mediaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): media ID in the returned media item should match"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deselectTrack(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "trackInfoParcel"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 1058
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    const/16 v0, 0x2afa

    new-instance v1, Landroidx/media2/session/MediaSessionStub$35;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$35;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 1072
    return-void

    .line 1058
    :cond_1
    :goto_0
    nop

    .line 1059
    return-void
.end method

.method public fastForward(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I

    .line 559
    if-nez p1, :cond_0

    .line 560
    return-void

    .line 562
    :cond_0
    const v0, 0x9c40

    new-instance v1, Landroidx/media2/session/MediaSessionStub$8;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$8;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 570
    return-void
.end method

.method public getChildren(Landroidx/media2/session/IMediaController;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 8
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParams"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1123
    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    const v0, 0xc353

    new-instance v7, Landroidx/media2/session/MediaSessionStub$38;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/MediaSessionStub$38;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/media2/session/MediaSessionStub;->dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V

    .line 1148
    return-void

    .line 1123
    :cond_1
    :goto_0
    nop

    .line 1124
    return-void
.end method

.method getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/session/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    return-object v0
.end method

.method public getItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1106
    new-instance v0, Landroidx/media2/session/MediaSessionStub$37;

    invoke-direct {v0, p0, p3}, Landroidx/media2/session/MediaSessionStub$37;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;)V

    const v1, 0xc354

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media2/session/MediaSessionStub;->dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V

    .line 1117
    return-void
.end method

.method public getLibraryRoot(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "libraryParams"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1089
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    const v0, 0xc350

    new-instance v1, Landroidx/media2/session/MediaSessionStub$36;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$36;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V

    .line 1101
    return-void

    .line 1089
    :cond_1
    :goto_0
    nop

    .line 1090
    return-void
.end method

.method getLibrarySession()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;
    .locals 2

    .line 1080
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    instance-of v1, v0, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    if-eqz v1, :cond_0

    .line 1083
    check-cast v0, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    return-object v0

    .line 1081
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session cannot be casted to library session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSearchResult(Landroidx/media2/session/IMediaController;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 8
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParams"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 1173
    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 1176
    :cond_0
    const v0, 0xc356

    new-instance v7, Landroidx/media2/session/MediaSessionStub$40;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/MediaSessionStub$40;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/media2/session/MediaSessionStub;->dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V

    .line 1201
    return-void

    .line 1173
    :cond_1
    :goto_0
    nop

    .line 1174
    return-void
.end method

.method public onControllerResult(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 4
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "sessionResult"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 458
    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 463
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 464
    invoke-interface {p1}, Landroidx/media2/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Landroidx/media2/session/ConnectedControllersManager;->getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media2/session/SequencedFutureManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .local v2, "manager":Landroidx/media2/session/SequencedFutureManager;
    if-nez v2, :cond_1

    .line 471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    return-void

    .line 468
    :cond_1
    :try_start_1
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    check-cast v3, Landroidx/media2/session/SessionResult;

    .line 469
    .local v3, "result":Landroidx/media2/session/SessionResult;
    invoke-virtual {v2, p2, v3}, Landroidx/media2/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .end local v2    # "manager":Landroidx/media2/session/SequencedFutureManager;
    .end local v3    # "result":Landroidx/media2/session/SessionResult;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    nop

    .line 473
    return-void

    .line 471
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 458
    .end local v0    # "token":J
    :cond_2
    :goto_0
    nop

    .line 459
    return-void
.end method

.method public onCustomCommand(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "command"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 634
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    .line 638
    .local v0, "sessionCommand":Landroidx/media2/session/SessionCommand;
    new-instance v1, Landroidx/media2/session/MediaSessionStub$13;

    invoke-direct {v1, p0, v0, p4}, Landroidx/media2/session/MediaSessionStub$13;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;ILandroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 654
    return-void

    .line 634
    .end local v0    # "sessionCommand":Landroidx/media2/session/SessionCommand;
    :cond_1
    :goto_0
    nop

    .line 635
    return-void
.end method

.method public pause(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 531
    if-nez p1, :cond_0

    .line 532
    return-void

    .line 534
    :cond_0
    const/16 v0, 0x2711

    new-instance v1, Landroidx/media2/session/MediaSessionStub$6;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$6;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 541
    return-void
.end method

.method public play(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 517
    if-nez p1, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    const/16 v0, 0x2710

    new-instance v1, Landroidx/media2/session/MediaSessionStub$5;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$5;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 527
    return-void
.end method

.method public playFromMediaId(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 762
    if-nez p1, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    const v0, 0x9c44

    new-instance v1, Landroidx/media2/session/MediaSessionStub$19;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$19;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 778
    return-void
.end method

.method public playFromSearch(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 742
    if-nez p1, :cond_0

    .line 743
    return-void

    .line 745
    :cond_0
    const v0, 0x9c45

    new-instance v1, Landroidx/media2/session/MediaSessionStub$18;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$18;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 757
    return-void
.end method

.method public playFromUri(Landroidx/media2/session/IMediaController;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 722
    if-nez p1, :cond_0

    .line 723
    return-void

    .line 725
    :cond_0
    const v0, 0x9c46

    new-instance v1, Landroidx/media2/session/MediaSessionStub$17;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$17;-><init>(Landroidx/media2/session/MediaSessionStub;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 737
    return-void
.end method

.method public prepare(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 545
    if-nez p1, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    const/16 v0, 0x2712

    new-instance v1, Landroidx/media2/session/MediaSessionStub$7;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$7;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 555
    return-void
.end method

.method public prepareFromMediaId(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 700
    if-nez p1, :cond_0

    .line 701
    return-void

    .line 703
    :cond_0
    const v0, 0x9c47

    new-instance v1, Landroidx/media2/session/MediaSessionStub$16;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$16;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 717
    return-void
.end method

.method public prepareFromSearch(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 679
    if-nez p1, :cond_0

    .line 680
    return-void

    .line 682
    :cond_0
    const v0, 0x9c48

    new-instance v1, Landroidx/media2/session/MediaSessionStub$15;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$15;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 695
    return-void
.end method

.method public prepareFromUri(Landroidx/media2/session/IMediaController;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 659
    if-nez p1, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    const v0, 0x9c49

    new-instance v1, Landroidx/media2/session/MediaSessionStub$14;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$14;-><init>(Landroidx/media2/session/MediaSessionStub;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 674
    return-void
.end method

.method public release(Landroidx/media2/session/IMediaController;I)V
    .locals 4
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    if-nez p1, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 449
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media2/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/session/ConnectedControllersManager;->removeController(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    nop

    .line 453
    return-void

    .line 451
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removePlaylistItem(Landroidx/media2/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I

    .line 911
    if-nez p1, :cond_0

    .line 912
    return-void

    .line 914
    :cond_0
    const/16 v0, 0x271e

    new-instance v1, Landroidx/media2/session/MediaSessionStub$26;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$26;-><init>(Landroidx/media2/session/MediaSessionStub;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 921
    return-void
.end method

.method public replacePlaylistItem(Landroidx/media2/session/IMediaController;IILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I
    .param p4, "mediaId"    # Ljava/lang/String;

    .line 926
    if-nez p1, :cond_0

    .line 927
    return-void

    .line 929
    :cond_0
    const/16 v0, 0x271f

    new-instance v1, Landroidx/media2/session/MediaSessionStub$27;

    invoke-direct {v1, p0, p4, p3}, Landroidx/media2/session/MediaSessionStub$27;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 945
    return-void
.end method

.method public rewind(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I

    .line 574
    if-nez p1, :cond_0

    .line 575
    return-void

    .line 577
    :cond_0
    const v0, 0x9c41

    new-instance v1, Landroidx/media2/session/MediaSessionStub$9;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$9;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 585
    return-void
.end method

.method public search(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "libraryParams"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 1153
    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    const v0, 0xc355

    new-instance v1, Landroidx/media2/session/MediaSessionStub$39;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$39;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V

    .line 1168
    return-void

    .line 1153
    :cond_1
    :goto_0
    nop

    .line 1154
    return-void
.end method

.method public seekTo(Landroidx/media2/session/IMediaController;IJ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 619
    if-nez p1, :cond_0

    .line 620
    return-void

    .line 622
    :cond_0
    const/16 v0, 0x2713

    new-instance v1, Landroidx/media2/session/MediaSessionStub$12;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$12;-><init>(Landroidx/media2/session/MediaSessionStub;J)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 629
    return-void
.end method

.method public selectTrack(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "trackInfoParcel"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 1040
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    const/16 v0, 0x2af9

    new-instance v1, Landroidx/media2/session/MediaSessionStub$34;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$34;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 1054
    return-void

    .line 1040
    :cond_1
    :goto_0
    nop

    .line 1041
    return-void
.end method

.method public setMediaItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;

    .line 849
    if-nez p1, :cond_0

    .line 850
    return-void

    .line 852
    :cond_0
    const/16 v0, 0x2722

    new-instance v1, Landroidx/media2/session/MediaSessionStub$23;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$23;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 867
    return-void
.end method

.method public setPlaybackSpeed(Landroidx/media2/session/IMediaController;IF)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "speed"    # F

    .line 807
    if-nez p1, :cond_0

    .line 808
    return-void

    .line 810
    :cond_0
    const/16 v0, 0x2714

    new-instance v1, Landroidx/media2/session/MediaSessionStub$21;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$21;-><init>(Landroidx/media2/session/MediaSessionStub;F)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 817
    return-void
.end method

.method public setPlaylist(Landroidx/media2/session/IMediaController;ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p4, "metadata"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/IMediaController;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ")V"
        }
    .end annotation

    .line 822
    .local p3, "playlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    const/16 v0, 0x2716

    new-instance v1, Landroidx/media2/session/MediaSessionStub$22;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$22;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 845
    return-void

    .line 822
    :cond_1
    :goto_0
    nop

    .line 823
    return-void
.end method

.method public setRating(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "ratingParcelable"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 783
    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    invoke-static {p4}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/Rating;

    .line 787
    .local v0, "rating":Landroidx/media2/common/Rating;
    const v1, 0x9c4a

    new-instance v2, Landroidx/media2/session/MediaSessionStub$20;

    invoke-direct {v2, p0, p3, v0}, Landroidx/media2/session/MediaSessionStub$20;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;Landroidx/media2/common/Rating;)V

    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 803
    return-void

    .line 783
    .end local v0    # "rating":Landroidx/media2/common/Rating;
    :cond_1
    :goto_0
    nop

    .line 784
    return-void
.end method

.method public setRepeatMode(Landroidx/media2/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "repeatMode"    # I

    .line 998
    if-nez p1, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    const/16 v0, 0x271b

    new-instance v1, Landroidx/media2/session/MediaSessionStub$31;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$31;-><init>(Landroidx/media2/session/MediaSessionStub;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 1008
    return-void
.end method

.method public setShuffleMode(Landroidx/media2/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "shuffleMode"    # I

    .line 1012
    if-nez p1, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    const/16 v0, 0x271a

    new-instance v1, Landroidx/media2/session/MediaSessionStub$32;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$32;-><init>(Landroidx/media2/session/MediaSessionStub;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 1022
    return-void
.end method

.method public setSurface(Landroidx/media2/session/IMediaController;ILandroid/view/Surface;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "surface"    # Landroid/view/Surface;

    .line 1026
    if-nez p1, :cond_0

    .line 1027
    return-void

    .line 1029
    :cond_0
    const/16 v0, 0x2af8

    new-instance v1, Landroidx/media2/session/MediaSessionStub$33;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$33;-><init>(Landroidx/media2/session/MediaSessionStub;Landroid/view/Surface;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 1036
    return-void
.end method

.method public setVolumeTo(Landroidx/media2/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "value"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 478
    if-nez p1, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    const/16 v0, 0x7530

    new-instance v1, Landroidx/media2/session/MediaSessionStub$3;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$3;-><init>(Landroidx/media2/session/MediaSessionStub;II)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 493
    return-void
.end method

.method public skipBackward(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I

    .line 604
    if-nez p1, :cond_0

    .line 605
    return-void

    .line 607
    :cond_0
    const v0, 0x9c43

    new-instance v1, Landroidx/media2/session/MediaSessionStub$11;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$11;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 615
    return-void
.end method

.method public skipForward(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I

    .line 589
    if-nez p1, :cond_0

    .line 590
    return-void

    .line 592
    :cond_0
    const v0, 0x9c42

    new-instance v1, Landroidx/media2/session/MediaSessionStub$10;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$10;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 600
    return-void
.end method

.method public skipToNextItem(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I

    .line 983
    if-nez p1, :cond_0

    .line 984
    return-void

    .line 986
    :cond_0
    const/16 v0, 0x2719

    new-instance v1, Landroidx/media2/session/MediaSessionStub$30;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$30;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 994
    return-void
.end method

.method public skipToPlaylistItem(Landroidx/media2/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "index"    # I

    .line 949
    if-nez p1, :cond_0

    .line 950
    return-void

    .line 952
    :cond_0
    const/16 v0, 0x2717

    new-instance v1, Landroidx/media2/session/MediaSessionStub$28;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$28;-><init>(Landroidx/media2/session/MediaSessionStub;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 964
    return-void
.end method

.method public skipToPreviousItem(Landroidx/media2/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I

    .line 968
    if-nez p1, :cond_0

    .line 969
    return-void

    .line 971
    :cond_0
    const/16 v0, 0x2718

    new-instance v1, Landroidx/media2/session/MediaSessionStub$29;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionStub$29;-><init>(Landroidx/media2/session/MediaSessionStub;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 979
    return-void
.end method

.method public subscribe(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "libraryParams"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 1206
    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    const v0, 0xc351

    new-instance v1, Landroidx/media2/session/MediaSessionStub$41;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/MediaSessionStub$41;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V

    .line 1222
    return-void

    .line 1206
    :cond_1
    :goto_0
    nop

    .line 1207
    return-void
.end method

.method public unsubscribe(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "parentId"    # Ljava/lang/String;

    .line 1226
    if-nez p1, :cond_0

    .line 1227
    return-void

    .line 1229
    :cond_0
    const v0, 0xc352

    new-instance v1, Landroidx/media2/session/MediaSessionStub$42;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$42;-><init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchLibrarySessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;)V

    .line 1240
    return-void
.end method

.method public updatePlaylistMetadata(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "seq"    # I
    .param p3, "metadata"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 872
    if-nez p1, :cond_0

    .line 873
    return-void

    .line 875
    :cond_0
    const/16 v0, 0x2721

    new-instance v1, Landroidx/media2/session/MediaSessionStub$24;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaSessionStub$24;-><init>(Landroidx/media2/session/MediaSessionStub;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/MediaSessionStub;->dispatchSessionTask(Landroidx/media2/session/IMediaController;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V

    .line 883
    return-void
.end method
