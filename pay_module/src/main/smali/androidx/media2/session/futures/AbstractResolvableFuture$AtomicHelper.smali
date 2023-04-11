.class abstract Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/session/futures/AbstractResolvableFuture$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/session/futures/AbstractResolvableFuture$1;

    .line 1067
    invoke-direct {p0}, Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract casListeners(Landroidx/media2/session/futures/AbstractResolvableFuture;Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;Landroidx/media2/session/futures/AbstractResolvableFuture$Listener;)Z
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
.end method

.method abstract casValue(Landroidx/media2/session/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
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
.end method

.method abstract casWaiters(Landroidx/media2/session/futures/AbstractResolvableFuture;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;)Z
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
.end method

.method abstract putNext(Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;)V
.end method

.method abstract putThread(Landroidx/media2/session/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;)V
.end method
