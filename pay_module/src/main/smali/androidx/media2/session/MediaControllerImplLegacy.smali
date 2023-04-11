.class Landroidx/media2/session/MediaControllerImplLegacy;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"

# interfaces
.implements Landroidx/media2/session/MediaController$MediaControllerImpl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ObsoleteSdkInt"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;,
        Landroidx/media2/session/MediaControllerImplLegacy$ConnectionCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final ITEM_NONE:I = -0x1

.field private static final POSITION_DIFF_TOLERANCE:J = 0x64L

.field static final SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED:Ljava/lang/String; = "android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED"

.field static final SESSION_COMMAND_ON_EXTRAS_CHANGED:Ljava/lang/String; = "android.media.session.command.ON_EXTRAS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "MC2ImplLegacy"

.field static final sDefaultRootExtras:Landroid/os/Bundle;


# instance fields
.field mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mBufferedPosition:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mBufferingState:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mConnected:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mControllerCompatCallback:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mCurrentMediaItem:Landroidx/media2/common/MediaItem;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mCurrentMediaItemIndex:I

.field mCustomLayout:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field mInstance:Landroidx/media2/session/MediaController;

.field mIsReleased:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mPlayerState:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mPlaylist:Ljava/util/List;
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

.field mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field mRepeatMode:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mShuffleMode:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mSkipToPlaylistIndex:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mToken:Landroidx/media2/session/SessionToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    const-string v0, "MC2ImplLegacy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/MediaControllerImplLegacy;->DEBUG:Z

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaControllerImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    .line 100
    sget-object v0, Landroidx/media2/session/MediaControllerImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    const-string v1, "androidx.media2.root_default_root"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "instance"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "token"    # Landroidx/media2/session/SessionToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mSkipToPlaylistIndex:I

    .line 185
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaController_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 188
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandler:Landroid/os/Handler;

    .line 190
    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mToken:Landroidx/media2/session/SessionToken;

    .line 192
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media2/session/SessionToken;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media2/session/SessionToken;->getBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 198
    :cond_0
    invoke-direct {p0}, Landroidx/media2/session/MediaControllerImplLegacy;->connectToService()V

    .line 200
    :goto_0
    return-void
.end method

