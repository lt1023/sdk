.class Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaBrowserImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetChildrenCallback"
.end annotation


# instance fields
.field final mFuture:Landroidx/media2/session/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/session/futures/ResolvableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;"
        }
    .end annotation
.end field

.field final mParentId:Ljava/lang/String;

.field final synthetic this$0:Landroidx/media2/session/MediaBrowserImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/futures/ResolvableFuture;Ljava/lang/String;)V
    .locals 0
    .param p3, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/futures/ResolvableFuture<",
            "Landroidx/media2/session/LibraryResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 415
    .local p2, "future":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/session/LibraryResult;>;"
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    .line 416
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 417
    iput-object p2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mFuture:Landroidx/media2/session/futures/ResolvableFuture;

    .line 418
    iput-object p3, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mParentId:Ljava/lang/String;

    .line 419
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 433
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 434
    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 439
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "MB2ImplLegacy"

    const-string v1, "GetChildrenCallback.onChildrenLoaded(): Ignoring empty parentId"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 444
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_1

    .line 445
    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mFuture:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v2, Landroidx/media2/session/LibraryResult;

    const/16 v3, -0x64

    invoke-direct {v2, v3}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 446
    return-void

    .line 448
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-nez p2, :cond_2

    .line 453
    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mFuture:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v3, Landroidx/media2/session/LibraryResult;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 456
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mFuture:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v3, Landroidx/media2/session/LibraryResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Landroidx/media2/session/LibraryResult;-><init>(ILjava/util/List;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {v2, v3}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 464
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mFuture:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v1, Landroidx/media2/session/LibraryResult;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 428
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback;->mFuture:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v1, Landroidx/media2/session/LibraryResult;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method
