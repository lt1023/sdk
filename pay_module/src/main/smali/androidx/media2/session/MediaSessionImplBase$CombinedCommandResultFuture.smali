.class final Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;
.super Landroidx/media2/session/futures/AbstractResolvableFuture;
.source "MediaSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombinedCommandResultFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/common/BaseResult;",
        ">",
        "Landroidx/media2/session/futures/AbstractResolvableFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field mSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 1696
    .local p0, "this":Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;, "Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture<TT;>;"
    .local p2, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    invoke-direct {p0}, Landroidx/media2/session/futures/AbstractResolvableFuture;-><init>()V

    .line 1688
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1697
    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1698
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1699
    move v2, v0

    .line 1700
    .local v2, "cur":I
    aget-object v1, v1, v0

    new-instance v3, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;

    invoke-direct {v3, p0, v2}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;-><init>(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;I)V

    invoke-interface {v1, v3, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1698
    .end local v2    # "cur":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1733
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 1685
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 1685
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 1685
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static varargs create(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Landroidx/media2/common/BaseResult;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "[",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TU;>;)",
            "Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;"
        }
    .end annotation

    .line 1692
    .local p1, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<TU;>;"
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;-><init>(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method
