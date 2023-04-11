.class public final Landroidx/media2/exoplayer/external/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 63
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/ConditionVariable;
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized block(J)Z
    .locals 6
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 77
    .local v0, "now":J
    add-long v2, v0, p1

    .line 78
    .local v2, "end":J
    :goto_0
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z

    if-nez v4, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 79
    sub-long v4, v2, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 78
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/ConditionVariable;
    :cond_0
    nop

    .line 82
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    .line 75
    .end local v0    # "now":J
    .end local v2    # "end":J
    .end local p1    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized close()Z
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z

    .line 53
    .local v0, "wasOpen":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return v0

    .line 51
    .end local v0    # "wasOpen":Z
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/ConditionVariable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Z
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    return v0

    .line 37
    .end local p0    # "this":Landroidx/media2/exoplayer/external/util/ConditionVariable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
