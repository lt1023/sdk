.class final Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;
.super Landroidx/media2/session/IMediaSessionService$Stub;
.source "MediaSessionServiceImplBase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionServiceImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSessionServiceStub"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mMediaSessionManager:Landroidx/media/MediaSessionManager;

.field final mServiceImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/session/MediaSessionServiceImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionServiceImplBase;)V
    .locals 2
    .param p1, "serviceImpl"    # Landroidx/media2/session/MediaSessionServiceImplBase;

    .line 237
    invoke-direct {p0}, Landroidx/media2/session/IMediaSessionService$Stub;-><init>()V

    .line 238
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mServiceImpl:Ljava/lang/ref/WeakReference;

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSessionServiceImplBase;->getInstance()Landroidx/media2/session/MediaSessionService;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mHandler:Landroid/os/Handler;

    .line 240
    invoke-virtual {p1}, Landroidx/media2/session/MediaSessionServiceImplBase;->getInstance()Landroidx/media2/session/MediaSessionService;

    move-result-object v0

    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mMediaSessionManager:Landroidx/media/MediaSessionManager;

    .line 241
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 335
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mServiceImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 336
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method public connect(Landroidx/media2/session/IMediaController;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 16
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "connectionRequest"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 245
    move-object/from16 v8, p0

    iget-object v0, v8, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mServiceImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/media2/session/MediaSessionServiceImplBase;

    .line 246
    .local v9, "serviceImpl":Landroidx/media2/session/MediaSessionServiceImplBase;
    if-nez v9, :cond_0

    .line 248
    const-string v0, "MSS2ImplBase"

    const-string v1, "ServiceImpl isn\'t available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 252
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 253
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 254
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 255
    .local v12, "token":J
    invoke-static/range {p2 .. p2}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/media2/session/ConnectionRequest;

    .line 256
    .local v14, "request":Landroidx/media2/session/ConnectionRequest;
    if-eqz v10, :cond_1

    move v4, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v14}, Landroidx/media2/session/ConnectionRequest;->getPid()I

    move-result v0

    move v4, v0

    .line 257
    .local v4, "pid":I
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v14}, Landroidx/media2/session/ConnectionRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 258
    .local v3, "packageName":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_3

    move-object v6, v0

    goto :goto_2

    .line 259
    :cond_3
    invoke-virtual {v14}, Landroidx/media2/session/ConnectionRequest;->getConnectionHints()Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    :goto_2
    nop

    .line 261
    .local v6, "connectionHints":Landroid/os/Bundle;
    :try_start_0
    iget-object v0, v8, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->mHandler:Landroid/os/Handler;

    new-instance v15, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;

    move-object v1, v15

    move-object/from16 v2, p0

    move v5, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub$1;-><init>(Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media2/session/IMediaController;)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    nop

    .line 331
    return-void

    .line 329
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