.method private connectToService()V
    .locals 2

    .line 940
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$5;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaControllerImplLegacy$5;-><init>(Landroidx/media2/session/MediaControllerImplLegacy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 950
    return-void
.end method

.method private createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 251
    .local v1, "item":Landroidx/media2/common/MediaItem;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v0

    .line 253
    .local v0, "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/SessionResult;>;"
    new-instance v2, Landroidx/media2/session/SessionResult;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 254
    return-object v0

    .line 251
    .end local v0    # "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/SessionResult;>;"
    .end local v1    # "item":Landroidx/media2/common/MediaItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendCommand(I)V
    .locals 1
    .param p1, "commandCode"    # I

    .line 953
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 954
    return-void
.end method

.method private sendCommand(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "commandCode"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 957
    if-nez p2, :cond_0

    .line 958
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    goto :goto_0

    .line 957
    :cond_0
    nop

    .line 960
    :goto_0
    const-string v0, "androidx.media2.argument.COMMAND_CODE"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    const-string v0, "androidx.media2.controller.command.BY_COMMAND_CODE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 962
    return-void
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 965
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 966
    return-void
.end method

.method private sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .line 974
    if-nez p2, :cond_0

    .line 975
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    goto :goto_0

    .line 974
    :cond_0
    nop

    .line 979
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 981
    .local v1, "controller":Landroid/support/v4/media/session/MediaControllerCompat;
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompatCallback:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 982
    .local v2, "callback":Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    const-string v0, "androidx.media2.argument.ICONTROLLER_CALLBACK"

    .line 984
    invoke-virtual {v2}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->getIControllerCallback()Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 983
    invoke-static {p2, v0, v3}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 985
    const-string v0, "androidx.media2.argument.PACKAGE_NAME"

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v0, "androidx.media2.argument.UID"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 987
    const-string v0, "androidx.media2.argument.PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 989
    return-void

    .line 982
    .end local v1    # "controller":Landroid/support/v4/media/session/MediaControllerCompat;
    .end local v2    # "callback":Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPlaylistItem(ILjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 642
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 644
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 647
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 648
    invoke-static {p2}, Landroidx/media2/session/MediaUtils;->createMediaDescriptionCompat(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    .line 647
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 649
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 649
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public adjustVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 441
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 443
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 446
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 447
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4

    .line 204
    sget-boolean v0, Landroidx/media2/session/MediaControllerImplLegacy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "MC2ImplLegacy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_0
    nop

    .line 207
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_1

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 214
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_2

    .line 215
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1

    .line 217
    :cond_2
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 220
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    .line 222
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 224
    iput-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    goto :goto_2

    .line 222
    :cond_3
    nop

    .line 226
    :goto_2
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_4

    .line 227
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompatCallback:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 228
    iput-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    goto :goto_3

    .line 226
    :cond_4
    nop

    .line 230
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/MediaControllerImplLegacy$1;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaControllerImplLegacy$1;-><init>(Landroidx/media2/session/MediaControllerImplLegacy;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 238
    return-void

    .line 231
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 5
    .param p1, "sessionCompatToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 925
    const/4 v0, 0x0

    .line 927
    .local v0, "controllerCompat":Landroid/support/v4/media/session/MediaControllerCompat;
    :try_start_0
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 931
    goto :goto_0

    .line 928
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 932
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_1
    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 934
    new-instance v2, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    invoke-direct {v2, p0}, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;-><init>(Landroidx/media2/session/MediaControllerImplLegacy;)V

    iput-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompatCallback:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 935
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompatCallback:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    iget-object v4, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 936
    monitor-exit v1

    .line 937
    return-void

    .line 936
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
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

    .line 829
    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support deselecting track"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public fastForward()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 304
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 307
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->fastForward()V

    .line 308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 308
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAllowedCommands()Landroidx/media2/session/SessionCommandGroup;
    .locals 4

    .line 842
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 844
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 847
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    monitor-exit v0

    return-object v1

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 858
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    monitor-exit v0

    return-object v1

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferedPosition()J
    .locals 6

    .line 527
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 529
    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    monitor-exit v0

    return-wide v2

    .line 532
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 533
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v2

    :goto_0
    monitor-exit v0

    .line 532
    return-wide v2

    .line 534
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferingState()I
    .locals 5

    .line 515
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 517
    const-string v1, "MC2ImplLegacy"

    const-string v3, "Session isn\'t active"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    monitor-exit v0

    return v2

    .line 520
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 521
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v1}, Landroidx/media2/session/MediaUtils;->toBufferingState(I)I

    move-result v2

    :goto_0
    monitor-exit v0

    .line 520
    return v2

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectedToken()Landroidx/media2/session/SessionToken;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 242
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mToken:Landroidx/media2/session/SessionToken;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 244
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

    .line 853
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .locals 4

    .line 687
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 689
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 692
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    monitor-exit v0

    return-object v1

    .line 693
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 698
    iget v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 6

    .line 490
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 492
    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    monitor-exit v0

    return-wide v2

    .line 495
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v2, v2, Landroidx/media2/session/MediaController;->mTimeDiff:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 498
    :cond_1
    monitor-exit v0

    return-wide v2

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDuration()J
    .locals 6

    .line 475
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 477
    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    monitor-exit v0

    return-wide v2

    .line 480
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v4, "android.media.metadata.DURATION"

    .line 481
    invoke-virtual {v1, v4}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 481
    :cond_1
    goto :goto_0

    .line 480
    :cond_2
    nop

    .line 484
    :goto_0
    monitor-exit v0

    .line 485
    return-wide v2

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 708
    const/4 v0, -0x1

    return v0
.end method

.method public getPlaybackInfo()Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 539
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 541
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 544
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    monitor-exit v0

    return-object v1

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 5

    .line 504
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 506
    const-string v1, "MC2ImplLegacy"

    const-string v3, "Session isn\'t active"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    monitor-exit v0

    return v2

    .line 509
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    goto :goto_0

    :goto_1
    monitor-exit v0

    return v2

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public getPlayerState()I
    .locals 4

    .line 464
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 466
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 469
    :cond_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlayerState:I

    monitor-exit v0

    return v1

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 605
    const-string v1, "MC2ImplLegacy"

    const-string v3, "Session isn\'t active"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    monitor-exit v0

    return-object v2

    .line 608
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    nop

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 631
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 633
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 636
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    monitor-exit v0

    return-object v1

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 703
    const/4 v0, -0x1

    return v0
.end method

.method public getRepeatMode()I
    .locals 4

    .line 751
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 753
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 756
    :cond_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mRepeatMode:I

    monitor-exit v0

    return v1

    .line 757
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

    .line 836
    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support getting selected track"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 453
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 455
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 458
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShuffleMode()I
    .locals 4

    .line 776
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 778
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 781
    :cond_0
    iget v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mShuffleMode:I

    monitor-exit v0

    return v1

    .line 782
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

    .line 814
    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support getting TrackInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoSize()Landroidx/media2/common/VideoSize;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 801
    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support getting VideoSize"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 259
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    monitor-exit v0

    return v1

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onConnectedNotLocked()V
    .locals 4

    .line 865
    sget-boolean v0, Landroidx/media2/session/MediaControllerImplLegacy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "MC2ImplLegacy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedNotLocked token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mToken:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    :cond_0
    nop

    .line 871
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mIsReleased:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 875
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 876
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 877
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getFlags()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 876
    invoke-static {v1, v2, v3}, Landroidx/media2/session/MediaUtils;->convertToSessionCommandGroup(JLandroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media2/session/SessionCommandGroup;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 878
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v1}, Landroidx/media2/session/MediaUtils;->convertToPlayerState(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v1

    iput v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlayerState:I

    .line 879
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 880
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mBufferedPosition:J

    .line 881
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v1}, Landroidx/media2/session/MediaUtils;->convertToCustomLayout(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCustomLayout:Ljava/util/List;

    .line 883
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 884
    .local v1, "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCustomLayout:Ljava/util/List;

    .line 886
    .local v2, "customLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->toPlaybackInfo2(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 888
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getRepeatMode()I

    move-result v3

    iput v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mRepeatMode:I

    .line 889
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getShuffleMode()I

    move-result v3

    iput v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mShuffleMode:I

    .line 891
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueue()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->removeNullElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    .line 892
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 898
    :cond_3
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->convertQueueItemListToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    goto :goto_3

    .line 892
    :cond_4
    :goto_2
    nop

    .line 895
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    .line 896
    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    .line 900
    :goto_3
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 901
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 900
    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylistMetadata:Landroidx/media2/common/MediaMetadata;

    .line 904
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/media2/session/MediaControllerImplLegacy;->setCurrentMediaItemLocked(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 905
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    .line 906
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/MediaControllerImplLegacy$3;

    invoke-direct {v3, p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy$3;-><init>(Landroidx/media2/session/MediaControllerImplLegacy;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v0, v3}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    .line 913
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 914
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/MediaControllerImplLegacy$4;

    invoke-direct {v3, p0, v2}, Landroidx/media2/session/MediaControllerImplLegacy$4;-><init>(Landroidx/media2/session/MediaControllerImplLegacy;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V

    goto :goto_4

    .line 913
    :cond_5
    nop

    .line 921
    :goto_4
    return-void

    .line 872
    .end local v1    # "allowedCommands":Landroidx/media2/session/SessionCommandGroup;
    .end local v2    # "customLayout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    :cond_6
    :goto_5
    nop

    .line 873
    :try_start_1
    monitor-exit v0

    return-void

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 280
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 283
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 284
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public play()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 268
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 271
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 272
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 351
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 353
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 356
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 357
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 364
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 366
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 369
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 370
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 377
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 379
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 382
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 383
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 292
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 295
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepare()V

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 296
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 390
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 392
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 395
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 396
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 396
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 403
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 405
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 408
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 409
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 416
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 418
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 421
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 422
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 655
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 657
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 660
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 663
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 664
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 660
    :cond_2
    :goto_0
    nop

    .line 661
    const/4 v1, -0x3

    :try_start_1
    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public replacePlaylistItem(ILjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
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
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    const/16 v2, -0x64

    if-nez v1, :cond_0

    .line 673
    const-string v1, "MC2ImplLegacy"

    const-string v3, "Session isn\'t active"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    invoke-direct {p0, v2}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 676
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaControllerImplLegacy;->removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 680
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/MediaControllerImplLegacy;->addPlaylistItem(ILjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 681
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 676
    :cond_2
    :goto_0
    nop

    .line 677
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public rewind()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 316
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 319
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->rewind()V

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 320
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 340
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 343
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    .line 344
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 344
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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

    .line 821
    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support selecting track"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method sendCommand(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 970
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/session/MediaControllerImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 971
    return-void
.end method

.method public sendCustomCommand(Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
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

    .line 579
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 581
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 584
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {v1, p1}, Landroidx/media2/session/SessionCommandGroup;->hasCommand(Landroidx/media2/session/SessionCommand;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    .line 586
    invoke-virtual {p1}, Landroidx/media2/session/SessionCommand;->getCustomAction()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {v1, v2, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 587
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 589
    :cond_1
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v1

    .line 590
    .local v1, "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/SessionResult;>;"
    new-instance v2, Landroidx/media2/session/MediaControllerImplLegacy$2;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Landroidx/media2/session/MediaControllerImplLegacy$2;-><init>(Landroidx/media2/session/MediaControllerImplLegacy;Landroid/os/Handler;Landroidx/media2/session/futures/ResolvableFuture;)V

    .line 596
    .local v2, "cb":Landroid/os/ResultReceiver;
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroidx/media2/session/SessionCommand;->getCustomAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 597
    monitor-exit v0

    return-object v1

    .line 598
    .end local v1    # "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/SessionResult;>;"
    .end local v2    # "cb":Landroid/os/ResultReceiver;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCurrentMediaItemLocked(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 8
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .line 993
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    .line 994
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 995
    iput v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 997
    return-void

    .line 1000
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1001
    iput v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 1002
    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1003
    return-void

    .line 1006
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_4

    .line 1008
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v1

    .line 1009
    .local v1, "queueId":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1010
    iget-object v4, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 1011
    .local v4, "item":Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_2

    .line 1012
    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1013
    iput v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 1014
    return-void

    .line 1011
    :cond_2
    nop

    .line 1009
    .end local v4    # "item":Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    goto :goto_1

    .line 1006
    .end local v1    # "queueId":J
    .end local v3    # "i":I
    :cond_4
    nop

    .line 1019
    :goto_1
    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    .local v1, "mediaId":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 1021
    iput v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 1022
    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1023
    return-void

    .line 1028
    :cond_5
    iget v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mSkipToPlaylistIndex:I

    if-ltz v2, :cond_7

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    iget v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mSkipToPlaylistIndex:I

    .line 1030
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v2

    .line 1029
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1032
    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1033
    iget v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mSkipToPlaylistIndex:I

    iput v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 1034
    iput v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mSkipToPlaylistIndex:I

    .line 1035
    return-void

    .line 1029
    :cond_6
    goto :goto_2

    .line 1028
    :cond_7
    nop

    .line 1039
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 1040
    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 1041
    .local v3, "item":Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1042
    iput v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 1043
    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1044
    return-void

    .line 1041
    :cond_8
    nop

    .line 1039
    .end local v3    # "item":Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1049
    .end local v2    # "i":I
    :cond_9
    iput v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItemIndex:I

    .line 1050
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-static {v0}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 1051
    return-void
.end method

.method public setMediaItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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

    .line 620
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "speed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 568
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 571
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setPlaybackSpeed(F)V

    .line 572
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 572
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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

    .line 615
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setRating(Ljava/lang/String;Landroidx/media2/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 551
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 553
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 556
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    .line 558
    invoke-static {p2}, Landroidx/media2/session/MediaUtils;->convertToRatingCompat(Landroidx/media2/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    .line 557
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRating(Landroid/support/v4/media/RatingCompat;)V

    goto :goto_0

    .line 556
    :cond_1
    nop

    .line 560
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 560
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 764
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 769
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRepeatMode(I)V

    .line 770
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 770
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setShuffleMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "shuffleMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 789
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 794
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setShuffleMode(I)V

    .line 795
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 795
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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

    .line 807
    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support setting Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setVolumeTo(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 428
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 430
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 433
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->setVolumeTo(II)V

    .line 434
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 434
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public skipBackward()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 333
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipForward()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 327
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipToNextItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 727
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 730
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    .line 731
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 731
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public skipToPlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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

    .line 737
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 739
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 742
    :cond_0
    iput p1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mSkipToPlaylistIndex:I

    .line 743
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mQueue:Ljava/util/List;

    .line 744
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v2

    .line 743
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToQueueItem(J)V

    .line 745
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 745
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public skipToPreviousItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    .line 715
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 718
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    .line 719
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 719
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePlaylistMetadata(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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

    .line 626
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerImplLegacy;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
