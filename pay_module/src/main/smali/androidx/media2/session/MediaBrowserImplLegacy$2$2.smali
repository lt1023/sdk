.class Landroidx/media2/session/MediaBrowserImplLegacy$2$2;
.super Ljava/lang/Object;
.source "MediaBrowserImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaBrowserImplLegacy$2;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/session/MediaBrowserImplLegacy$2;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplLegacy$2;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/session/MediaBrowserImplLegacy$2;

    .line 200
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$2;->this$1:Landroidx/media2/session/MediaBrowserImplLegacy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 203
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplLegacy$2$2;->this$1:Landroidx/media2/session/MediaBrowserImplLegacy$2;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplLegacy$2;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v1, Landroidx/media2/session/LibraryResult;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method
