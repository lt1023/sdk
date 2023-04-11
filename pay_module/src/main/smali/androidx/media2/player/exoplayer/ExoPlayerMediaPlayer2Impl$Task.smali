.class abstract Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
.super Ljava/lang/Object;
.source "ExoPlayerMediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation


# instance fields
.field mDSD:Landroidx/media2/common/MediaItem;

.field mDone:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mMediaCallType:I

.field final mNeedToWaitForEventToComplete:Z

.field final synthetic this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZ)V
    .locals 0
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 873
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mMediaCallType:I

    .line 875
    iput-boolean p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    .line 876
    return-void
.end method


# virtual methods
.method abstract process()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public run()V
    .locals 6

    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, "status":I
    const/4 v1, 0x0

    .line 884
    .local v1, "skip":Z
    iget v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    .line 885
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v2, v2, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 886
    :try_start_0
    iget-object v4, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v4, v4, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 887
    .local v4, "next":Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
    if-eqz v4, :cond_0

    iget v5, v4, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mMediaCallType:I

    if-ne v5, v3, :cond_0

    .line 888
    const/4 v1, 0x1

    goto :goto_0

    .line 887
    :cond_0
    nop

    .line 890
    .end local v4    # "next":Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 884
    :cond_1
    nop

    .line 892
    :goto_1
    if-nez v1, :cond_4

    .line 894
    :try_start_1
    iget v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v2, v2, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPlayer:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    .line 895
    invoke-virtual {v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->hasError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 896
    const/4 v0, 0x1

    goto :goto_3

    .line 895
    :cond_2
    goto :goto_2

    .line 894
    :cond_3
    nop

    .line 898
    :goto_2
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->process()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 908
    :catch_0
    move-exception v2

    .line 909
    .local v2, "e":Ljava/lang/Exception;
    const/high16 v0, -0x80000000

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 906
    :catch_1
    move-exception v2

    .line 907
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x4

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 904
    :catch_2
    move-exception v2

    .line 905
    .local v2, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x3

    .end local v2    # "e":Ljava/lang/SecurityException;
    goto :goto_3

    .line 902
    :catch_3
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_3

    .line 900
    :catch_4
    move-exception v2

    .line 901
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v0, 0x1

    .line 910
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    goto :goto_4

    .line 912
    :cond_4
    const/4 v0, 0x5

    .line 915
    :goto_4
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v2, v2, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPlayer:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    invoke-virtual {v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mDSD:Landroidx/media2/common/MediaItem;

    .line 917
    iget-boolean v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    goto :goto_6

    .line 918
    :cond_6
    :goto_5
    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 920
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v2, v2, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 921
    :try_start_2
    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mCurrentTask:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;

    .line 922
    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    invoke-virtual {v3}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->processPendingTask()V

    .line 923
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 926
    :goto_6
    monitor-enter p0

    .line 927
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mDone:Z

    .line 928
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 929
    monitor-exit p0

    .line 930
    return-void

    .line 929
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 923
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method sendCompleteNotification(I)V
    .locals 2
    .param p1, "status"    # I

    .line 933
    iget v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 936
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    new-instance v1, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task$1;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;)V

    .line 945
    return-void
.end method
