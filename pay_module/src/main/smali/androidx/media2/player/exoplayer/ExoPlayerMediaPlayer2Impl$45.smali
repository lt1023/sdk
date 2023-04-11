.class Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;
.super Ljava/lang/Object;
.source "ExoPlayerMediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->runPlayerCallableBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$future:Landroidx/media2/player/futures/ResolvableFuture;


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/player/futures/ResolvableFuture;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    .line 827
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;->val$future:Landroidx/media2/player/futures/ResolvableFuture;

    iput-object p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 831
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;->val$future:Landroidx/media2/player/futures/ResolvableFuture;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$45;->val$future:Landroidx/media2/player/futures/ResolvableFuture;

    invoke-virtual {v1, v0}, Landroidx/media2/player/futures/ResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 835
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
