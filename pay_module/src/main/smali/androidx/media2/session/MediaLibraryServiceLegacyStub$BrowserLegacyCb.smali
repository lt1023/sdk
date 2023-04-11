.class Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;
.super Landroidx/media2/session/MediaLibraryServiceLegacyStub$BaseBrowserLegacyCb;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserLegacyCb"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field private final mSearchRequests:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaLibraryServiceLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p2, "remoteUserInfo"    # Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 531
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BaseBrowserLegacyCb;-><init>(Landroidx/media2/session/MediaLibraryServiceLegacyStub$1;)V

    .line 525
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mLock:Ljava/lang/Object;

    .line 528
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    .line 532
    iput-object p2, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 533
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 627
    if-ne p0, p1, :cond_0

    .line 628
    const/4 v0, 0x1

    return v0

    .line 630
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    .line 634
    .local v0, "other":Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v2, v0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 630
    .end local v0    # "other":Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;
    :cond_2
    :goto_0
    nop

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 622
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method onChildrenChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 539
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v2, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v1, v2, p2, v0}, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->notifyChildrenChanged(Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 540
    return-void
.end method

.method onSearchResultChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v0, "searchRequests":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;>;"
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 552
    iget-object v3, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;

    .line 553
    .local v3, "iter":Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;
    iget-object v4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v5, v3, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-static {v4, v5}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mQuery:Ljava/lang/String;

    .line 554
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 554
    :cond_0
    goto :goto_1

    .line 553
    :cond_1
    nop

    .line 551
    .end local v3    # "iter":Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 559
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 564
    monitor-exit v1

    return-void

    .line 566
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v1, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;

    invoke-direct {v2, p0, v0}, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;-><init>(Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 610
    return-void

    .line 566
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    return-void
.end method

.method registerSearchRequest(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 9
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 614
    .local p4, "result":Landroidx/media/MediaBrowserServiceCompat$Result;, "Landroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    new-instance v8, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v4

    move-object v2, v8

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;-><init>(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    monitor-exit v0

    .line 618
    return-void

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
