.class public final Landroidx/media2/exoplayer/external/util/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;,
        Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    .local p0, "this":Landroidx/media2/exoplayer/external/util/EventDispatcher;, "Landroidx/media2/exoplayer/external/util/EventDispatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroidx/media2/exoplayer/external/util/EventDispatcher;, "Landroidx/media2/exoplayer/external/util/EventDispatcher<TT;>;"
    .local p2, "eventListener":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 56
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/EventDispatcher$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroidx/media2/exoplayer/external/util/EventDispatcher;, "Landroidx/media2/exoplayer/external/util/EventDispatcher<TT;>;"
    .local p1, "event":Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;, "Landroidx/media2/exoplayer/external/util/EventDispatcher$Event<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;

    .line 77
    .local v1, "handlerAndListener":Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;, "Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener<TT;>;"
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 78
    .end local v1    # "handlerAndListener":Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;, "Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener<TT;>;"
    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Landroidx/media2/exoplayer/external/util/EventDispatcher;, "Landroidx/media2/exoplayer/external/util/EventDispatcher<TT;>;"
    .local p1, "eventListener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;

    .line 63
    .local v1, "handlerAndListener":Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;, "Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener<TT;>;"
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->access$000(Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 64
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->release()V

    .line 65
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_0
    nop

    .line 67
    .end local v1    # "handlerAndListener":Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;, "Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener<TT;>;"
    :goto_1
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method
