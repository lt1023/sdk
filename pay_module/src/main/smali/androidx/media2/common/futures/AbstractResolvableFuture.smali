.class public abstract Landroidx/media2/common/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/futures/AbstractResolvableFuture$SynchronizedHelper;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$SafeAtomicHelper;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;,
        Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 64
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 66
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 69
    const-class v0, Landroidx/media2/common/futures/AbstractResolvableFuture;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    .line 81
    const/4 v0, 0x0

    .line 86
    .local v0, "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    :try_start_0
    new-instance v7, Landroidx/media2/common/futures/AbstractResolvableFuture$SafeAtomicHelper;

    const-class v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "thread"

    .line 88
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-class v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-string v4, "next"

    .line 89
    invoke-static {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v1, Landroidx/media2/common/futures/AbstractResolvableFuture;

    const-class v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    const-string/jumbo v5, "waiters"

    .line 90
    invoke-static {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v1, Landroidx/media2/common/futures/AbstractResolvableFuture;

    const-class v5, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    const-string v6, "listeners"

    .line 91
    invoke-static {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v1, Landroidx/media2/common/futures/AbstractResolvableFuture;

    const-class v6, Ljava/lang/Object;

    const-string/jumbo v8, "value"

    .line 95
    invoke-static {v1, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media2/common/futures/AbstractResolvableFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 103
    .local v1, "helper":Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;
    goto :goto_0

    .line 96
    .end local v1    # "helper":Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    move-object v0, v1

    .line 102
    new-instance v2, Landroidx/media2/common/futures/AbstractResolvableFuture$SynchronizedHelper;

    invoke-direct {v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$SynchronizedHelper;-><init>()V

    move-object v1, v2

    .line 105
    .local v1, "helper":Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;
    :goto_0
    sput-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    .line 110
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    .line 114
    .local v2, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 115
    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "SafeAtomicHelper is broken!"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    :cond_0
    nop

    .line 218
    .end local v0    # "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    .end local v1    # "helper":Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;
    .end local v2    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 318
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 1024
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    :try_start_0
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 1025
    .local v0, "value":Ljava/lang/Object;, "TV;"
    const-string v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    goto :goto_0

    .line 1030
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " thrown from get()]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1028
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v1, "CANCELLED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0

    .line 1026
    :catch_2
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    nop

    .line 1033
    :goto_0
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1193
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1195
    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1201
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1204
    return-object p0

    .line 1202
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearListeners(Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    .locals 3
    .param p1, "onto"    # Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 961
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    :goto_0
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 962
    .local v0, "head":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    move-object v1, p1

    .line 964
    .local v1, "reversedList":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    :goto_1
    if-eqz v0, :cond_0

    .line 965
    move-object v2, v0

    .line 966
    .local v2, "tmp":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 967
    iput-object v1, v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 968
    move-object v1, v2

    .line 969
    .end local v2    # "tmp":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    goto :goto_1

    .line 970
    :cond_0
    return-object v1

    .line 962
    .end local v1    # "reversedList":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    :cond_1
    goto :goto_0
.end method

.method static complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/futures/AbstractResolvableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 869
    .local p0, "future":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<*>;"
    const/4 v0, 0x0

    .line 872
    .local v0, "next":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    :goto_0
    invoke-direct {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->releaseWaiters()V

    .line 878
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->afterDone()V

    .line 880
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->clearListeners(Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    move-result-object v0

    .line 881
    const/4 p0, 0x0

    .line 882
    :goto_1
    if-eqz v0, :cond_3

    .line 883
    move-object v1, v0

    .line 884
    .local v1, "curr":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 885
    iget-object v2, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->task:Ljava/lang/Runnable;

    .line 886
    .local v2, "task":Ljava/lang/Runnable;
    instance-of v3, v2, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v3, :cond_2

    .line 887
    move-object v3, v2

    check-cast v3, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    .line 894
    .local v3, "setFuture":Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture<*>;"
    iget-object p0, v3, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/common/futures/AbstractResolvableFuture;

    .line 895
    iget-object v4, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-ne v4, v3, :cond_1

    .line 896
    iget-object v4, v3, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 897
    .local v4, "valueToSet":Ljava/lang/Object;
    sget-object v5, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 898
    goto :goto_0

    .line 897
    :cond_0
    goto :goto_2

    .line 895
    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_1
    nop

    .line 902
    .end local v3    # "setFuture":Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture<*>;"
    :goto_2
    goto :goto_3

    .line 903
    :cond_2
    iget-object v3, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, Landroidx/media2/common/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 905
    .end local v1    # "curr":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    .end local v2    # "task":Ljava/lang/Runnable;
    :goto_3
    goto :goto_1

    .line 908
    :cond_3
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1054
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1065
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 514
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    instance-of v0, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    if-nez v0, :cond_2

    .line 518
    instance-of v0, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    if-nez v0, :cond_1

    .line 520
    sget-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_0
    move-object v0, p1

    .line 525
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    return-object v0

    .line 519
    .end local v0    # "asV":Ljava/lang/Object;, "TV;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    move-object v1, p1

    check-cast v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    iget-object v1, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 515
    :cond_2
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 801
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 807
    move-object v0, p0

    check-cast v0, Landroidx/media2/common/futures/AbstractResolvableFuture;

    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 808
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v2, :cond_2

    .line 812
    move-object v2, v0

    check-cast v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    .line 813
    .local v2, "c":Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;
    iget-boolean v3, v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v3, :cond_1

    .line 814
    iget-object v3, v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    iget-object v4, v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v3, v1, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    :goto_0
    move-object v0, v3

    goto :goto_1

    .line 813
    :cond_1
    goto :goto_1

    .line 808
    .end local v2    # "c":Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;
    :cond_2
    nop

    .line 818
    :goto_1
    return-object v0

    .line 820
    .end local v0    # "v":Ljava/lang/Object;
    :cond_3
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    .line 822
    .local v0, "wasCancelled":Z
    sget-boolean v2, Landroidx/media2/common/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    .line 823
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    return-object v1

    .line 827
    :cond_4
    :try_start_0
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    .line 828
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_5

    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    return-object v1

    .line 841
    .end local v2    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 842
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v2, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 831
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 832
    .local v2, "cancellation":Ljava/util/concurrent/CancellationException;
    if-nez v0, :cond_6

    .line 833
    new-instance v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 840
    :cond_6
    new-instance v3, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    invoke-direct {v3, v1, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    .line 829
    .end local v2    # "cancellation":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v1

    .line 830
    .local v1, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 850
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 854
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    if-eqz v0, :cond_0

    .line 861
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 860
    :cond_0
    nop

    .line 854
    :goto_1
    return-object v1

    .line 860
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 861
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 860
    :cond_1
    nop

    .line 861
    :goto_2
    throw v1

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 857
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private releaseWaiters()V
    .locals 3

    .line 940
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    :goto_0
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 941
    .local v0, "head":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    move-object v1, v0

    .local v1, "currentWaiter":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :goto_1
    if-eqz v1, :cond_0

    .line 944
    invoke-virtual {v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->unpark()V

    .line 943
    iget-object v1, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    goto :goto_1

    .line 942
    :cond_0
    nop

    .line 946
    .end local v1    # "currentWaiter":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    return-void

    .line 941
    :cond_1
    goto :goto_0
.end method

.method private removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V
    .locals 4
    .param p1, "node"    # Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 172
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 175
    :goto_0
    const/4 v0, 0x0

    .line 176
    .local v0, "pred":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    iget-object v1, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 177
    .local v1, "curr":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-ne v1, v2, :cond_0

    .line 178
    return-void

    .line 177
    :cond_0
    nop

    .line 181
    :goto_1
    if-eqz v1, :cond_5

    .line 182
    iget-object v2, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 183
    .local v2, "succ":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    iget-object v3, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 184
    move-object v0, v1

    goto :goto_2

    .line 185
    :cond_1
    if-eqz v0, :cond_3

    .line 186
    iput-object v2, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 187
    iget-object v3, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_2

    .line 189
    goto :goto_0

    .line 187
    :cond_2
    goto :goto_2

    .line 191
    :cond_3
    sget-object v3, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 193
    goto :goto_0

    .line 191
    :cond_4
    nop

    .line 195
    :goto_2
    move-object v1, v2

    goto :goto_1

    .line 181
    .end local v2    # "succ":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :cond_5
    nop

    .line 199
    .end local v0    # "pred":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    .end local v1    # "curr":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    return-void
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1042
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    if-ne p1, p0, :cond_0

    .line 1043
    const-string v0, "this future"

    return-object v0

    .line 1045
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 654
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    invoke-static {p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-static {p2}, Landroidx/media2/common/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 657
    .local v0, "oldHead":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    if-eq v0, v1, :cond_2

    .line 658
    new-instance v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    invoke-direct {v1, p1, p2}, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 660
    .local v1, "newNode":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    :goto_0
    iput-object v0, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->next:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 661
    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    .line 665
    sget-object v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 657
    .end local v1    # "newNode":Landroidx/media2/common/futures/AbstractResolvableFuture$Listener;
    :cond_2
    nop

    .line 669
    :goto_1
    invoke-static {p1, p2}, Landroidx/media2/common/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 670
    return-void
.end method

.method protected afterDone()V
    .locals 0

    .line 923
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    return-void
.end method

.method public final cancel(Z)Z
    .locals 10
    .param p1, "mayInterruptIfRunning"    # Z

    .line 556
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 557
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 558
    .local v1, "rValue":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    instance-of v5, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v4, v5

    if-eqz v4, :cond_a

    .line 561
    sget-boolean v4, Landroidx/media2/common/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v4, :cond_1

    new-instance v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "Future.cancel() was called."

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p1, v5}, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    goto :goto_1

    :cond_2
    sget-object v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    .line 569
    .local v4, "valueToSet":Ljava/lang/Object;
    :goto_1
    move-object v5, p0

    .line 571
    .local v5, "abstractFuture":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<*>;"
    :goto_2
    sget-object v6, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v6, v5, v0, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 572
    const/4 v1, 0x1

    .line 575
    if-eqz p1, :cond_3

    .line 576
    invoke-virtual {v5}, Landroidx/media2/common/futures/AbstractResolvableFuture;->interruptTask()V

    goto :goto_3

    .line 575
    :cond_3
    nop

    .line 578
    :goto_3
    invoke-static {v5}, Landroidx/media2/common/futures/AbstractResolvableFuture;->complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V

    .line 579
    instance-of v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v6, :cond_7

    .line 583
    move-object v6, v0

    check-cast v6, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    iget-object v6, v6, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 584
    .local v6, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v7, v6, Landroidx/media2/common/futures/AbstractResolvableFuture;

    if-eqz v7, :cond_6

    .line 593
    move-object v7, v6

    check-cast v7, Landroidx/media2/common/futures/AbstractResolvableFuture;

    .line 595
    .local v7, "trusted":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<*>;"
    iget-object v0, v7, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 596
    if-nez v0, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    instance-of v9, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v8, v9

    if-eqz v8, :cond_5

    .line 597
    move-object v5, v7

    .line 598
    goto :goto_2

    .line 596
    :cond_5
    nop

    .line 600
    .end local v7    # "trusted":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<*>;"
    goto :goto_5

    .line 602
    :cond_6
    invoke-interface {v6, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 604
    .end local v6    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :goto_5
    goto :goto_6

    .line 579
    :cond_7
    goto :goto_6

    .line 608
    :cond_8
    iget-object v0, v5, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 609
    instance-of v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v6, :cond_9

    .line 614
    goto :goto_6

    .line 609
    :cond_9
    goto :goto_2

    .line 558
    .end local v4    # "valueToSet":Ljava/lang/Object;
    .end local v5    # "abstractFuture":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<*>;"
    :cond_a
    nop

    .line 618
    :goto_6
    return v1
.end method

.method public final get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 471
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 474
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 475
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    instance-of v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 476
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 478
    :cond_2
    iget-object v3, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 479
    .local v3, "oldHead":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    sget-object v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-eq v3, v4, :cond_9

    .line 480
    new-instance v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v4}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 482
    .local v4, "node":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :goto_2
    invoke-virtual {v4, v3}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 483
    sget-object v5, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 486
    :goto_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_6

    .line 496
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 497
    if-eqz v0, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    instance-of v6, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 498
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 497
    :cond_5
    goto :goto_3

    .line 490
    :cond_6
    invoke-direct {p0, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 491
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 502
    :cond_7
    iget-object v3, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 503
    sget-object v5, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-ne v3, v5, :cond_8

    goto :goto_6

    :cond_8
    goto :goto_2

    .line 479
    .end local v4    # "node":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :cond_9
    nop

    .line 507
    :goto_6
    iget-object v1, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 472
    .end local v0    # "localValue":Ljava/lang/Object;
    .end local v3    # "oldHead":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    return-void
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 25
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 360
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 361
    .local v4, "timeoutNanos":J
    move-wide v6, v4

    .line 362
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_19

    .line 365
    iget-object v8, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 366
    .local v8, "localValue":Ljava/lang/Object;
    if-eqz v8, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    instance-of v12, v8, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    and-int/2addr v11, v12

    if-eqz v11, :cond_2

    .line 367
    invoke-direct {v0, v8}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 370
    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    add-long/2addr v13, v6

    goto :goto_2

    :cond_3
    move-wide v13, v11

    .line 372
    .local v13, "endNanos":J
    :goto_2
    const-wide/16 v15, 0x3e8

    cmp-long v17, v6, v15

    if-ltz v17, :cond_c

    .line 373
    iget-object v9, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 374
    .local v9, "oldHead":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    sget-object v10, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-eq v9, v10, :cond_b

    .line 375
    new-instance v10, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v10}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 377
    .local v10, "node":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :goto_3
    invoke-virtual {v10, v9}, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 378
    sget-object v11, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v11, v0, v9, v10}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/media2/common/futures/AbstractResolvableFuture;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 380
    :goto_4
    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 383
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-nez v11, :cond_8

    .line 390
    iget-object v8, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 391
    if-eqz v8, :cond_4

    const/4 v11, 0x1

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    :goto_5
    instance-of v12, v8, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_6

    :cond_5
    const/4 v12, 0x0

    :goto_6
    and-int/2addr v11, v12

    if-eqz v11, :cond_6

    .line 392
    invoke-direct {v0, v8}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 396
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v6, v13, v11

    .line 397
    cmp-long v11, v6, v15

    if-gez v11, :cond_7

    .line 400
    invoke-direct {v0, v10}, Landroidx/media2/common/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 401
    goto :goto_8

    .line 397
    :cond_7
    goto :goto_4

    .line 384
    :cond_8
    invoke-direct {v0, v10}, Landroidx/media2/common/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;)V

    .line 385
    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11

    .line 405
    :cond_9
    iget-object v9, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    .line 406
    sget-object v11, Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;

    if-ne v9, v11, :cond_a

    goto :goto_7

    :cond_a
    const-wide/16 v11, 0x0

    goto :goto_3

    .line 374
    .end local v10    # "node":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :cond_b
    nop

    .line 410
    :goto_7
    iget-object v10, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {v0, v10}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 372
    .end local v9    # "oldHead":Landroidx/media2/common/futures/AbstractResolvableFuture$Waiter;
    :cond_c
    nop

    .line 414
    :goto_8
    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-lez v11, :cond_11

    .line 415
    iget-object v8, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 416
    if-eqz v8, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    instance-of v10, v8, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v10, :cond_e

    const/4 v10, 0x1

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    :goto_a
    and-int/2addr v9, v10

    if-eqz v9, :cond_f

    .line 417
    invoke-direct {v0, v8}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 419
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-nez v9, :cond_10

    .line 422
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v6, v13, v9

    goto :goto_8

    .line 420
    :cond_10
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 425
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "futureToString":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, "unitString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Waited "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 430
    .local v11, "message":Ljava/lang/String;
    const-wide/16 v15, 0x3e8

    add-long v23, v6, v15

    const-wide/16 v15, 0x0

    cmp-long v12, v23, v15

    if-gez v12, :cond_17

    .line 432
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (plus "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 433
    neg-long v0, v6

    .line 434
    .local v0, "overWaitNanos":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v4

    .end local v4    # "timeoutNanos":J
    .local v15, "timeoutNanos":J
    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 435
    .local v4, "overWaitUnits":J
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    sub-long v2, v0, v23

    .line 436
    .local v2, "overWaitLeftoverNanos":J
    const-wide/16 v19, 0x0

    cmp-long v12, v4, v19

    if-eqz v12, :cond_13

    const-wide/16 v21, 0x3e8

    cmp-long v12, v2, v21

    if-lez v12, :cond_12

    goto :goto_b

    :cond_12
    const/16 v17, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/16 v17, 0x1

    :goto_c
    move/from16 v12, v17

    .line 438
    .local v12, "shouldShowExtraNanos":Z
    const-wide/16 v17, 0x0

    cmp-long v19, v4, v17

    if-lez v19, :cond_15

    .line 439
    move-wide/from16 v17, v0

    .end local v0    # "overWaitNanos":J
    .local v17, "overWaitNanos":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .end local v11    # "message":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    if-eqz v12, :cond_14

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 440
    :cond_14
    nop

    .line 443
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    .line 438
    .end local v17    # "overWaitNanos":J
    .local v0, "overWaitNanos":J
    .restart local v11    # "message":Ljava/lang/String;
    :cond_15
    move-wide/from16 v17, v0

    .line 445
    .end local v0    # "overWaitNanos":J
    .restart local v17    # "overWaitNanos":J
    :goto_e
    if-eqz v12, :cond_16

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    .line 445
    :cond_16
    nop

    .line 449
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "delay)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    .line 430
    .end local v2    # "overWaitLeftoverNanos":J
    .end local v12    # "shouldShowExtraNanos":Z
    .end local v15    # "timeoutNanos":J
    .end local v17    # "overWaitNanos":J
    .local v4, "timeoutNanos":J
    :cond_17
    move-wide v15, v4

    .line 454
    .end local v4    # "timeoutNanos":J
    .restart local v15    # "timeoutNanos":J
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 455
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_18
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    .end local v8    # "localValue":Ljava/lang/Object;
    .end local v9    # "futureToString":Ljava/lang/String;
    .end local v10    # "unitString":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v13    # "endNanos":J
    .end local v15    # "timeoutNanos":J
    .restart local v4    # "timeoutNanos":J
    :cond_19
    move-wide v15, v4

    .end local v4    # "timeoutNanos":J
    .restart local v15    # "timeoutNanos":J
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    return-void
.end method

.method protected interruptTask()V
    .locals 0

    .line 634
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    return-void
.end method

.method public final isCancelled()Z
    .locals 2

    .line 537
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 538
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    return v1
.end method

.method public final isDone()Z
    .locals 5

    .line 531
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 532
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    instance-of v4, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v1, v3

    return v1
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 931
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 932
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 931
    :cond_1
    nop

    .line 934
    :goto_1
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1011
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 1012
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v1, :cond_0

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    check-cast v2, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    iget-object v2, v2, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1014
    :cond_0
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remaining delay=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1016
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1015
    return-object v1

    .line 1019
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 686
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 687
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_0
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V

    .line 689
    const/4 v1, 0x1

    return v1

    .line 691
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 711
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    new-instance v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    invoke-static {p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 712
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V

    .line 714
    const/4 v1, 0x1

    return v1

    .line 716
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 747
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-static {p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 749
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 750
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 751
    invoke-static {p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 752
    .local v2, "value":Ljava/lang/Object;
    sget-object v5, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    invoke-static {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V

    .line 754
    return v3

    .line 756
    :cond_0
    return v1

    .line 758
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v2, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;

    invoke-direct {v2, p0, p1}, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;-><init>(Landroidx/media2/common/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 759
    .local v2, "valueToSet":Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;
    sget-object v5, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 764
    :try_start_0
    sget-object v1, Landroidx/media2/common/futures/DirectExecutor;->INSTANCE:Landroidx/media2/common/futures/DirectExecutor;

    invoke-interface {p1, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    goto :goto_1

    .line 765
    :catch_0
    move-exception v1

    .line 772
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v4, v1}, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 775
    .local v4, "failure":Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;
    goto :goto_0

    .line 773
    .end local v4    # "failure":Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;
    :catch_1
    move-exception v4

    .line 774
    .local v4, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v4, Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;->FALLBACK_INSTANCE:Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;

    .line 778
    .local v4, "failure":Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;
    :goto_0
    sget-object v5, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 780
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "failure":Landroidx/media2/common/futures/AbstractResolvableFuture$Failure;
    :goto_1
    return v3

    .line 782
    :cond_2
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    goto :goto_2

    .line 749
    .end local v2    # "valueToSet":Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;
    :cond_3
    nop

    .line 786
    :goto_2
    instance-of v2, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v2, :cond_4

    .line 788
    move-object v2, v0

    check-cast v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v2, v2, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_3

    .line 786
    :cond_4
    nop

    .line 790
    :goto_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 976
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 977
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 979
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 984
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .local v1, "pendingDescription":Ljava/lang/String;
    goto :goto_0

    .line 985
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 988
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown from implementation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "pendingDescription":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 993
    const-string v2, "PENDING, info=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 992
    :cond_2
    nop

    .line 994
    invoke-virtual {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 995
    invoke-direct {p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 997
    :cond_3
    const-string v2, "PENDING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final wasInterrupted()Z
    .locals 2

    .line 643
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 644
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v1, v1, Landroidx/media2/common/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
