.class final Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Waiter"
.end annotation


# static fields
.field static final TOMBSTONE:Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;


# instance fields
.field volatile next:Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile thread:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 122
    new-instance v0, Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;-><init>(Z)V

    sput-object v0, Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Landroidx/media2/player/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/player/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/media2/player/futures/AbstractResolvableFuture$AtomicHelper;->putThread(Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;)V

    .line 139
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "unused"    # Z

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method


# virtual methods
.method setNext(Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;)V
    .locals 1
    .param p1, "next"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;

    .line 144
    sget-object v0, Landroidx/media2/player/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/player/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v0, p0, p1}, Landroidx/media2/player/futures/AbstractResolvableFuture$AtomicHelper;->putNext(Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;)V

    .line 145
    return-void
.end method

.method unpark()V
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 153
    .local v0, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 155
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    .line 153
    :cond_0
    nop

    .line 157
    :goto_0
    return-void
.end method
