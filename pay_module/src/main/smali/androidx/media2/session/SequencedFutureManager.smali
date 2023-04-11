.class Landroidx/media2/session/SequencedFutureManager;
.super Ljava/lang/Object;
.source "SequencedFutureManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SequencedFutureManager"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mNextSequenceNumber:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSeqToFutureMap:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SequencedFutureManager$SequencedFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SequencedFutureManager;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SequencedFutureManager;->mSeqToFutureMap:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/SequencedFutureManager$SequencedFuture;>;"
    iget-object v1, p0, Landroidx/media2/session/SequencedFutureManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/SequencedFutureManager;->mSeqToFutureMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v2, p0, Landroidx/media2/session/SequencedFutureManager;->mSeqToFutureMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->clear()V

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    .line 114
    .local v2, "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
    invoke-virtual {v2}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->getResultWhenClosed()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->set(Ljava/lang/Object;)Z

    .line 115
    .end local v2    # "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
    goto :goto_0

    .line 116
    :cond_0
    return-void

    .line 112
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    return-void
.end method

.method public createSequencedFuture(Ljava/lang/Object;)Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p1, "resultWhenClosed":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/session/SequencedFutureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    .line 70
    .local v1, "seq":I
    invoke-static {v1, p1}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->create(ILjava/lang/Object;)Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    move-result-object v2

    .line 71
    .local v2, "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<TT;>;"
    iget-object v3, p0, Landroidx/media2/session/SequencedFutureManager;->mSeqToFutureMap:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit v0

    .line 73
    return-object v2

    .line 72
    .end local v1    # "seq":I
    .end local v2    # "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public obtainNextSequenceNumber()I
    .locals 3

    .line 52
    iget-object v0, p0, Landroidx/media2/session/SequencedFutureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget v1, p0, Landroidx/media2/session/SequencedFutureManager;->mNextSequenceNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/session/SequencedFutureManager;->mNextSequenceNumber:I

    monitor-exit v0

    return v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFutureResult(ILjava/lang/Object;)V
    .locals 5
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 84
    .local p2, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/session/SequencedFutureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/SequencedFutureManager;->mSeqToFutureMap:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    .line 86
    .local v1, "future":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
    if-eqz v1, :cond_2

    .line 87
    if-eqz p2, :cond_1

    .line 88
    invoke-virtual {v1}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->getResultWhenClosed()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    const-string v2, "SequencedFutureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type mismatch, expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->getResultWhenClosed()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    :cond_1
    nop

    .line 89
    :goto_0
    invoke-virtual {v1, p2}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_2
    nop

    .line 103
    .end local v1    # "future":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;
    :goto_1
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
