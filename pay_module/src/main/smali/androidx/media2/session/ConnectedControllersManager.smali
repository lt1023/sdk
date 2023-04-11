.class Landroidx/media2/session/ConnectedControllersManager;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;
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


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MS2ControllerMgr"


# instance fields
.field private final mControllerInfoMap:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "TT;",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mControllerRecords:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Landroidx/media2/session/ConnectedControllersManager<",
            "TT;>.ConnectedControllerRecord;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, "MS2ControllerMgr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/ConnectedControllersManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 48
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerInfoMap:Landroidx/collection/ArrayMap;

    .line 41
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    .line 49
    iput-object p1, p0, Landroidx/media2/session/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 50
    return-void
.end method


# virtual methods
.method public addController(Ljava/lang/Object;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 5
    .param p2, "controllerInfo"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p3, "commands"    # Landroidx/media2/session/SessionCommandGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Landroidx/media2/session/SessionCommandGroup;",
            ")V"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media2/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v1

    .line 63
    .local v1, "savedInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    if-nez v1, :cond_1

    .line 64
    iget-object v2, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    new-instance v3, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    new-instance v4, Landroidx/media2/session/SequencedFutureManager;

    invoke-direct {v4}, Landroidx/media2/session/SequencedFutureManager;-><init>()V

    invoke-direct {v3, p0, p1, v4, p3}, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;-><init>(Landroidx/media2/session/ConnectedControllersManager;Ljava/lang/Object;Landroidx/media2/session/SequencedFutureManager;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v2, p2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 70
    .local v2, "record":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    iput-object p3, v2, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->allowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 72
    .end local v1    # "savedInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    .end local v2    # "record":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    :goto_0
    monitor-exit v0

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_2
    :goto_1
    nop

    .line 55
    sget-boolean v0, Landroidx/media2/session/ConnectedControllersManager;->DEBUG:Z

    if-nez v0, :cond_3

    .line 59
    return-void

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "controllerKey and controllerInfo shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getConnectedControllers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 128
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/session/MediaSession$ControllerInfo;>;"
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    monitor-exit v1

    .line 132
    return-object v0

    .line 131
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media2/session/MediaSession$ControllerInfo;"
        }
    .end annotation

    .line 191
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/MediaSession$ControllerInfo;

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSequencedFutureManager(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SequencedFutureManager;
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 152
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 154
    .local v1, "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 154
    .end local v1    # "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media2/session/SequencedFutureManager;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media2/session/SequencedFutureManager;"
        }
    .end annotation

    .line 167
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/media2/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 169
    .local v1, "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 169
    .end local v1    # "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;I)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "commandCode"    # I

    .line 184
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 186
    .local v1, "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->allowedCommands:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {v0, p2}, Landroidx/media2/session/SessionCommandGroup;->hasCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 186
    .end local v1    # "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "command"    # Landroidx/media2/session/SessionCommand;

    .line 175
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 177
    .local v1, "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->allowedCommands:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {v0, p2}, Landroidx/media2/session/SessionCommandGroup;->hasCommand(Landroidx/media2/session/SessionCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 177
    .end local v1    # "info":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 136
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeController(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 4
    .param p1, "controllerInfo"    # Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 99
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    if-nez p1, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 105
    .local v1, "record":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    if-nez v1, :cond_1

    .line 106
    monitor-exit v0

    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerInfoMap:Landroidx/collection/ArrayMap;

    iget-object v3, v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    sget-boolean v0, Landroidx/media2/session/ConnectedControllersManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "MS2ControllerMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    nop

    .line 114
    :goto_0
    iget-object v0, v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    invoke-virtual {v0}, Landroidx/media2/session/SequencedFutureManager;->close()V

    .line 115
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroidx/media2/session/ConnectedControllersManager$1;

    invoke-direct {v2, p0, p1}, Landroidx/media2/session/ConnectedControllersManager$1;-><init>(Landroidx/media2/session/ConnectedControllersManager;Landroidx/media2/session/MediaSession$ControllerInfo;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void

    .line 109
    .end local v1    # "record":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeController(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/session/ConnectedControllersManager;->removeController(Landroidx/media2/session/MediaSession$ControllerInfo;)V

    .line 96
    return-void
.end method

.method public updateAllowedCommands(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;

    .line 78
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager;, "Landroidx/media2/session/ConnectedControllersManager<TT;>;"
    if-nez p1, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/ConnectedControllersManager;->mControllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 83
    .local v1, "record":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    if-eqz v1, :cond_1

    .line 84
    iput-object p2, v1, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->allowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 85
    monitor-exit v0

    return-void

    .line 83
    :cond_1
    nop

    .line 87
    .end local v1    # "record":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    monitor-exit v0

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
