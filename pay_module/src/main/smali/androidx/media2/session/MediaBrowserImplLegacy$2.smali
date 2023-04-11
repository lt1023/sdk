.class Landroidx/media2/session/MediaBrowserImplLegacy$2;
.super Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.source "MediaBrowserImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaBrowserImplLegacy;->getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

.field final synthetic val$result:Landroidx/media2/session/futures/ResolvableFuture;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplLegacy;Landroidx/media2/session/futures/ResolvableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaBrowserImplLegacy;

    .line 182
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iput-object p2, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplLegacy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/session/MediaBrowserImplLegacy$2$2;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaBrowserImplLegacy$2$2;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2
    .param p1, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 185
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2;->this$0:Landroidx/media2/session/MediaBrowserImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplLegacy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaBrowserImplLegacy$2$1;-><init>(Landroidx/media2/session/MediaBrowserImplLegacy$2;Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method
