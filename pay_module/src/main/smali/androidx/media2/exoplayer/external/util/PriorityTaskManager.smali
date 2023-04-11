.class public final Landroidx/media2/exoplayer/external/util/PriorityTaskManager;
.super Ljava/lang/Object;
.source "PriorityTaskManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/PriorityTaskManager$PriorityTooLowException;
    }
.end annotation


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    .line 57
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    .line 58
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "priority"    # I

    .line 66
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 68
    iget v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public proceed(I)V
    .locals 2
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :goto_0
    :try_start_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    if-eq v1, p1, :cond_0

    .line 81
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 83
    :cond_0
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public proceedNonBlocking(I)Z
    .locals 2
    .param p1, "priority"    # I

    .line 93
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public proceedOrThrow(I)V
    .locals 3
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/util/PriorityTaskManager$PriorityTooLowException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    if-ne v1, p1, :cond_0

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 107
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/util/PriorityTaskManager$PriorityTooLowException;

    iget v2, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    invoke-direct {v1, p1, v2}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager$PriorityTooLowException;-><init>(II)V

    .end local p1    # "priority":I
    throw v1

    .line 109
    .restart local p1    # "priority":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(I)V
    .locals 3
    .param p1, "priority"    # I

    .line 118
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iput v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    .line 121
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
