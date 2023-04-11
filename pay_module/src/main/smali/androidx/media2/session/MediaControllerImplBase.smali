.class Landroidx/media2/session/MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaController$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;,
        Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final RESULT_WHEN_CLOSED:Landroidx/media2/session/SessionResult;

.field static final TAG:Ljava/lang/String; = "MC2ImplBase"

.field private static final THROW_EXCEPTION_FOR_NULL_RESULT:Z = true


# instance fields
.field private mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBufferedPositionMs:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBufferingState:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mConnectedToken:Landroidx/media2/session/SessionToken;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field final mControllerStub:Landroidx/media2/session/MediaControllerStub;

.field private mCurrentMediaItem:Landroidx/media2/common/MediaItem;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentMediaItemIndex:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private volatile mISession:Landroidx/media2/session/IMediaSession;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mInstance:Landroidx/media2/session/MediaController;

.field private mIsReleased:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextMediaItemIndex:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPlaybackSpeed:F
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPlayerState:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPlaylist:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPositionEventTimeMs:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPositionMs:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPreviousMediaItemIndex:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRepeatMode:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSelectedTracks:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

.field private mServiceConnection:Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionActivity:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mShuffleMode:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mToken:Landroidx/media2/session/SessionToken;

.field private mTrackInfos:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSize:Landroidx/media2/common/VideoSize;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Landroidx/media2/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/SessionResult;-><init>(I)V

    sput-object v0, Landroidx/media2/session/MediaControllerImplBase;->RESULT_WHEN_CLOSED:Landroidx/media2/session/SessionResult;

    .line 107
    const-string v0, "MC2ImplBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Landroidx/media2/session/MediaController;
    .param p3, "token"    # Landroidx/media2/session/SessionToken;
    .param p4, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItemIndex:I

    .line 146
    iput v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mPreviousMediaItemIndex:I

    .line 148
    iput v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mNextMediaItemIndex:I

    .line 160
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mVideoSize:Landroidx/media2/common/VideoSize;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    .line 174
    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    .line 175
    if-eqz p1, :cond_3

    .line 178
    if-eqz p3, :cond_2

    .line 181
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mContext:Landroid/content/Context;

    .line 182
    new-instance v0, Landroidx/media2/session/SequencedFutureManager;

    invoke-direct {v0}, Landroidx/media2/session/SequencedFutureManager;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    .line 183
    new-instance v0, Landroidx/media2/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    invoke-direct {v0, p0, v1}, Landroidx/media2/session/MediaControllerStub;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SequencedFutureManager;)V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    .line 184
    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    .line 185
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$1;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$1;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 193
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media2/session/SessionToken;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mServiceConnection:Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;

    .line 196
    invoke-direct {p0, p4}, Landroidx/media2/session/MediaControllerImplBase;->requestConnectToSession(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-direct {v0, p0, p4}, Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mServiceConnection:Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;

    .line 199
    invoke-direct {p0}, Landroidx/media2/session/MediaControllerImplBase;->requestConnectToService()Z

    move-result v0

    .line 201
    .local v0, "connectionRequested":Z
    :goto_0
    if-nez v0, :cond_1

    .line 202
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v1}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_1

    .line 201
    :cond_1
    nop

    .line 204
    :goto_1
    return-void

    .line 179
    .end local v0    # "connectionRequested":Z
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "commandCode"    # I
    .param p2, "task"    # Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTaskInternal(ILandroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private dispatchRemoteSessionTask(Landroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "sessionCommand"    # Landroidx/media2/session/SessionCommand;
    .param p2, "task"    # Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/SessionCommand;",
            "Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTaskInternal(ILandroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private dispatchRemoteSessionTaskInternal(ILandroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "commandCode"    # I
    .param p2, "sessionCommand"    # Landroidx/media2/session/SessionCommand;
    .param p3, "task"    # Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/session/SessionCommand;",
            "Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 275
    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p0, p2}, Landroidx/media2/session/MediaControllerImplBase;->getSessionInterfaceIfAble(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/IMediaSession;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaControllerImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/session/IMediaSession;

    move-result-object v0

    :goto_0
    nop

    .line 278
    .local v0, "iSession":Landroidx/media2/session/IMediaSession;
    if-eqz v0, :cond_1

    .line 279
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    sget-object v2, Landroidx/media2/session/MediaControllerImplBase;->RESULT_WHEN_CLOSED:Landroidx/media2/session/SessionResult;

    .line 280
    invoke-virtual {v1, v2}, Landroidx/media2/session/SequencedFutureManager;->createSequencedFuture(Ljava/lang/Object;)Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    move-result-object v1

    .line 282
    .local v1, "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<Landroidx/media2/session/SessionResult;>;"
    :try_start_0
    invoke-virtual {v1}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v2

    invoke-interface {p3, v0, v2}, Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;->run(Landroidx/media2/session/IMediaSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_1

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MC2ImplBase"

    const-string v4, "Cannot connect to the service or the session is gone"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    new-instance v3, Landroidx/media2/session/SessionResult;

    const/16 v4, -0x64

    invoke-direct {v3, v4}, Landroidx/media2/session/SessionResult;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->set(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v1

    .line 292
    .end local v1    # "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<Landroidx/media2/session/SessionResult;>;"
    :cond_1
    const/4 v1, -0x4

    invoke-static {v1}, Landroidx/media2/session/SessionResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method private requestConnectToService()Z
    .locals 6

    .line 867
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.media2.session.MediaSessionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media2/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v2}, Landroidx/media2/session/SessionToken;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mServiceConnection:Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 887
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 888
    const-string v3, "MC2ImplBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 887
    :cond_0
    nop

    .line 891
    .end local v2    # "result":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    sget-boolean v1, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 893
    const-string v1, "MC2ImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    :cond_1
    nop

    .line 895
    :goto_0
    return v4

    .line 891
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private requestConnectToSession(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 899
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media2/session/SessionToken;->getBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media2/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaSession;

    move-result-object v0

    .line 900
    .local v0, "iSession":Landroidx/media2/session/IMediaSession;
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    invoke-virtual {v1}, Landroidx/media2/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    .line 901
    .local v1, "seq":I
    new-instance v2, Landroidx/media2/session/ConnectionRequest;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mContext:Landroid/content/Context;

    .line 902
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Landroidx/media2/session/ConnectionRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 904
    .local v2, "request":Landroidx/media2/session/ConnectionRequest;
    :try_start_0
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v4

    invoke-interface {v0, v3, v1, v4}, Landroidx/media2/session/IMediaSession;->connect(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    nop

    .line 909
    const/4 v3, 0x1

    return v3

    .line 905
    :catch_0
    move-exception v3

    .line 906
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MC2ImplBase"

    const-string v5, "Failed to call connection request."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public addPlaylistItem(ILjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$25;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$25;-><init>(Landroidx/media2/session/MediaControllerImplBase;ILjava/lang/String;)V

    const/16 v1, 0x271d

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public adjustVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 468
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$18;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$18;-><init>(Landroidx/media2/session/MediaControllerImplBase;II)V

    const/16 v1, 0x7531

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 208
    sget-boolean v0, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "MC2ImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_0
    nop

    .line 212
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    .line 214
    .local v1, "iSession":Landroidx/media2/session/IMediaSession;
    iget-boolean v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mIsReleased:Z

    if-eqz v2, :cond_1

    .line 216
    monitor-exit v0

    return-void

    .line 218
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mIsReleased:Z

    .line 219
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mServiceConnection:Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 220
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media2/session/MediaControllerImplBase;->mServiceConnection:Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 221
    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mServiceConnection:Landroidx/media2/session/MediaControllerImplBase$SessionServiceConnection;

    goto :goto_1

    .line 219
    :cond_2
    nop

    .line 223
    :goto_1
    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    .line 224
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    invoke-virtual {v2}, Landroidx/media2/session/MediaControllerStub;->destroy()V

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz v1, :cond_3

    .line 227
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    invoke-virtual {v0}, Landroidx/media2/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v0

    .line 229
    .local v0, "seq":I
    :try_start_1
    invoke-interface {v1}, Landroidx/media2/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 230
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    invoke-interface {v1, v2, v0}, Landroidx/media2/session/IMediaSession;->release(Landroidx/media2/session/IMediaController;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    goto :goto_2

    .line 231
    :catch_0
    move-exception v2

    goto :goto_2

    .line 226
    .end local v0    # "seq":I
    :cond_3
    nop

    .line 235
    :goto_2
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    invoke-virtual {v0}, Landroidx/media2/session/SequencedFutureManager;->close()V

    .line 236
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/MediaControllerImplBase$2;

    invoke-direct {v2, p0}, Landroidx/media2/session/MediaControllerImplBase$2;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 242
    return-void

    .line 225
    .end local v1    # "iSession":Landroidx/media2/session/IMediaSession;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deselectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 805
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$34;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$34;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    const/16 v1, 0x2afa

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public fastForward()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$6;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$6;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const v1, 0x9c40

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedCommands()Landroidx/media2/session/SessionCommandGroup;
    .locals 4

    .line 844
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    if-nez v1, :cond_0

    .line 846
    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 849
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    monitor-exit v0

    return-object v1

    .line 850
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 862
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 4

    .line 555
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    if-nez v1, :cond_0

    .line 557
    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    const-wide/high16 v1, -0x8000000000000000L

    monitor-exit v0

    return-wide v1

    .line 560
    :cond_0
    iget-wide v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mBufferedPositionMs:J

    monitor-exit v0

    return-wide v1

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferingState()I
    .locals 4

    .line 544
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    if-nez v1, :cond_0

    .line 546
    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 549
    :cond_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mBufferingState:I

    monitor-exit v0

    return v1

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectedToken()Landroidx/media2/session/SessionToken;
    .locals 2

    .line 246
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaControllerImplBase;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mConnectedToken:Landroidx/media2/session/SessionToken;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 856
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .locals 2

    .line 682
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    monitor-exit v0

    return-object v1

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentMediaItemIndex()I
    .locals 2

    .line 689
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItemIndex:I

    monitor-exit v0

    return v1

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentPosition()J
    .locals 7

    .line 505
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    if-nez v1, :cond_0

    .line 507
    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    const-wide/high16 v1, -0x8000000000000000L

    monitor-exit v0

    return-wide v1

    .line 510
    :cond_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlayerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mBufferingState:I

    if-eq v1, v2, :cond_2

    .line 512
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, v1, Landroidx/media2/session/MediaController;->mTimeDiff:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, v1, Landroidx/media2/session/MediaController;->mTimeDiff:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 513
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionEventTimeMs:J

    sub-long/2addr v1, v3

    :goto_0
    nop

    .line 514
    .local v1, "timeDiff":J
    iget-wide v3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionMs:J

    iget v5, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaybackSpeed:F

    long-to-float v6, v1

    mul-float v5, v5, v6

    float-to-long v5, v5

    add-long/2addr v3, v5

    .line 515
    .local v3, "expectedPosition":J
    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    monitor-exit v0

    return-wide v5

    .line 510
    .end local v1    # "timeDiff":J
    .end local v3    # "expectedPosition":J
    :cond_2
    nop

    .line 517
    iget-wide v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionMs:J

    monitor-exit v0

    return-wide v1

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDuration()J
    .locals 4

    .line 493
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 495
    invoke-virtual {v1}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    :goto_0
    nop

    .line 496
    .local v1, "metadata":Landroidx/media2/common/MediaMetadata;
    if-eqz v1, :cond_1

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 496
    :cond_1
    nop

    .line 499
    .end local v1    # "metadata":Landroidx/media2/common/MediaMetadata;
    monitor-exit v0

    .line 500
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNextMediaItemIndex()I
    .locals 2

    .line 703
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mNextMediaItemIndex:I

    monitor-exit v0

    return v1

    .line 705
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackInfo()Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 2

    .line 566
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    monitor-exit v0

    return-object v1

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 4

    .line 523
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    if-nez v1, :cond_0

    .line 525
    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 528
    :cond_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaybackSpeed:F

    monitor-exit v0

    return v1

    .line 529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerState()I
    .locals 2

    .line 486
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlayerState:I

    monitor-exit v0

    return v1

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylist:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;
    .locals 2

    .line 640
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    monitor-exit v0

    return-object v1

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreviousMediaItemIndex()I
    .locals 2

    .line 696
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPreviousMediaItemIndex:I

    monitor-exit v0

    return v1

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 2

    .line 745
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mRepeatMode:I

    monitor-exit v0

    return v1

    .line 747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 2
    .param p1, "trackType"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 818
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    monitor-exit v0

    return-object v1

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 2

    .line 479
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    monitor-exit v0

    return-object v1

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSessionInterfaceIfAble(I)Landroidx/media2/session/IMediaSession;
    .locals 4
    .param p1, "commandCode"    # I

    .line 914
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {v1, p1}, Landroidx/media2/session/SessionCommandGroup;->hasCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    const-string v1, "MC2ImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller isn\'t allowed to call command, commandCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 921
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    monitor-exit v0

    return-object v1

    .line 922
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSessionInterfaceIfAble(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/IMediaSession;
    .locals 4
    .param p1, "command"    # Landroidx/media2/session/SessionCommand;

    .line 927
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {v1, p1}, Landroidx/media2/session/SessionCommandGroup;->hasCommand(Landroidx/media2/session/SessionCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    const-string v1, "MC2ImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller isn\'t allowed to call command, command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 932
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    monitor-exit v0

    return-object v1

    .line 933
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShuffleMode()I
    .locals 2

    .line 763
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mShuffleMode:I

    monitor-exit v0

    return v1

    .line 765
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 782
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mTrackInfos:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVideoSize()Landroidx/media2/common/VideoSize;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 826
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mVideoSize:Landroidx/media2/common/VideoSize;

    monitor-exit v0

    return-object v1

    .line 828
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .line 253
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyBufferingStateChanged(Landroidx/media2/common/MediaItem;IJJJ)V
    .locals 2
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
    .param p2, "state"    # I
    .param p3, "bufferedPositionMs"    # J
    .param p5, "eventTimeMs"    # J
    .param p7, "positionMs"    # J

    .line 995
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iput p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mBufferingState:I

    .line 997
    iput-wide p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mBufferedPositionMs:J

    .line 998
    iput-wide p5, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionEventTimeMs:J

    .line 999
    iput-wide p7, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionMs:J

    .line 1000
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$39;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$39;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1010
    return-void

    .line 1000
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyCurrentMediaItemChanged(Landroidx/media2/common/MediaItem;III)V
    .locals 2
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
    .param p2, "currentMediaItemIndex"    # I
    .param p3, "previousMediaItemIndex"    # I
    .param p4, "nextMediaItemIndex"    # I

    .line 938
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 940
    iput p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItemIndex:I

    .line 941
    iput p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPreviousMediaItemIndex:I

    .line 942
    iput p4, p0, Landroidx/media2/session/MediaControllerImplBase;->mNextMediaItemIndex:I

    .line 943
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylist:Ljava/util/List;

    if-eqz v1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylist:Ljava/util/List;

    .line 944
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 945
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylist:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 944
    :cond_0
    goto :goto_0

    .line 943
    :cond_1
    nop

    .line 947
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$36;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$36;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 957
    return-void

    .line 947
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlaybackCompleted()V
    .locals 2

    .line 1104
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$45;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaControllerImplBase$45;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1113
    return-void
.end method

.method notifyPlaybackInfoChanges(Landroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 2
    .param p1, "info"    # Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1051
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1053
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$42;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$42;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/MediaController$PlaybackInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1063
    return-void

    .line 1053
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlaybackSpeedChanges(JJF)V
    .locals 2
    .param p1, "eventTimeMs"    # J
    .param p3, "positionMs"    # J
    .param p5, "speed"    # F

    .line 977
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionEventTimeMs:J

    .line 979
    iput-wide p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionMs:J

    .line 980
    iput p5, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaybackSpeed:F

    .line 981
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$38;

    invoke-direct {v1, p0, p5}, Landroidx/media2/session/MediaControllerImplBase$38;-><init>(Landroidx/media2/session/MediaControllerImplBase;F)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 991
    return-void

    .line 981
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlayerStateChanges(JJI)V
    .locals 2
    .param p1, "eventTimeMs"    # J
    .param p3, "positionMs"    # J
    .param p5, "state"    # I

    .line 960
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionEventTimeMs:J

    .line 962
    iput-wide p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionMs:J

    .line 963
    iput p5, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlayerState:I

    .line 964
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$37;

    invoke-direct {v1, p0, p5}, Landroidx/media2/session/MediaControllerImplBase$37;-><init>(Landroidx/media2/session/MediaControllerImplBase;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 974
    return-void

    .line 964
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlaylistChanges(Ljava/util/List;Landroidx/media2/common/MediaMetadata;III)V
    .locals 2
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;
    .param p3, "currentMediaItemIndex"    # I
    .param p4, "previousMediaItemIndex"    # I
    .param p5, "nextMediaItemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            "III)V"
        }
    .end annotation

    .line 1014
    .local p1, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylist:Ljava/util/List;

    .line 1016
    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    .line 1017
    iput p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItemIndex:I

    .line 1018
    iput p4, p0, Landroidx/media2/session/MediaControllerImplBase;->mPreviousMediaItemIndex:I

    .line 1019
    iput p5, p0, Landroidx/media2/session/MediaControllerImplBase;->mNextMediaItemIndex:I

    .line 1020
    if-ltz p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 1021
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    iput-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    goto :goto_0

    .line 1020
    :cond_0
    nop

    .line 1023
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$40;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$40;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1033
    return-void

    .line 1023
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlaylistMetadataChanges(Landroidx/media2/common/MediaMetadata;)V
    .locals 2
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;

    .line 1036
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    .line 1038
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$41;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$41;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1048
    return-void

    .line 1038
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyRepeatModeChanges(IIII)V
    .locals 2
    .param p1, "repeatMode"    # I
    .param p2, "currentMediaItemIndex"    # I
    .param p3, "previousMediaItemIndex"    # I
    .param p4, "nextMediaItemIndex"    # I

    .line 1067
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_0
    iput p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mRepeatMode:I

    .line 1069
    iput p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItemIndex:I

    .line 1070
    iput p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPreviousMediaItemIndex:I

    .line 1071
    iput p4, p0, Landroidx/media2/session/MediaControllerImplBase;->mNextMediaItemIndex:I

    .line 1072
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$43;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$43;-><init>(Landroidx/media2/session/MediaControllerImplBase;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1082
    return-void

    .line 1072
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifySeekCompleted(JJJ)V
    .locals 2
    .param p1, "eventTimeMs"    # J
    .param p3, "positionMs"    # J
    .param p5, "seekPositionMs"    # J

    .line 1116
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionEventTimeMs:J

    .line 1118
    iput-wide p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPositionMs:J

    .line 1119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$46;

    invoke-direct {v1, p0, p5, p6}, Landroidx/media2/session/MediaControllerImplBase$46;-><init>(Landroidx/media2/session/MediaControllerImplBase;J)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1130
    return-void

    .line 1119
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyShuffleModeChanges(IIII)V
    .locals 2
    .param p1, "shuffleMode"    # I
    .param p2, "currentMediaItemIndex"    # I
    .param p3, "previousMediaItemIndex"    # I
    .param p4, "nextMediaItemIndex"    # I

    .line 1086
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_0
    iput p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mShuffleMode:I

    .line 1088
    iput p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItemIndex:I

    .line 1089
    iput p3, p0, Landroidx/media2/session/MediaControllerImplBase;->mPreviousMediaItemIndex:I

    .line 1090
    iput p4, p0, Landroidx/media2/session/MediaControllerImplBase;->mNextMediaItemIndex:I

    .line 1091
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$44;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$44;-><init>(Landroidx/media2/session/MediaControllerImplBase;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1101
    return-void

    .line 1091
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifySubtitleData(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 2
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
    .param p2, "track"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p3, "data"    # Landroidx/media2/common/SubtitleData;

    .line 1201
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$51;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/session/MediaControllerImplBase$51;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1210
    return-void
.end method

.method notifyTrackDeselected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 1186
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$50;

    invoke-direct {v1, p0, p2}, Landroidx/media2/session/MediaControllerImplBase$50;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1198
    return-void

    .line 1188
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyTrackInfoChanged(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3
    .param p1, "seq"    # I
    .param p3, "selectedVideoTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p4, "selectedAudioTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p5, "selectedSubtitleTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p6, "selectedMetadataTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .line 1150
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1151
    :try_start_0
    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mTrackInfos:Ljava/util/List;

    .line 1153
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1154
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1155
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1156
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$48;

    invoke-direct {v1, p0, p2}, Landroidx/media2/session/MediaControllerImplBase$48;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1168
    return-void

    .line 1157
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyTrackSelected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 1171
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1172
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$49;

    invoke-direct {v1, p0, p2}, Landroidx/media2/session/MediaControllerImplBase$49;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1183
    return-void

    .line 1173
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyVideoSizeChanged(Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 2
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
    .param p2, "videoSize"    # Landroidx/media2/common/VideoSize;

    .line 1133
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_0
    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase;->mVideoSize:Landroidx/media2/common/VideoSize;

    .line 1135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$47;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$47;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1145
    return-void

    .line 1135
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onAllowedCommandsChanged(Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "commands"    # Landroidx/media2/session/SessionCommandGroup;

    .line 1349
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 1351
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$54;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$54;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1358
    return-void

    .line 1351
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onConnectedNotLocked(Landroidx/media2/session/IMediaSession;Landroidx/media2/session/SessionCommandGroup;ILandroidx/media2/common/MediaItem;JJFJLandroidx/media2/session/MediaController$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;IIILandroid/os/Bundle;Landroidx/media2/common/VideoSize;Ljava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 19
    .param p1, "sessionBinder"    # Landroidx/media2/session/IMediaSession;
    .param p2, "allowedCommands"    # Landroidx/media2/session/SessionCommandGroup;
    .param p3, "playerState"    # I
    .param p4, "currentMediaItem"    # Landroidx/media2/common/MediaItem;
    .param p5, "positionEventTimeMs"    # J
    .param p7, "positionMs"    # J
    .param p9, "playbackSpeed"    # F
    .param p10, "bufferedPositionMs"    # J
    .param p12, "info"    # Landroidx/media2/session/MediaController$PlaybackInfo;
    .param p13, "repeatMode"    # I
    .param p14, "shuffleMode"    # I
    .param p16, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p17, "currentMediaItemIndex"    # I
    .param p18, "previousMediaItemIndex"    # I
    .param p19, "nextMediaItemIndex"    # I
    .param p20, "tokenExtras"    # Landroid/os/Bundle;
    .param p21, "videoSize"    # Landroidx/media2/common/VideoSize;
    .param p23, "selectedVideoTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p24, "selectedAudioTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p25, "selectedSubtitleTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p26, "selectedMetadataTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/IMediaSession;",
            "Landroidx/media2/session/SessionCommandGroup;",
            "I",
            "Landroidx/media2/common/MediaItem;",
            "JJFJ",
            "Landroidx/media2/session/MediaController$PlaybackInfo;",
            "II",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroid/app/PendingIntent;",
            "III",
            "Landroid/os/Bundle;",
            "Landroidx/media2/common/VideoSize;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .line 1236
    .local p15, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .local p22, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    sget-boolean v0, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "MC2ImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectedNotLocked sessionBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", allowedCommands="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    :cond_0
    nop

    .line 1241
    :goto_0
    const/4 v10, 0x0

    .line 1243
    .local v10, "close":Z
    if-eqz v8, :cond_a

    if-nez v9, :cond_1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-wide/from16 v14, p5

    goto/16 :goto_b

    .line 1248
    :cond_1
    :try_start_0
    iget-object v11, v1, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1249
    :try_start_1
    iget-boolean v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mIsReleased:Z

    if-eqz v0, :cond_3

    .line 1250
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1302
    if-eqz v10, :cond_2

    .line 1305
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_1

    .line 1302
    :cond_2
    nop

    .line 1250
    :goto_1
    return-void

    .line 1252
    :cond_3
    :try_start_2
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    if-eqz v0, :cond_5

    .line 1253
    const-string v0, "MC2ImplBase"

    const-string v2, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v10, 0x1

    .line 1256
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1302
    if-eqz v10, :cond_4

    .line 1305
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_2

    .line 1302
    :cond_4
    nop

    .line 1256
    :goto_2
    return-void

    .line 1258
    :cond_5
    :try_start_3
    iput-object v9, v1, Landroidx/media2/session/MediaControllerImplBase;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1259
    move/from16 v12, p3

    :try_start_4
    iput v12, v1, Landroidx/media2/session/MediaControllerImplBase;->mPlayerState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1260
    move-object/from16 v13, p4

    :try_start_5
    iput-object v13, v1, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1261
    move-wide/from16 v14, p5

    :try_start_6
    iput-wide v14, v1, Landroidx/media2/session/MediaControllerImplBase;->mPositionEventTimeMs:J

    .line 1262
    move-wide/from16 v6, p7

    iput-wide v6, v1, Landroidx/media2/session/MediaControllerImplBase;->mPositionMs:J

    .line 1263
    move/from16 v5, p9

    iput v5, v1, Landroidx/media2/session/MediaControllerImplBase;->mPlaybackSpeed:F

    .line 1264
    move-wide/from16 v3, p10

    iput-wide v3, v1, Landroidx/media2/session/MediaControllerImplBase;->mBufferedPositionMs:J

    .line 1265
    move-object/from16 v2, p12

    iput-object v2, v1, Landroidx/media2/session/MediaControllerImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1266
    move/from16 v4, p13

    iput v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mRepeatMode:I

    .line 1267
    move/from16 v3, p14

    iput v3, v1, Landroidx/media2/session/MediaControllerImplBase;->mShuffleMode:I

    .line 1268
    move-object/from16 v4, p15

    iput-object v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mPlaylist:Ljava/util/List;

    .line 1269
    move-object/from16 v4, p16

    iput-object v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    .line 1270
    iput-object v8, v1, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    .line 1271
    move/from16 v4, p17

    iput v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mCurrentMediaItemIndex:I

    .line 1272
    move/from16 v4, p18

    iput v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mPreviousMediaItemIndex:I

    .line 1273
    move/from16 v4, p19

    iput v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mNextMediaItemIndex:I

    .line 1274
    move-object/from16 v4, p21

    iput-object v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mVideoSize:Landroidx/media2/common/VideoSize;

    .line 1275
    move-object/from16 v4, p22

    iput-object v4, v1, Landroidx/media2/session/MediaControllerImplBase;->mTrackInfos:Ljava/util/List;

    .line 1276
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x1

    move-object/from16 v4, p23

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1277
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x2

    move-object/from16 v4, p24

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1278
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x4

    move-object/from16 v4, p25

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1279
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mSelectedTracks:Landroid/util/SparseArray;

    const/4 v2, 0x5

    move-object/from16 v4, p26

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1283
    :try_start_7
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    invoke-interface {v0}, Landroidx/media2/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, v1, Landroidx/media2/session/MediaControllerImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1290
    nop

    .line 1291
    :try_start_8
    new-instance v0, Landroidx/media2/session/SessionToken;

    new-instance v3, Landroidx/media2/session/SessionTokenImplBase;

    iget-object v2, v1, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    .line 1292
    invoke-virtual {v2}, Landroidx/media2/session/SessionToken;->getUid()I

    move-result v16

    const/16 v17, 0x0

    iget-object v2, v1, Landroidx/media2/session/MediaControllerImplBase;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v2}, Landroidx/media2/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object v2, v3

    move-object v8, v3

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, p1

    move-object/from16 v7, p20

    invoke-direct/range {v2 .. v7}, Landroidx/media2/session/SessionTokenImplBase;-><init>(IILjava/lang/String;Landroidx/media2/session/IMediaSession;Landroid/os/Bundle;)V

    invoke-direct {v0, v8}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    iput-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mConnectedToken:Landroidx/media2/session/SessionToken;

    .line 1294
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1295
    :try_start_9
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/MediaControllerImplBase$52;

    invoke-direct {v2, v1, v9}, Landroidx/media2/session/MediaControllerImplBase$52;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1302
    if-eqz v10, :cond_6

    .line 1305
    iget-object v0, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_3

    .line 1302
    :cond_6
    nop

    .line 1308
    :goto_3
    return-void

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    sget-boolean v2, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 1286
    const-string v2, "MC2ImplBase"

    const-string v3, "Session died too early."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1285
    :cond_7
    nop

    .line 1288
    :goto_4
    const/4 v10, 0x1

    .line 1289
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1302
    if-eqz v10, :cond_8

    .line 1305
    iget-object v2, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v2}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_5

    .line 1302
    :cond_8
    nop

    .line 1289
    :goto_5
    return-void

    .line 1294
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move/from16 v12, p3

    :goto_6
    move-object/from16 v13, p4

    :goto_7
    move-wide/from16 v14, p5

    :goto_8
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .end local v10    # "close":Z
    .end local p1    # "sessionBinder":Landroidx/media2/session/IMediaSession;
    .end local p2    # "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    .end local p3    # "playerState":I
    .end local p4    # "currentMediaItem":Landroidx/media2/common/MediaItem;
    .end local p5    # "positionEventTimeMs":J
    .end local p7    # "positionMs":J
    .end local p9    # "playbackSpeed":F
    .end local p10    # "bufferedPositionMs":J
    .end local p12    # "info":Landroidx/media2/session/MediaController$PlaybackInfo;
    .end local p13    # "repeatMode":I
    .end local p14    # "shuffleMode":I
    .end local p15    # "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .end local p16    # "sessionActivity":Landroid/app/PendingIntent;
    .end local p17    # "currentMediaItemIndex":I
    .end local p18    # "previousMediaItemIndex":I
    .end local p19    # "nextMediaItemIndex":I
    .end local p20    # "tokenExtras":Landroid/os/Bundle;
    .end local p21    # "videoSize":Landroidx/media2/common/VideoSize;
    .end local p22    # "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    .end local p23    # "selectedVideoTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    .end local p24    # "selectedAudioTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    .end local p25    # "selectedSubtitleTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    .end local p26    # "selectedMetadataTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1302
    .restart local v10    # "close":Z
    .restart local p1    # "sessionBinder":Landroidx/media2/session/IMediaSession;
    .restart local p2    # "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    .restart local p3    # "playerState":I
    .restart local p4    # "currentMediaItem":Landroidx/media2/common/MediaItem;
    .restart local p5    # "positionEventTimeMs":J
    .restart local p7    # "positionMs":J
    .restart local p9    # "playbackSpeed":F
    .restart local p10    # "bufferedPositionMs":J
    .restart local p12    # "info":Landroidx/media2/session/MediaController$PlaybackInfo;
    .restart local p13    # "repeatMode":I
    .restart local p14    # "shuffleMode":I
    .restart local p15    # "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .restart local p16    # "sessionActivity":Landroid/app/PendingIntent;
    .restart local p17    # "currentMediaItemIndex":I
    .restart local p18    # "previousMediaItemIndex":I
    .restart local p19    # "nextMediaItemIndex":I
    .restart local p20    # "tokenExtras":Landroid/os/Bundle;
    .restart local p21    # "videoSize":Landroidx/media2/common/VideoSize;
    .restart local p22    # "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    .restart local p23    # "selectedVideoTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    .restart local p24    # "selectedAudioTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    .restart local p25    # "selectedSubtitleTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    .restart local p26    # "selectedMetadataTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    :catchall_3
    move-exception v0

    goto :goto_9

    .line 1294
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 1302
    :catchall_5
    move-exception v0

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-wide/from16 v14, p5

    :goto_9
    if-eqz v10, :cond_9

    .line 1305
    iget-object v2, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v2}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_a

    .line 1302
    :cond_9
    nop

    .line 1305
    :goto_a
    throw v0

    .line 1243
    :cond_a
    move/from16 v12, p3

    move-object/from16 v13, p4

    move-wide/from16 v14, p5

    .line 1245
    :goto_b
    const/4 v0, 0x1

    .line 1302
    .end local v10    # "close":Z
    .local v0, "close":Z
    if-eqz v0, :cond_b

    .line 1305
    iget-object v2, v1, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v2}, Landroidx/media2/session/MediaController;->close()V

    goto :goto_c

    .line 1302
    :cond_b
    nop

    .line 1246
    :goto_c
    return-void
.end method

.method onCustomCommand(ILandroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "command"    # Landroidx/media2/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 1328
    sget-boolean v0, Landroidx/media2/session/MediaControllerImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1329
    const-string v0, "MC2ImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomCommand cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/media2/session/SessionCommand;->getCustomAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1328
    :cond_0
    nop

    .line 1331
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$53;

    invoke-direct {v1, p0, p2, p3, p1}, Landroidx/media2/session/MediaControllerImplBase$53;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1346
    return-void
.end method

.method onSetCustomLayout(ILjava/util/List;)V
    .locals 2
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 1361
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$55;

    invoke-direct {v1, p0, p2, p1}, Landroidx/media2/session/MediaControllerImplBase$55;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 1369
    return-void
.end method

.method public pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$4;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$4;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const/16 v1, 0x2711

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public play()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$3;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$3;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const/16 v1, 0x2710

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$11;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$11;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c44

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$12;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$12;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c45

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$13;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$13;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroid/net/Uri;Landroid/os/Bundle;)V

    const v1, 0x9c46

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public prepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$5;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$5;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const/16 v1, 0x2712

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$14;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$14;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c47

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$15;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$15;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;Landroid/os/Bundle;)V

    const v1, 0x9c48

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$16;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$16;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroid/net/Uri;Landroid/os/Bundle;)V

    const v1, 0x9c49

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 659
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$26;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$26;-><init>(Landroidx/media2/session/MediaControllerImplBase;I)V

    const/16 v1, 0x271e

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacePlaylistItem(ILjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 671
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$27;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$27;-><init>(Landroidx/media2/session/MediaControllerImplBase;ILjava/lang/String;)V

    const/16 v1, 0x271f

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public rewind()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$7;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$7;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const v1, 0x9c41

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 371
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 374
    const/16 v0, 0x2713

    new-instance v1, Landroidx/media2/session/MediaControllerImplBase$10;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$10;-><init>(Landroidx/media2/session/MediaControllerImplBase;J)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 791
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$33;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$33;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    const/16 v1, 0x2af9

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method sendControllerResult(ILandroidx/media2/session/SessionResult;)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/session/SessionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1313
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase;->mISession:Landroidx/media2/session/IMediaSession;

    .line 1315
    .local v1, "iSession":Landroidx/media2/session/IMediaSession;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    if-nez v1, :cond_0

    .line 1317
    return-void

    .line 1320
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    .line 1321
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    .line 1320
    invoke-interface {v1, v0, p1, v2}, Landroidx/media2/session/IMediaSession;->onControllerResult(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1324
    goto :goto_0

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MC2ImplBase"

    const-string v3, "Error in sending"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1315
    .end local v1    # "iSession":Landroidx/media2/session/IMediaSession;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendCustomCommand(Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 586
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$21;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$21;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(Landroidx/media2/session/SessionCommand;Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setMediaItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 616
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$23;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$23;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;)V

    const/16 v1, 0x2722

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "speed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 534
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$19;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$19;-><init>(Landroidx/media2/session/MediaControllerImplBase;F)V

    const/16 v1, 0x2714

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 605
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$22;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$22;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    const/16 v1, 0x2716

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setRating(Ljava/lang/String;Landroidx/media2/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rating"    # Landroidx/media2/common/Rating;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 574
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$20;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$20;-><init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;Landroidx/media2/common/Rating;)V

    const v1, 0x9c4a

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$31;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$31;-><init>(Landroidx/media2/session/MediaControllerImplBase;I)V

    const/16 v1, 0x271b

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setShuffleMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "shuffleMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$32;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$32;-><init>(Landroidx/media2/session/MediaControllerImplBase;I)V

    const/16 v1, 0x271a

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 833
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$35;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$35;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroid/view/Surface;)V

    const/16 v1, 0x2af8

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setVolumeTo(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$17;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaControllerImplBase$17;-><init>(Landroidx/media2/session/MediaControllerImplBase;II)V

    const/16 v1, 0x7530

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipBackward()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$9;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$9;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const v1, 0x9c43

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipForward()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$8;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$8;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const v1, 0x9c42

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipToNextItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$29;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$29;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const/16 v1, 0x2719

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipToPlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 734
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$30;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$30;-><init>(Landroidx/media2/session/MediaControllerImplBase;I)V

    const/16 v1, 0x2717

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipToPreviousItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 710
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$28;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerImplBase$28;-><init>(Landroidx/media2/session/MediaControllerImplBase;)V

    const/16 v1, 0x2718

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public updatePlaylistMetadata(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 628
    new-instance v0, Landroidx/media2/session/MediaControllerImplBase$24;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaControllerImplBase$24;-><init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/MediaMetadata;)V

    const/16 v1, 0x2721

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaControllerImplBase;->dispatchRemoteSessionTask(ILandroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
