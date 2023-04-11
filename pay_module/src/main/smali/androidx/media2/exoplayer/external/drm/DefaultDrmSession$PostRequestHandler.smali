.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;
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
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0
    .param p2, "backgroundLooper"    # Landroid/os/Looper;

    .line 512
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 513
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 514
    return-void
.end method

.method private getRetryDelayMillis(I)J
    .locals 2
    .param p1, "errorCount"    # I

    .line 562
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private maybeRetryRequest(Landroid/os/Message;)Z
    .locals 6
    .param p1, "originalMsg"    # Landroid/os/Message;

    .line 547
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 548
    .local v0, "allowRetry":Z
    :goto_0
    if-nez v0, :cond_1

    .line 549
    return v1

    .line 551
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v3, v2

    .line 552
    .local v3, "errorCount":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 553
    return v1

    .line 555
    :cond_2
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 556
    .local v1, "retryMsg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 557
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->getRetryDelayMillis(I)J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 558
    return v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 524
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    .local v0, "request":Ljava/lang/Object;
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 535
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_1

    .line 532
    :pswitch_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    move-object v3, v0

    check-cast v3, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    .line 533
    .local v1, "response":Ljava/lang/Object;
    goto :goto_0

    .line 529
    .end local v1    # "response":Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    move-object v3, v0

    check-cast v3, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1

    .line 530
    .restart local v1    # "response":Ljava/lang/Object;
    nop

    .line 542
    :goto_0
    goto :goto_2

    .line 535
    .end local v1    # "response":Ljava/lang/Object;
    :goto_1
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "request":Ljava/lang/Object;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .restart local v0    # "request":Ljava/lang/Object;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->maybeRetryRequest(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    return-void

    .line 541
    :cond_0
    nop

    .line 543
    .local v1, "response":Ljava/lang/Object;
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 544
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method post(ILjava/lang/Object;Z)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "request"    # Ljava/lang/Object;
    .param p3, "allowRetry"    # Z

    .line 517
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    nop

    move v0, p3

    .line 518
    .local v0, "allowRetryInt":I
    nop

    const/4 v1, 0x0

    .line 519
    .local v1, "errorCount":I
    nop

    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 520
    nop

    return-void
.end method
