.class public final Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;
.super Landroidx/media2/player/MediaPlayer2;
.source "ExoPlayerMediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;,
        Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerMediaPlayer2"


# instance fields
.field mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mTaskLock"
    .end annotation
.end field

.field private mExecutorAndDrmEventCallback:Landroid/util/Pair;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media2/player/MediaPlayer2$DrmEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorAndEventCallback:Landroid/util/Pair;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media2/player/MediaPlayer2$EventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mPendingTasks:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mTaskLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;",
            ">;"
        }
    .end annotation
.end field

.field final mPlayer:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

.field private final mTaskHandler:Landroid/os/Handler;

.field final mTaskLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer2;-><init>()V

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMediaPlayer2Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 96
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 100
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;-><init>(Landroid/content/Context;Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPlayer:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPlayer:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mLock:Ljava/lang/Object;

    .line 106
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->resetPlayer()V

    .line 107
    return-void
.end method

.method private addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;
    .locals 2
    .param p1, "task"    # Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 141
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->processPendingTask()V

    .line 144
    monitor-exit v0

    .line 145
    return-object p1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnInfo(Landroidx/media2/common/MediaItem;I)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "what"    # I

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;II)V

    .line 797
    return-void
.end method

.method private notifyOnInfo(Landroidx/media2/common/MediaItem;II)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 800
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V

    .line 806
    return-void
.end method

.method private resetPlayer()V
    .locals 1

    .line 809
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$44;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$44;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 816
    return-void
.end method

.method private runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 826
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 827
    .local v0, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<TT;>;"
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/player/futures/ResolvableFuture;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 837
    .local v1, "success":Z
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 840
    const/4 v2, 0x0

    .line 843
    .local v2, "wasInterrupted":Z
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroidx/media2/player/futures/ResolvableFuture;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    .local v3, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 850
    if-eqz v2, :cond_0

    .line 851
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 850
    :cond_0
    nop

    .line 853
    :goto_1
    return-object v3

    .line 854
    .end local v2    # "wasInterrupted":Z
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 855
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 856
    .local v3, "cause":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const-string v5, "ExoPlayerMediaPlayer2"

    const-string v6, "Internal player error"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 845
    .end local v3    # "cause":Ljava/lang/Throwable;
    .local v2, "wasInterrupted":Z
    :catch_1
    move-exception v3

    .line 847
    .local v3, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 848
    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public attachAuxEffect(I)Ljava/lang/Object;
    .locals 3
    .param p1, "effectId"    # I

    .line 398
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$21;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$21;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearDrmEventCallback()V
    .locals 2

    .line 186
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mExecutorAndDrmEventCallback:Landroid/util/Pair;

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearEventCallback()V
    .locals 2

    .line 169
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mExecutorAndEventCallback:Landroid/util/Pair;

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearPendingCommands()V
    .locals 2

    .line 128
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 3

    .line 579
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->clearEventCallback()V

    .line 581
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 583
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    if-nez v1, :cond_0

    .line 584
    monitor-exit v0

    return-void

    .line 586
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 587
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$37;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$37;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 595
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 596
    return-void

    .line 587
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public deselectTrack(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 518
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$33;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$33;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 1

    .line 378
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$19;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$19;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 388
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$20;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$20;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 308
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$12;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$12;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 238
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$5;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$5;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 288
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$10;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$10;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDrmInfo()Landroidx/media2/player/MediaPlayer2$DrmInfo;
    .locals 1

    .line 605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDrmKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .locals 1
    .param p1, "keySetId"    # [B
    .param p2, "initData"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "keyType"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .line 622
    .local p5, "optionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 638
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDuration()J
    .locals 2

    .line 298
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$11;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$11;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 529
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$34;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$34;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getPlaybackParams()Landroidx/media2/player/PlaybackParams;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 429
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$24;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$24;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/PlaybackParams;

    return-object v0
.end method

.method public getPlayerVolume()F
    .locals 1

    .line 479
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$29;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$29;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I

    .line 498
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$31;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$31;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 318
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$13;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$13;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimestamp()Landroidx/media2/player/MediaTimestamp;
    .locals 1

    .line 539
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$35;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$35;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/MediaTimestamp;

    return-object v0
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$30;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$30;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 449
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$26;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$26;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 439
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$25;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$25;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public loopCurrent(Z)Ljava/lang/Object;
    .locals 3
    .param p1, "loop"    # Z

    .line 328
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$14;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$14;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V
    .locals 6
    .param p1, "notifier"    # Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;

    .line 194
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mExecutorAndEventCallback:Landroid/util/Pair;

    .line 196
    .local v1, "executorAndEventCallback":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$EventCallback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v1, :cond_0

    .line 198
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 199
    .local v0, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/player/MediaPlayer2$EventCallback;

    .line 201
    .local v2, "eventCallback":Landroidx/media2/player/MediaPlayer2$EventCallback;
    :try_start_1
    new-instance v3, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$2;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$2;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;Landroidx/media2/player/MediaPlayer2$EventCallback;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    goto :goto_0

    .line 207
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v4, "ExoPlayerMediaPlayer2"

    const-string v5, "The given executor is shutting down. Ignoring the player event."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "eventCallback":Landroidx/media2/player/MediaPlayer2$EventCallback;
    .end local v3    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    nop

    .line 212
    :goto_0
    return-void

    .line 196
    .end local v1    # "executorAndEventCallback":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$EventCallback;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyWhenCommandLabelReached(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "label"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$1;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$1;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onBandwidthSample(Landroidx/media2/common/MediaItem;I)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "bitrateKbps"    # I

    .line 698
    const/16 v0, 0x2bf

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;II)V

    .line 699
    return-void
