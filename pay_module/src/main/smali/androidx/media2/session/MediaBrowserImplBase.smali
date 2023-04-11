.class Landroidx/media2/session/MediaBrowserImplBase;
.super Landroidx/media2/session/MediaControllerImplBase;
.source "MediaBrowserImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaBrowser$MediaBrowserImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;
    }
.end annotation


# static fields
.field private static final RESULT_WHEN_CLOSED:Landroidx/media2/session/LibraryResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    sput-object v0, Landroidx/media2/session/MediaBrowserImplBase;->RESULT_WHEN_CLOSED:Landroidx/media2/session/LibraryResult;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Landroidx/media2/session/MediaController;
    .param p3, "token"    # Landroidx/media2/session/SessionToken;
    .param p4, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/session/MediaControllerImplBase;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method private dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "commandCode"    # I
    .param p2, "task"    # Landroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaBrowserImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/session/IMediaSession;

    move-result-object v0

    .line 172
    .local v0, "iSession":Landroidx/media2/session/IMediaSession;
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplBase;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    sget-object v2, Landroidx/media2/session/MediaBrowserImplBase;->RESULT_WHEN_CLOSED:Landroidx/media2/session/LibraryResult;

    .line 174
    invoke-virtual {v1, v2}, Landroidx/media2/session/SequencedFutureManager;->createSequencedFuture(Ljava/lang/Object;)Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    move-result-object v1

    .line 176
    .local v1, "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<Landroidx/media2/session/LibraryResult;>;"
    :try_start_0
    invoke-virtual {v1}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v2

    invoke-interface {p2, v0, v2}, Landroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;->run(Landroidx/media2/session/IMediaSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MC2ImplBase"

    const-string v4, "Cannot connect to the service or the session is gone"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    new-instance v3, Landroidx/media2/session/LibraryResult;

    const/16 v4, -0x64

    invoke-direct {v3, v4}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->set(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 186
    .end local v1    # "result":Landroidx/media2/session/SequencedFutureManager$SequencedFuture;, "Landroidx/media2/session/SequencedFutureManager$SequencedFuture<Landroidx/media2/session/LibraryResult;>;"
    :cond_0
    const/4 v1, -0x4

    invoke-static {v1}, Landroidx/media2/session/LibraryResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getChildren(Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
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

    .line 102
    new-instance v6, Landroidx/media2/session/MediaBrowserImplBase$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaBrowserImplBase$4;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    const v0, 0xc353

    invoke-direct {p0, v0, v6}, Landroidx/media2/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
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

    .line 114
    new-instance v0, Landroidx/media2/session/MediaBrowserImplBase$5;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaBrowserImplBase$5;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;)V

    const v1, 0xc354

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryRoot(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
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

    .line 65
    new-instance v0, Landroidx/media2/session/MediaBrowserImplBase$1;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaBrowserImplBase$1;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    const v1, 0xc350

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method getMediaBrowser()Landroidx/media2/session/MediaBrowser;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 60
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplBase;->mInstance:Landroidx/media2/session/MediaController;

    check-cast v0, Landroidx/media2/session/MediaBrowser;

    return-object v0
.end method

.method public getSearchResult(Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
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

    .line 138
    new-instance v6, Landroidx/media2/session/MediaBrowserImplBase$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaBrowserImplBase$7;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    const v0, 0xc356

    invoke-direct {p0, v0, v6}, Landroidx/media2/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method notifyChildrenChanged(Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "libraryParams"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 161
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplBase;->getMediaBrowser()Landroidx/media2/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media2/session/MediaBrowserImplBase$9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/session/MediaBrowserImplBase$9;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaBrowser;->notifyBrowserCallback(Landroidx/media2/session/MediaBrowser$BrowserCallbackRunnable;)V

    .line 167
    return-void
.end method

.method notifySearchResultChanged(Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "libraryParams"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 151
    invoke-virtual {p0}, Landroidx/media2/session/MediaBrowserImplBase;->getMediaBrowser()Landroidx/media2/session/MediaBrowser;

    move-result-object v0

    new-instance v1, Landroidx/media2/session/MediaBrowserImplBase$8;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/session/MediaBrowserImplBase$8;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaBrowser;->notifyBrowserCallback(Landroidx/media2/session/MediaBrowser$BrowserCallbackRunnable;)V

    .line 157
    return-void
.end method

.method public search(Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
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

    .line 125
    new-instance v0, Landroidx/media2/session/MediaBrowserImplBase$6;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaBrowserImplBase$6;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    const v1, 0xc355

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
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

    .line 78
    new-instance v0, Landroidx/media2/session/MediaBrowserImplBase$2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaBrowserImplBase$2;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    const v1, 0xc351

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
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

    .line 90
    new-instance v0, Landroidx/media2/session/MediaBrowserImplBase$3;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaBrowserImplBase$3;-><init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;)V

    const v1, 0xc352

    invoke-direct {p0, v1, v0}, Landroidx/media2/session/MediaBrowserImplBase;->dispatchRemoteLibrarySessionTask(ILandroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
