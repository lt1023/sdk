.class final Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# static fields
.field static final TOMBSTONE:Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field next:Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 203
    new-instance v0, Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;->task:Ljava/lang/Runnable;

    .line 213
    iput-object p2, p0, Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    .line 214
    return-void
.end method
