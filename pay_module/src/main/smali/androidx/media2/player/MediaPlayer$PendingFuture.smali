.class abstract Landroidx/media2/player/MediaPlayer$PendingFuture;
.super Landroidx/media2/player/futures/AbstractResolvableFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PendingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/media2/common/SessionPlayer$PlayerResult;",
        ">",
        "Landroidx/media2/player/futures/AbstractResolvableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field mExecuteCalled:Z

.field mFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final mIsSeekTo:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 543
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;Z)V

    .line 544
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "isSeekTo"    # Z

    .line 546
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    invoke-direct {p0}, Landroidx/media2/player/futures/AbstractResolvableFuture;-><init>()V

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    .line 547
    iput-boolean p2, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mIsSeekTo:Z

    .line 548
    new-instance v0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;

    invoke-direct {v0, p0}, Landroidx/media2/player/MediaPlayer$PendingFuture$1;-><init>(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    invoke-virtual {p0, v0, p1}, Landroidx/media2/player/MediaPlayer$PendingFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 556
    return-void
.end method

.method private setResultIfFinished()V
    .locals 5

    .line 580
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    const/4 v0, 0x0

    .line 581
    .local v0, "result":Landroidx/media2/common/SessionPlayer$PlayerResult;, "TV;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 582
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/futures/ResolvableFuture;

    .line 583
    .local v2, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<TV;>;"
    invoke-virtual {v2}, Landroidx/media2/player/futures/ResolvableFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/media2/player/futures/ResolvableFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    return-void

    .line 583
    :cond_0
    nop

    .line 587
    :try_start_0
    invoke-virtual {v2}, Landroidx/media2/player/futures/ResolvableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/SessionPlayer$PlayerResult;

    move-object v0, v3

    .line 588
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$PlayerResult;->getResultCode()I

    move-result v3

    .line 589
    .local v3, "resultCode":I
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 590
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancelFutures()V

    .line 591
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    return-void

    .line 589
    :cond_1
    nop

    .line 598
    .end local v3    # "resultCode":I
    nop

    .line 581
    .end local v2    # "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<TV;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .restart local v2    # "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<TV;>;"
    :catch_0
    move-exception v3

    .line 595
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancelFutures()V

    .line 596
    invoke-virtual {p0, v3}, Landroidx/media2/player/MediaPlayer$PendingFuture;->setException(Ljava/lang/Throwable;)Z

    .line 597
    return-void

    .line 581
    .end local v2    # "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<TV;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    nop

    .line 601
    .end local v1    # "i":I
    :try_start_1
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    goto :goto_1

    .line 602
    :catch_1
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer$PendingFuture;->setException(Ljava/lang/Throwable;)Z

    .line 605
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method cancelFutures()V
    .locals 3

    .line 611
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/futures/ResolvableFuture;

    .line 612
    .local v1, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<TV;>;"
    invoke-virtual {v1}, Landroidx/media2/player/futures/ResolvableFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/media2/player/futures/ResolvableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media2/player/futures/ResolvableFuture;->cancel(Z)Z

    goto :goto_1

    .line 612
    :cond_0
    nop

    .line 615
    .end local v1    # "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<TV;>;"
    :goto_1
    goto :goto_0

    .line 616
    :cond_1
    return-void
.end method

.method public execute()Z
    .locals 2

    .line 569
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    iget-boolean v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    .line 571
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->onExecute()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    goto :goto_0

    .line 569
    :cond_0
    nop

    .line 573
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->setResultIfFinished()V

    goto :goto_1

    .line 573
    :cond_1
    nop

    .line 576
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    nop

    :cond_3
    :goto_2
    return v1
.end method

.method abstract onExecute()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z
    .locals 1
    .param p1    # Landroidx/media2/common/SessionPlayer$PlayerResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 560
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    .local p1, "value":Landroidx/media2/common/SessionPlayer$PlayerResult;, "TV;"
    invoke-super {p0, p1}, Landroidx/media2/player/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 532
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    check-cast p1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer$PendingFuture;->set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 565
    .local p0, "this":Landroidx/media2/player/MediaPlayer$PendingFuture;, "Landroidx/media2/player/MediaPlayer$PendingFuture<TV;>;"
    invoke-super {p0, p1}, Landroidx/media2/player/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