.end method

.method public onBufferingEnded(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 688
    const/16 v0, 0x2be

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 689
    return-void
.end method

.method public onBufferingStarted(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 683
    const/16 v0, 0x2bd

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 684
    return-void
.end method

.method public onBufferingUpdate(Landroidx/media2/common/MediaItem;I)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "bufferingPercentage"    # I

    .line 693
    const/16 v0, 0x2c0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;II)V

    .line 694
    return-void
.end method

.method public onError(Landroidx/media2/common/MediaItem;I)V
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "what"    # I

    .line 777
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    iget-boolean v1, v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 781
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 782
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->processPendingTask()V

    goto :goto_0

    .line 778
    :cond_0
    nop

    .line 784
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V

    .line 791
    return-void

    .line 784
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onLoop(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 755
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 756
    return-void
.end method

.method public onMediaItemEnded(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 750
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 751
    return-void
.end method

.method public onMediaItemStartedAsNext(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 745
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 746
    return-void
.end method

.method public onMediaTimeDiscontinuity(Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "mediaTimestamp"    # Landroidx/media2/player/MediaTimestamp;

    .line 761
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$41;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$41;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V

    .line 768
    return-void
.end method

.method public onMetadataChanged(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 665
    const/16 v0, 0x322

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 666
    return-void
.end method

.method public onPlaybackEnded(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 772
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 773
    return-void
.end method

.method public onPrepared(Landroidx/media2/common/MediaItem;)V
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 650
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 651
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    iget v1, v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mMediaCallType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    iget-object v1, v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mDSD:Landroidx/media2/common/MediaItem;

    .line 654
    invoke-static {v1, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    iget-boolean v1, v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 657
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 658
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->processPendingTask()V

    goto :goto_0

    .line 654
    :cond_0
    goto :goto_0

    .line 652
    :cond_1
    nop

    .line 660
    :goto_0
    monitor-exit v0

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSeekCompleted()V
    .locals 3

    .line 670
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    iget v1, v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    iget-boolean v1, v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 675
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 676
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->processPendingTask()V

    goto :goto_0

    .line 671
    :cond_0
    nop

    .line 678
    :goto_0
    monitor-exit v0

    .line 679
    return-void

    .line 678
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSubtitleData(Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "trackIndex"    # I
    .param p3, "subtitleData"    # Landroidx/media2/common/SubtitleData;

    .line 723
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$39;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$39;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V

    .line 730
    return-void
.end method

.method public onTimedMetadata(Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "timedMetaData"    # Landroidx/media2/player/TimedMetaData;

    .line 734
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$40;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$40;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V

    .line 741
    return-void
.end method

.method public onVideoRenderingStart(Landroidx/media2/common/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;

    .line 703
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;I)V

    .line 704
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/common/MediaItem;II)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media2/common/MediaItem;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 708
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$38;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$38;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V

    .line 718
    return-void
.end method

.method public pause()Ljava/lang/Object;
    .locals 3

    .line 268
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$8;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$8;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public play()Ljava/lang/Object;
    .locals 3

    .line 258
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$7;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$7;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prepare()Ljava/lang/Object;
    .locals 3

    .line 248
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$6;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$6;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prepareDrm(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 610
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method processPendingTask()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mTaskLock"
    .end annotation

    .line 151
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 153
    .local v0, "task":Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 154
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    .end local v0    # "task":Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
    :cond_0
    nop

    .line 156
    :goto_0
    return-void
.end method

.method public provideDrmKeyResponse([B[B)[B
    .locals 1
    .param p1, "keySetId"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "response"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public releaseDrm()V
    .locals 1

    .line 615
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 3

    .line 549
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->clearPendingCommands()V

    .line 553
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 555
    .local v1, "currentTask":Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 556
    if-eqz v1, :cond_1

    .line 557
    monitor-enter v1

    .line 559
    :goto_0
    :try_start_1
    iget-boolean v0, v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mDone:Z

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    :cond_0
    goto :goto_1

    .line 565
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 562
    :catch_0
    move-exception v0

    .line 565
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 556
    :cond_1
    nop

    .line 567
    :goto_3
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 568
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$36;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$36;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 575
    return-void

    .line 555
    .end local v1    # "currentTask":Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    return-void
.end method

.method public restoreDrmKeys([B)V
    .locals 1
    .param p1, "keySetId"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 632
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public seekTo(JI)Ljava/lang/Object;
    .locals 8
    .param p1, "msec"    # J
    .param p3, "mode"    # I

    .line 278
    new-instance v7, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$9;

    const/16 v2, 0xe

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$9;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZJI)V

    invoke-direct {p0, v7}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectTrack(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 508
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$32;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$32;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Ljava/lang/Object;
    .locals 3
    .param p1, "attributes"    # Landroidx/media/AudioAttributesCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 368
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$18;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$18;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLandroidx/media/AudioAttributesCompat;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAudioSessionId(I)Ljava/lang/Object;
    .locals 3
    .param p1, "sessionId"    # I

    .line 218
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$3;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$3;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAuxEffectSendLevel(F)Ljava/lang/Object;
    .locals 3
    .param p1, "auxEffectSendLevel"    # F

    .line 408
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$22;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$22;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDrmEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$DrmEventCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventCallback"    # Landroidx/media2/player/MediaPlayer2$DrmEventCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mExecutorAndDrmEventCallback:Landroid/util/Pair;

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 643
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$EventCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventCallback"    # Landroidx/media2/player/MediaPlayer2$EventCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 160
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mExecutorAndEventCallback:Landroid/util/Pair;

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
    .locals 3
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$4;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$4;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLandroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setNextMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
    .locals 3
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 348
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$16;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$16;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLandroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setNextMediaItems(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 358
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$17;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$17;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLjava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setOnDrmConfigHelper(Landroidx/media2/player/MediaPlayer2$OnDrmConfigHelper;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/player/MediaPlayer2$OnDrmConfigHelper;

    .line 600
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPlaybackParams(Landroidx/media2/player/PlaybackParams;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # Landroidx/media2/player/PlaybackParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 418
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$23;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$23;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLandroidx/media2/player/PlaybackParams;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setPlayerVolume(F)Ljava/lang/Object;
    .locals 3
    .param p1, "volume"    # F

    .line 469
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$28;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$28;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setSurface(Landroid/view/Surface;)Ljava/lang/Object;
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 459
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$27;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$27;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLandroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public skipToNext()Ljava/lang/Object;
    .locals 3

    .line 338
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$15;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$15;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->addTask(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
