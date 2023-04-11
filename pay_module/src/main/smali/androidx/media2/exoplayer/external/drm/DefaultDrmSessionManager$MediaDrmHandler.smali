.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 528
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>.MediaDrmHandler;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 529
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 530
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 534
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>.MediaDrmHandler;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 535
    .local v0, "sessionId":[B
    if-nez v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 540
    .local v2, "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->hasSessionId([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onMediaDrmEvent(I)V

    .line 542
    return-void

    .line 540
    :cond_1
    nop

    .line 544
    .end local v2    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 545
    :cond_2
    return-void
.end method
