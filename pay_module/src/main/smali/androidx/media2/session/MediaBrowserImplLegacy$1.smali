.class Landroidx/media2/session/MediaBrowserImplLegacy$1;
.super Ljava/lang/Object;
.source "MediaBrowserImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaBrowserImplLegacy;->getLibraryRoot(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

.field final synthetic val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

.field final synthetic val$result:Landroidx/media2/session/futures/ResolvableFuture;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/MediaLibraryService$LibraryParams;Landroidx/media2/session/futures/ResolvableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaBrowserImplLegacy;

    .line 96
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iput-object p2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    iput-object p3, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 101
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-static {v0}, Landroidx/media2/session/MediaUtils;->convertToRootHints(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "rootHints":Landroid/os/Bundle;
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    invoke-virtual {v2}, Landroidx/media2/session/MediaBrowserImplLegacy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    .line 103
    invoke-virtual {v3}, Landroidx/media2/session/MediaBrowserImplLegacy;->getConnectedToken()Landroidx/media2/session/SessionToken;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/session/SessionToken;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Landroidx/media2/session/MediaBrowserImplLegacy$GetLibraryRootCallback;

    iget-object v5, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v6, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    iget-object v7, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-direct {v4, v5, v6, v7}, Landroidx/media2/session/MediaBrowserImplLegacy$GetLibraryRootCallback;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/futures/ResolvableFuture;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    .line 105
    .local v1, "newBrowser":Landroid/support/v4/media/MediaBrowserCompat;
    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v2, v2, Landroidx/media2/session/MediaBrowserImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v3, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v3, v3, Landroidx/media2/session/MediaBrowserImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    iget-object v4, p0, Landroidx/media2/session/MediaBrowserImplLegacy$1;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
