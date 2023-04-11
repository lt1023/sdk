.class Landroidx/media2/session/MediaBrowserImplLegacy;
.super Landroidx/media2/session/MediaControllerImplLegacy;
.source "MediaBrowserImplLegacy.java"

# interfaces
.implements Landroidx/media2/session/MediaBrowser$MediaBrowserImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;,
        Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;,
        Landroidx/media2/session/MediaBrowserImplLegacy$GetLibraryRootCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MB2ImplLegacy"


# instance fields
.field final mBrowserCompats:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            "Landroid/support/v4/media/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribeCallbacks:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaBrowser;Landroidx/media2/session/SessionToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "instance"    # Landroidx/media2/session/MediaBrowser;
    .param p3, "token"    # Landroidx/media2/session/SessionToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/session/MediaControllerImplLegacy;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;)V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    .line 68
    return-void
.end method

.method private static createBundle(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 2
    .param p0, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 301
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 302
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 301
    :cond_1
    :goto_0
    nop

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    nop

    return-object v0
.end method

.method private getBrowserCompat(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 2
    .param p1, "extras"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 295
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat;

    monitor-exit v0

    return-object v1

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getExtras(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 1
    .param p0, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 306
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 77
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat;

    .line 79
    .local v2, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 80
    .end local v2    # "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 83
    invoke-super {p0}, Landroidx/media2/session/MediaControllerImplLegacy;->close()V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method createRootMediaItem(Landroid/support/v4/media/MediaBrowserCompat;)Landroidx/media2/common/MediaItem;
    .locals 4
    .param p1, "browserCompat"    # Landroid/support/v4/media/MediaBrowserCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 312
    new-instance v0, Landroidx/media2/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$Builder;-><init>()V

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 313
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    const-string v1, "androidx.media2.metadata.BROWSABLE"

    .line 314
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    const-string v1, "androidx.media2.metadata.PLAYABLE"

    .line 315
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata$Builder;->build()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 318
    .local v0, "metadata":Landroidx/media2/common/MediaMetadata;
    new-instance v1, Landroidx/media2/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem$Builder;->build()Landroidx/media2/common/MediaItem;

    move-result-object v1

    return-object v1
.end method

.method public getChildren(Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 163
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_0

    .line 164
    const/16 v1, -0x64

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 167
    :cond_0
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v1

    .line 168
    .local v1, "future":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/LibraryResult;>;"
    invoke-static {p4}, Landroidx/media2/session/MediaBrowserImplLegacy;->createBundle(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object v2

    .line 169
    .local v2, "options":Landroid/os/Bundle;
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    new-instance v3, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;

    invoke-direct {v3, p0, v1, p1}, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/futures/ResolvableFuture;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 172
    return-object v1
.end method

.method public getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 178
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_0

    .line 179
    const/16 v1, -0x64

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 181
    :cond_0
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v1

    .line 182
    .local v1, "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/LibraryResult;>;"
    new-instance v2, Landroidx/media2/session/MediaBrowserImplLegacy$2;

    invoke-direct {v2, p0, v1}, Landroidx/media2/session/MediaBrowserImplLegacy$2;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/futures/ResolvableFuture;)V

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    .line 208
    return-object v1
.end method

.method public getLibraryRoot(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v0

    .line 90
    .local v0, "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/LibraryResult;>;"
    invoke-direct {p0, p1}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v1

    .line 91
    .local v1, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-eqz v1, :cond_0

    .line 93
    new-instance v2, Landroidx/media2/session/LibraryResult;

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Landroidx/media2/session/MediaBrowserImplLegacy;->createRootMediaItem(Landroid/support/v4/media/MediaBrowserCompat;)Landroidx/media2/common/MediaItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/session/LibraryResult;-><init>(ILandroidx/media2/common/MediaItem;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/media2/session/MediaBrowserImplLegacy$1;

    invoke-direct {v3, p0, p1, v0}, Landroidx/media2/session/MediaBrowserImplLegacy$1;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/MediaLibraryService$LibraryParams;Landroidx/media2/session/futures/ResolvableFuture;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :goto_0
    return-object v0
.end method

.method getMediaBrowser()Landroidx/media2/session/MediaBrowser;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    check-cast v0, Landroidx/media2/session/MediaBrowser;

    return-object v0
.end method

.method public getSearchResult(Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "param"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 259
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_0

    .line 260
    const/16 v1, -0x64

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 263
    :cond_0
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v1

    .line 264
    .local v1, "future":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/LibraryResult;>;"
    invoke-static {p4}, Landroidx/media2/session/MediaBrowserImplLegacy;->createBundle(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object v2

    .line 265
    .local v2, "options":Landroid/os/Bundle;
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    new-instance v3, Landroidx/media2/session/MediaBrowserImplLegacy$4;

    invoke-direct {v3, p0, v1}, Landroidx/media2/session/MediaBrowserImplLegacy$4;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/futures/ResolvableFuture;)V

    invoke-virtual {v0, p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V

    .line 291
    return-object v1
.end method

.method public search(Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 215
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_0

    .line 216
    const/16 v1, -0x64

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 218
    :cond_0
    invoke-static {p2}, Landroidx/media2/session/MediaBrowserImplLegacy;->getExtras(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/MediaBrowserImplLegacy$3;

    invoke-direct {v2, p0}, Landroidx/media2/session/MediaBrowserImplLegacy$3;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V

    .line 252
    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public subscribe(Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 119
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_0

    .line 120
    const/16 v1, -0x64

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 122
    :cond_0
    new-instance v1, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy;)V

    .line 123
    .local v1, "callback":Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;
    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v3, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;>;"
    if-nez v3, :cond_1

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 127
    iget-object v4, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    nop

    .line 129
    :goto_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    nop

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {p2}, Landroidx/media2/session/MediaBrowserImplLegacy;->getExtras(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 134
    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2

    .line 130
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public unsubscribe(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 140
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_0

    .line 141
    const/16 v1, -0x64

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 145
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 147
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;>;"
    if-nez v2, :cond_1

    .line 148
    const/4 v3, -0x3

    invoke-static {v3}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 150
    :cond_1
    nop

    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    nop

    if-ge v4, v5, :cond_2

    .line 151
    nop

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    nop

    invoke-virtual {v0, p1, v5}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 150
    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 153
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;>;"
    .end local v4    # "i":I
    nop

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 156
    nop

    invoke-static {v3}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 153
    :catchall_0
    move-exception v2

    nop

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    throw v2

    return-void
.end method
