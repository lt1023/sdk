.class final Landroidx/media2/player/futures/AbstractResolvableFuture$SynchronizedHelper;
.super Landroidx/media2/player/futures/AbstractResolvableFuture$AtomicHelper;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/player/futures/AbstractResolvableFuture$AtomicHelper;-><init>(Landroidx/media2/player/futures/AbstractResolvableFuture$1;)V

    .line 1145
    return-void
.end method


# virtual methods
.method casListeners(Landroidx/media2/player/futures/AbstractResolvableFuture;Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;
    .param p3, "update"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;",
            "Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1170
    .local p1, "future":Landroidx/media2/player/futures/AbstractResolvableFuture;, "Landroidx/media2/player/futures/AbstractResolvableFuture<*>;"
    monitor-enter p1

    .line 1171
    :try_start_0
    iget-object v0, p1, Landroidx/media2/player/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;

    if-ne v0, p2, :cond_0

    .line 1172
    iput-object p3, p1, Landroidx/media2/player/futures/AbstractResolvableFuture;->listeners:Landroidx/media2/player/futures/AbstractResolvableFuture$Listener;

    .line 1173
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1175
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casValue(Landroidx/media2/player/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/futures/AbstractResolvableFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1181
    .local p1, "future":Landroidx/media2/player/futures/AbstractResolvableFuture;, "Landroidx/media2/player/futures/AbstractResolvableFuture<*>;"
    monitor-enter p1

    .line 1182
    :try_start_0
    iget-object v0, p1, Landroidx/media2/player/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1183
    iput-object p3, p1, Landroidx/media2/player/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 1184
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1186
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1187
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casWaiters(Landroidx/media2/player/futures/AbstractResolvableFuture;Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;
    .param p3, "update"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;",
            "Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1159
    .local p1, "future":Landroidx/media2/player/futures/AbstractResolvableFuture;, "Landroidx/media2/player/futures/AbstractResolvableFuture<*>;"
    monitor-enter p1

    .line 1160
    :try_start_0
    iget-object v0, p1, Landroidx/media2/player/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;

    if-ne v0, p2, :cond_0

    .line 1161
    iput-object p3, p1, Landroidx/media2/player/futures/AbstractResolvableFuture;->waiters:Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;

    .line 1162
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1164
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putNext(Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;)V
    .locals 0
    .param p1, "waiter"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;
    .param p2, "newValue"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;

    .line 1154
    iput-object p2, p1, Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;

    .line 1155
    return-void
.end method

.method putThread(Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "waiter"    # Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .line 1149
    iput-object p2, p1, Landroidx/media2/player/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 1150
    return-void
.end method
