.class final Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;
.super Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeAtomicHelper"
.end annotation


# instance fields
.field final listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field final waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/media2/session/futures/AbstractResolvableFuture;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1103
    .local p1, "waiterThreadUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;>;"
    .local p2, "waiterNextUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;>;"
    .local p3, "waitersUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Landroidx/media2/session/futures/AbstractResolvableFuture;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;>;"
    .local p4, "listenersUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Landroidx/media2/session/futures/AbstractResolvableFuture;Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;>;"
    .local p5, "valueUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Landroidx/media2/session/futures/AbstractResolvableFuture;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;-><init>(Landroidx/media2/session/futures/AbstractResolvableFuture$1;)V

    .line 1104
    iput-object p1, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1105
    iput-object p2, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1106
    iput-object p3, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1107
    iput-object p4, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1108
    iput-object p5, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1109
    return-void
.end method


# virtual methods
.method casListeners(Landroidx/media2/session/futures/AbstractResolvableFuture;Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;
    .param p3, "update"    # Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1128
    .local p1, "future":Landroidx/media2/session/futures/AbstractResolvableFuture;, "Landroidx/media2/session/futures/AbstractResolvableFuture<*>;"
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casValue(Landroidx/media2/session/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/futures/AbstractResolvableFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1133
    .local p1, "future":Landroidx/media2/session/futures/AbstractResolvableFuture;, "Landroidx/media2/session/futures/AbstractResolvableFuture<*>;"
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casWaiters(Landroidx/media2/session/futures/AbstractResolvableFuture;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;
    .param p3, "update"    # Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            "Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1123
    .local p1, "future":Landroidx/media2/session/futures/AbstractResolvableFuture;, "Landroidx/media2/session/futures/AbstractResolvableFuture<*>;"
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method putNext(Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;)V
    .locals 1
    .param p1, "waiter"    # Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;
    .param p2, "newValue"    # Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;

    .line 1118
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    return-void
.end method

.method putThread(Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "waiter"    # Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .line 1113
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1114
    return-void
.end method
