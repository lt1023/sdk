.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 486
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>.PostResponseHandler;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 488
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 493
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>.PostResponseHandler;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 494
    .local v0, "requestAndResponse":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 495
    .local v1, "request":Ljava/lang/Object;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 496
    .local v2, "response":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->access$100(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    goto :goto_0

    .line 498
    :pswitch_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->access$000(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    nop

    .line 506
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
