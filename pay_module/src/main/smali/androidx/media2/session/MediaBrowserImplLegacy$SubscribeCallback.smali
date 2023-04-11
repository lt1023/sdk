.class Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaBrowserImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaBrowserImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplLegacy;)V
    .locals 0

    .line 361
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 362
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

    .line 376
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 377
    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
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

    .line 382
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "MB2ImplLegacy"

    const-string v1, "SubscribeCallback.onChildrenLoaded(): Ignoring empty parentId"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/session/MediaBrowserImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 387
    .local v0, "browserCompat":Landroid/support/v4/media/MediaBrowserCompat;
    if-nez v0, :cond_1

    .line 389
    return-void

    .line 392
    :cond_1
    if-eqz p2, :cond_2

    .line 393
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 399
    .local v1, "itemCount":I
    iget-object v2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v2, v2, Landroidx/media2/session/MediaBrowserImplLegacy;->mContext:Landroid/content/Context;

    .line 400
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->getNotifyChildrenChangedOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 399
    invoke-static {v2, v3}, Landroidx/media2/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;

    move-result-object v2

    .line 401
    .local v2, "params":Landroidx/media2/session/MediaLibraryService$LibraryParams;
    iget-object v3, p0, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    invoke-virtual {v3}, Landroidx/media2/session/MediaBrowserImplLegacy;->getMediaBrowser()Landroidx/media2/session/MediaBrowser;

    move-result-object v3

    new-instance v4, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback$1;

    invoke-direct {v4, p0, p1, v1, v2}, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback$1;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {v3, v4}, Landroidx/media2/session/MediaBrowser;->notifyBrowserCallback(Landroidx/media2/session/MediaBrowser$BrowserCallbackRunnable;)V

    .line 408
    return-void

    .line 396
    .end local v1    # "itemCount":I
    .end local v2    # "params":Landroidx/media2/session/MediaLibraryService$LibraryParams;
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 367
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 372
    return-void
.end method
