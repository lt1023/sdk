.class Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;-><init>(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

.field final synthetic val$cur:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    .line 1700
    .local p0, "this":Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;, "Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;"
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iput p2, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->val$cur:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1704
    .local p0, "this":Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;, "Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;"
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    iget v2, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->val$cur:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/BaseResult;

    .line 1705
    .local v1, "result":Landroidx/media2/common/BaseResult;, "TT;"
    invoke-interface {v1}, Landroidx/media2/common/BaseResult;->getResultCode()I

    move-result v2

    .line 1706
    .local v2, "resultCode":I
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    .line 1708
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v4, v4, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 1709
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v4, v4, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v4, v4, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->val$cur:I

    if-eq v4, v3, :cond_0

    .line 1711
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v4, v4, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v4, v4, v3

    invoke-interface {v4, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_1

    .line 1709
    :cond_0
    nop

    .line 1708
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1714
    .end local v3    # "j":I
    :cond_1
    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    invoke-static {v3, v1}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->access$000(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;Ljava/lang/Object;)Z

    goto :goto_2

    .line 1706
    :cond_2
    nop

    .line 1716
    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 1717
    .local v3, "cnt":I
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v4, v4, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    .line 1718
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    invoke-static {v4, v1}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->access$100(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1717
    :cond_3
    nop

    .line 1729
    .end local v1    # "result":Landroidx/media2/common/BaseResult;, "TT;"
    .end local v2    # "resultCode":I
    .end local v3    # "cnt":I
    :goto_2
    goto :goto_5

    .line 1721
    :catch_0
    move-exception v1

    .line 1722
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 1723
    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->val$cur:I

    if-eq v3, v2, :cond_4

    .line 1725
    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    iget-object v3, v3, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->mFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v3, v3, v2

    invoke-interface {v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_4

    .line 1723
    :cond_4
    nop

    .line 1722
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1728
    .end local v2    # "j":I
    :cond_5
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;

    invoke-static {v0, v1}, Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;->access$200(Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;Ljava/lang/Throwable;)Z

    .line 1730
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method
