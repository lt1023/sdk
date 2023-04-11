.class Landroidx/media2/session/MediaBrowserImplLegacy$4;
.super Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaBrowserImplLegacy;->getSearchResult(Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

.field final synthetic val$future:Landroidx/media2/session/futures/ResolvableFuture;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/futures/ResolvableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaBrowserImplLegacy;

    .line 267
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$4;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iput-object p2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$4;->val$future:Landroidx/media2/session/futures/ResolvableFuture;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extrasSent"    # Landroid/os/Bundle;

    .line 283
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$4;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplLegacy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/session/MediaBrowserImplLegacy$4$2;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaBrowserImplLegacy$4$2;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extrasSent"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$4;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplLegacy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/session/MediaBrowserImplLegacy$4$1;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/MediaBrowserImplLegacy$4$1;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method
