.class Landroidx/media2/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNullAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/VideoView;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/VideoView;

    .line 621
    iput-object p1, p0, Landroidx/media2/widget/VideoView$3;->this$0:Landroidx/media2/widget/VideoView;

    iput-object p2, p0, Landroidx/media2/widget/VideoView$3;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 625
    :try_start_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView$3;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/BaseResult;

    invoke-interface {v0}, Landroidx/media2/common/BaseResult;->getResultCode()I

    move-result v0

    .line 626
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    .line 627
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling setSurface(null) was not successful. ResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :cond_0
    nop

    .line 632
    .end local v0    # "resultCode":I
    :goto_0
    goto :goto_2

    .line 630
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "VideoView"

    const-string v2, "calling setSurface(null) was not successful."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
