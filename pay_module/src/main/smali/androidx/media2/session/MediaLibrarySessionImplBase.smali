.class Landroidx/media2/session/MediaLibrarySessionImplBase;
.super Landroidx/media2/session/MediaSessionImplBase;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;


# instance fields
.field private final mSubscriptions:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media2/session/MediaSession$ControllerCb;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "instance"    # Landroidx/media2/session/MediaSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p5, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p6, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroidx/media2/session/MediaSession$SessionCallback;
    .param p8, "tokenExtras"    # Landroid/os/Bundle;

    .line 55
    invoke-direct/range {p0 .. p8}, Landroidx/media2/session/MediaSessionImplBase;-><init>(Landroidx/media2/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    .line 57
    return-void
.end method

.method private ensureNonNullResult(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "returnedResult"    # Landroidx/media2/session/LibraryResult;

    .line 145
    if-eqz p1, :cond_0

    .line 148
    return-object p1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LibraryResult shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureNonNullResultWithValidItem(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "returnedResult"    # Landroidx/media2/session/LibraryResult;

    .line 175
    invoke-direct {p0, p1}, Landroidx/media2/session/MediaLibrarySessionImplBase;->ensureNonNullResult(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroidx/media2/session/LibraryResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p1}, Landroidx/media2/session/LibraryResult;->getMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->isValidItem(Landroidx/media2/common/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0

    .line 177
    :cond_0
    goto :goto_0

    .line 176
    :cond_1
    nop

    .line 181
    :goto_0
    return-object p1
.end method

.method private ensureNonNullResultWithValidList(Landroidx/media2/session/LibraryResult;I)Landroidx/media2/session/LibraryResult;
    .locals 4
    .param p1, "returnedResult"    # Landroidx/media2/session/LibraryResult;
    .param p2, "pageSize"    # I

    .line 153
    invoke-direct {p0, p1}, Landroidx/media2/session/MediaLibrarySessionImplBase;->ensureNonNullResult(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/media2/session/LibraryResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_4

    .line 155
    invoke-virtual {p1}, Landroidx/media2/session/LibraryResult;->getMediaItems()Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-eqz v0, :cond_3

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p2, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    .line 166
    .local v2, "item":Landroidx/media2/common/MediaItem;
    invoke-direct {p0, v2}, Landroidx/media2/session/MediaLibrarySessionImplBase;->isValidItem(Landroidx/media2/common/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    new-instance v1, Landroidx/media2/session/LibraryResult;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v1

    .line 166
    :cond_0
    nop

    .line 169
    .end local v2    # "item":Landroidx/media2/common/MediaItem;
    goto :goto_0

    .line 165
    :cond_1
    goto :goto_1

    .line 161
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List shouldn\'t contain items more than pageSize, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Landroidx/media2/session/LibraryResult;->getMediaItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pageSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "List shouldn\'t be null for the success"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    :cond_4
    nop

    .line 171
    :goto_1
    return-object p1
.end method

.method private isValidItem(Landroidx/media2/common/MediaItem;)Z
    .locals 3
    .param p1, "item"    # Landroidx/media2/common/MediaItem;

    .line 185
    if-eqz p1, :cond_4

    .line 188
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 193
    .local v0, "metadata":Landroidx/media2/common/MediaMetadata;
    if-eqz v0, :cond_2

    .line 197
    const-string v1, "androidx.media2.metadata.BROWSABLE"

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const-string v1, "androidx.media2.metadata.PLAYABLE"

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x1

    return v1

    .line 202
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "METADATA_KEY_PLAYABLE should be specified in metadata of an item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "METADATA_KEY_BROWSABLE should be specified in metadata of an item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Metadata of an item shouldn\'t be null for the success"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    .end local v0    # "metadata":Landroidx/media2/common/MediaMetadata;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Media ID of an item shouldn\'t be empty for the success"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Item shouldn\'t be null for the success"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method createLegacyBrowserService(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/MediaBrowserServiceCompat;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroidx/media2/session/SessionToken;
    .param p3, "sessionToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 62
    new-instance v0, Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    invoke-direct {v0, p1, p0, p3}, Landroidx/media2/session/MediaLibraryServiceLegacyStub;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-object v0
.end method

.method dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V
    .locals 2
    .param p1, "task"    # Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;

    .line 289
    invoke-super {p0, p1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 290
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getLegacyBrowserService()Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    .line 291
    .local v0, "legacyStub":Landroidx/media2/session/MediaLibraryServiceLegacyStub;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->getControllersForAll()Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroidx/media2/session/MediaLibrarySessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_0

    .line 291
    :cond_0
    nop

    .line 294
    :goto_0
    return-void
.end method

.method dumpSubscription()V
    .locals 7

    .line 310
    sget-boolean v0, Landroidx/media2/session/MediaLibrarySessionImplBase;->DEBUG:Z

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    const-string v1, "MSImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping subscription, controller sz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 316
    const-string v2, "MSImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  controller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 318
    .local v3, "parentId":Ljava/lang/String;
    const-string v4, "MSImplBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    goto :goto_1

    .line 315
    .end local v3    # "parentId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;
    .locals 1

    .line 72
    invoke-super {p0}, Landroidx/media2/session/MediaSessionImplBase;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    return-object v0
.end method

.method public bridge synthetic getCallback()Landroidx/media2/session/MediaSession$SessionCallback;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-super {p0}, Landroidx/media2/session/MediaSessionImplBase;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$ControllerInfo;>;"
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getLegacyBrowserService()Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    move-result-object v1

    .line 84
    .local v1, "legacyStub":Landroidx/media2/session/MediaLibraryServiceLegacyStub;
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroidx/media2/session/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v2

    .line 85
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 84
    :cond_0
    nop

    .line 88
    :goto_0
    return-object v0
.end method

.method public getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
    .locals 1

    .line 67
    invoke-super {p0}, Landroidx/media2/session/MediaSessionImplBase;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    return-object v0
.end method

.method public bridge synthetic getInstance()Landroidx/media2/session/MediaSession;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getLegacyBrowserService()Landroidx/media/MediaBrowserServiceCompat;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getLegacyBrowserService()Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    return-object v0
.end method

.method getLegacyBrowserService()Landroidx/media2/session/MediaLibraryServiceLegacyStub;
    .locals 1

    .line 77
    invoke-super {p0}, Landroidx/media2/session/MediaSessionImplBase;->getLegacyBrowserService()Landroidx/media/MediaBrowserServiceCompat;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    return-object v0
.end method

.method public isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 93
    invoke-super {p0, p1}, Landroidx/media2/session/MediaSessionImplBase;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getLegacyBrowserService()Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    .line 97
    .local v0, "legacyStub":Landroidx/media2/session/MediaLibraryServiceLegacyStub;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media2/session/ConnectedControllersManager;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 97
    :goto_0
    return v1
.end method

.method isSubscribed(Landroidx/media2/session/MediaSession$ControllerCb;Ljava/lang/String;)Z
    .locals 3
    .param p1, "callback"    # Landroidx/media2/session/MediaSession$ControllerCb;
    .param p2, "parentId"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 300
    .local v1, "subscriptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 303
    .end local v1    # "subscriptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v0

    .line 304
    const/4 v0, 0x1

    return v0

    .line 300
    .restart local v1    # "subscriptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    nop

    .line 301
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 303
    .end local v1    # "subscriptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyChildrenChanged(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 7
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 117
    new-instance v6, Landroidx/media2/session/MediaLibrarySessionImplBase$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaLibrarySessionImplBase$2;-><init>(Landroidx/media2/session/MediaLibrarySessionImplBase;Ljava/lang/String;Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, p1, v6}, Landroidx/media2/session/MediaLibrarySessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 131
    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 104
    new-instance v0, Landroidx/media2/session/MediaLibrarySessionImplBase$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/session/MediaLibrarySessionImplBase$1;-><init>(Landroidx/media2/session/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, v0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 112
    return-void
.end method

.method public notifySearchResultChanged(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 136
    new-instance v0, Landroidx/media2/session/MediaLibrarySessionImplBase$3;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/session/MediaLibrarySessionImplBase$3;-><init>(Landroidx/media2/session/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 142
    return-void
.end method

.method public onGetChildrenOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;
    .locals 7
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "pageSize"    # I
    .param p5, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 236
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 238
    .local v0, "result":Landroidx/media2/session/LibraryResult;
    invoke-direct {p0, v0, p4}, Landroidx/media2/session/MediaLibrarySessionImplBase;->ensureNonNullResultWithValidList(Landroidx/media2/session/LibraryResult;I)Landroidx/media2/session/LibraryResult;

    move-result-object v1

    return-object v1
.end method

.method public onGetItemOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "mediaId"    # Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onGetItem(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 230
    .local v0, "result":Landroidx/media2/session/LibraryResult;
    invoke-direct {p0, v0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->ensureNonNullResultWithValidItem(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object v1

    return-object v1
.end method

.method public onGetLibraryRootOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 217
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onGetLibraryRoot(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 218
    .local v0, "result":Landroidx/media2/session/LibraryResult;
    invoke-direct {p0, v0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->ensureNonNullResultWithValidItem(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object v1

    return-object v1
.end method

.method public onGetSearchResultOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;
    .locals 7
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "pageSize"    # I
    .param p5, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 282
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onGetSearchResult(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 284
    .local v0, "result":Landroidx/media2/session/LibraryResult;
    invoke-direct {p0, v0, p4}, Landroidx/media2/session/MediaLibrarySessionImplBase;->ensureNonNullResultWithValidList(Landroidx/media2/session/LibraryResult;I)Landroidx/media2/session/LibraryResult;

    move-result-object v1

    return-object v1
.end method

.method public onSearchOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)I
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 276
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onSearch(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)I

    move-result v0

    return v0
.end method

.method public onSubscribeOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)I
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 244
    iget-object v0, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 246
    .local v1, "subscription":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 247
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 248
    iget-object v2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_0
    nop

    .line 250
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    nop

    .end local v1    # "subscription":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onSubscribe(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)I

    move-result v0

    .line 257
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_1
    iget-object v2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 257
    :cond_1
    nop

    .line 262
    :goto_1
    return v0

    .line 251
    .end local v0    # "resultCode":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onUnsubscribeOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)I
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "parentId"    # Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onUnsubscribe(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "resultCode":I
    iget-object v1, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v1

    .line 271
    return v0

    .line 270
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
