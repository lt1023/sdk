.class Landroidx/media2/session/MediaBrowserImplLegacy$2$1;
.super Ljava/lang/Object;
.source "MediaBrowserImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaBrowserImplLegacy$2;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/session/MediaBrowserImplLegacy$2;

.field final synthetic val$item:Landroid/support/v4/media/MediaBrowserCompat$MediaItem;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplLegacy$2;Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/session/MediaBrowserImplLegacy$2;

    .line 185
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;->this$1:Landroidx/media2/session/MediaBrowserImplLegacy$2;

    iput-object p2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;->val$item:Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 188
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;->val$item:Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;->this$1:Landroidx/media2/session/MediaBrowserImplLegacy$2;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplLegacy$2;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v1, Landroidx/media2/session/LibraryResult;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;->val$item:Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 190
    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/media2/session/LibraryResult;-><init>(ILandroidx/media2/common/MediaItem;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    .line 189
    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;->this$1:Landroidx/media2/session/MediaBrowserImplLegacy$2;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplLegacy$2;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v1, Landroidx/media2/session/LibraryResult;

    const/4 v2, -0x3

    invoke-direct {v1, v2}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 194
    :goto_0
    return-void
.end method
