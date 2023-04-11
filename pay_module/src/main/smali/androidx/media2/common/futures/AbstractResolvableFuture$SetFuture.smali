.class final Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Landroidx/media2/common/futures/AbstractResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/common/futures/AbstractResolvableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/common/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/futures/AbstractResolvableFuture<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture<TV;>;"
    .local p1, "owner":Landroidx/media2/common/futures/AbstractResolvableFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture<TV;>;"
    .local p2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/common/futures/AbstractResolvableFuture;

    .line 270
    iput-object p2, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 271
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 275
    .local p0, "this":Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture<TV;>;"
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/common/futures/AbstractResolvableFuture;

    iget-object v0, v0, Landroidx/media2/common/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/media2/common/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Landroidx/media2/common/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;

    iget-object v2, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/common/futures/AbstractResolvableFuture;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/media2/common/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/common/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Landroidx/media2/common/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/common/futures/AbstractResolvableFuture;

    invoke-static {v1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->complete(Landroidx/media2/common/futures/AbstractResolvableFuture;)V

    goto :goto_0

    .line 280
    :cond_1
    nop

    .line 283
    :goto_0
    return-void
.end method
