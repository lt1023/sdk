.class Landroidx/media2/player/MediaPlayer$28;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->prepareDrm(Ljava/util/UUID;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/player/MediaPlayer$PendingFuture<",
        "Landroidx/media2/player/MediaPlayer$DrmResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Ljava/util/UUID;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2470
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$28;->this$0:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$28;->val$uuid:Ljava/util/UUID;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/player/MediaPlayer$DrmResult;",
            ">;>;"
        }
    .end annotation

    .line 2473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/player/MediaPlayer$DrmResult;>;>;"
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    .line 2475
    .local v1, "future":Landroidx/media2/player/futures/ResolvableFuture;, "Landroidx/media2/player/futures/ResolvableFuture<Landroidx/media2/player/MediaPlayer$DrmResult;>;"
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$28;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 2476
    :try_start_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$28;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$28;->val$uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer2;->prepareDrm(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v3

    .line 2477
    .local v3, "token":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$28;->this$0:Landroidx/media2/player/MediaPlayer;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2478
    .end local v3    # "token":Ljava/lang/Object;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2479
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
    return-object v0

    .line 2478
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
