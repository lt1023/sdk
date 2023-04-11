.class public final Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaTimeOffsetMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 314
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)V

    .line 319
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)V
    .locals 0
    .param p2, "windowIndex"    # I
    .param p3, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "mediaTimeOffsetMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            "J)V"
        }
    .end annotation

    .line 325
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 327
    iput p2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 328
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 329
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    .line 330
    return-void
.end method

.method private adjustMediaTime(J)J
    .locals 5
    .param p1, "mediaTimeUs"    # J

    .line 725
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    .line 726
    .local v0, "mediaTimeMs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method private postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 730
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 731
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    :goto_0
    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 355
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 356
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V
    .locals 14
    .param p1, "trackType"    # I
    .param p2, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mediaTimeUs"    # J

    .line 703
    move-object v0, p0

    new-instance v11, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 710
    move-wide/from16 v12, p5

    invoke-direct {p0, v12, v13}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 703
    invoke-virtual {p0, v11}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 712
    return-void
.end method

.method public downstreamFormatChanged(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 716
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 717
    .local v1, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 718
    .local v2, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;

    invoke-direct {v4, p0, v2, p1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 721
    .end local v1    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 722
    :cond_0
    return-void
.end method

.method final synthetic lambda$downstreamFormatChanged$8$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 720
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method final synthetic lambda$loadCanceled$4$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 571
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onLoadCanceled(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method final synthetic lambda$loadCompleted$3$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 507
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onLoadCompleted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method final synthetic lambda$loadError$5$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 656
    iget v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onLoadError(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method final synthetic lambda$loadStarted$2$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 443
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onLoadStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method final synthetic lambda$mediaPeriodCreated$0$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 379
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method final synthetic lambda$mediaPeriodReleased$1$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 390
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onMediaPeriodReleased(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method final synthetic lambda$readingStarted$6$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 668
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onReadingStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method final synthetic lambda$upstreamDiscarded$7$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 692
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;->onUpstreamDiscarded(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public loadCanceled(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 566
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 567
    .local v1, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 568
    .local v2, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$4;

    invoke-direct {v4, p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$4;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 572
    .end local v1    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method public loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V
    .locals 17
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "trackType"    # I
    .param p6, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "trackSelectionReason"    # I
    .param p8, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "mediaStartTimeUs"    # J
    .param p11, "mediaEndTimeUs"    # J
    .param p13, "elapsedRealtimeMs"    # J
    .param p15, "loadDurationMs"    # J
    .param p17, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    .line 551
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    new-instance v11, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v12, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 560
    move-wide/from16 v13, p9

    invoke-direct {v0, v13, v14}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 561
    move-wide/from16 v9, p11

    invoke-direct {v0, v9, v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v15

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-wide v9, v15

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 551
    invoke-virtual {v0, v11, v12}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 562
    return-void
.end method

.method public loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "elapsedRealtimeMs"    # J
    .param p7, "loadDurationMs"    # J
    .param p9, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    .line 520
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v18}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 534
    return-void
.end method

.method public loadCompleted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 503
    .local v1, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 504
    .local v2, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$3;

    invoke-direct {v4, p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$3;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 508
    .end local v1    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 509
    :cond_0
    return-void
.end method

.method public loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V
    .locals 17
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "trackType"    # I
    .param p6, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "trackSelectionReason"    # I
    .param p8, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "mediaStartTimeUs"    # J
    .param p11, "mediaEndTimeUs"    # J
    .param p13, "elapsedRealtimeMs"    # J
    .param p15, "loadDurationMs"    # J
    .param p17, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    .line 487
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    new-instance v11, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v12, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 496
    move-wide/from16 v13, p9

    invoke-direct {v0, v13, v14}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 497
    move-wide/from16 v9, p11

    invoke-direct {v0, v9, v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v15

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-wide v9, v15

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 487
    invoke-virtual {v0, v11, v12}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 498
    return-void
.end method

.method public loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V
    .locals 19
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "elapsedRealtimeMs"    # J
    .param p7, "loadDurationMs"    # J
    .param p9, "bytesLoaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ)V"
        }
    .end annotation

    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    .line 456
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v18}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 470
    return-void
.end method

.method public loadError(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 13
    .param p1, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p3, "error"    # Ljava/io/IOException;
    .param p4, "wasCanceled"    # Z

    .line 651
    move-object v7, p0

    iget-object v0, v7, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 652
    .local v9, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v10, v9, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 653
    .local v10, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v11, v9, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v12, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    invoke-direct {p0, v11, v12}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 658
    .end local v9    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v10    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method

.method public loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 17
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "trackType"    # I
    .param p6, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "trackSelectionReason"    # I
    .param p8, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "mediaStartTimeUs"    # J
    .param p11, "mediaEndTimeUs"    # J
    .param p13, "elapsedRealtimeMs"    # J
    .param p15, "loadDurationMs"    # J
    .param p17, "bytesLoaded"    # J
    .param p19, "error"    # Ljava/io/IOException;
    .param p20, "wasCanceled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    .line 627
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    new-instance v11, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v12, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 636
    move-wide/from16 v13, p9

    invoke-direct {v0, v13, v14}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 637
    move-wide/from16 v9, p11

    invoke-direct {v0, v9, v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v15

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-wide v9, v15

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 627
    move-object/from16 v1, p19

    move/from16 v2, p20

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    .line 640
    return-void
.end method

.method public loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V
    .locals 21
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "dataType"    # I
    .param p5, "elapsedRealtimeMs"    # J
    .param p7, "loadDurationMs"    # J
    .param p9, "bytesLoaded"    # J
    .param p11, "error"    # Ljava/io/IOException;
    .param p12, "wasCanceled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move/from16 v20, p12

    .line 589
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 605
    return-void
.end method

.method public loadStarted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 5
    .param p1, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p2, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 440
    .local v1, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 441
    .local v2, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$2;

    invoke-direct {v4, p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$2;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 444
    .end local v1    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v2    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method public loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V
    .locals 23
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J
    .param p11, "elapsedRealtimeMs"    # J

    .line 419
    move-object/from16 v0, p0

    new-instance v11, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;

    move-object/from16 v12, p1

    iget-object v3, v12, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 423
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide/from16 v5, p11

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 433
    move-wide/from16 v2, p7

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v19

    .line 434
    move-wide/from16 v4, p9

    invoke-direct {v0, v4, v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v21

    move-object v13, v1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v13 .. v22}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 419
    invoke-virtual {v0, v11, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 435
    return-void
.end method

.method public loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IJ)V
    .locals 13
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .line 396
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    invoke-virtual/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    .line 406
    return-void
.end method

.method public mediaPeriodCreated()V
    .locals 6

    .line 374
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 375
    .local v0, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 376
    .local v2, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 377
    .local v3, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$0;

    invoke-direct {v5, p0, v3, v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 380
    .end local v2    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method public mediaPeriodReleased()V
    .locals 6

    .line 385
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 386
    .local v0, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 387
    .local v2, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 388
    .local v3, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$1;

    invoke-direct {v5, p0, v3, v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 391
    .end local v2    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public readingStarted()V
    .locals 6

    .line 663
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 664
    .local v0, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 665
    .local v2, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 666
    .local v3, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$6;

    invoke-direct {v5, p0, v3, v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$6;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 669
    .end local v2    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 670
    :cond_0
    return-void
.end method

.method public removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V
    .locals 3
    .param p1, "eventListener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 365
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 366
    .local v1, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    if-ne v2, p1, :cond_0

    .line 367
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    :cond_0
    nop

    .line 369
    .end local v1    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    :goto_1
    goto :goto_0

    .line 370
    :cond_1
    return-void
.end method

.method public upstreamDiscarded(IJJ)V
    .locals 16
    .param p1, "trackType"    # I
    .param p2, "mediaStartTimeUs"    # J
    .param p4, "mediaEndTimeUs"    # J

    .line 674
    move-object/from16 v0, p0

    new-instance v11, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 681
    move-wide/from16 v12, p2

    invoke-direct {v0, v12, v13}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    .line 682
    move-wide/from16 v14, p4

    invoke-direct {v0, v14, v15}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move/from16 v3, p1

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 674
    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    .line 683
    return-void
.end method

.method public upstreamDiscarded(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 6
    .param p1, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 687
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 688
    .local v0, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 689
    .local v2, "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 690
    .local v3, "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v5, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$7;

    invoke-direct {v5, p0, v3, v0, p1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$7;-><init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 693
    .end local v2    # "listenerAndHandler":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    .end local v3    # "listener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    goto :goto_0

    .line 694
    :cond_0
    return-void
.end method

.method public withParameters(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaTimeOffsetMs"    # J
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 344
    new-instance v6, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)V

    return-object v6
.end method
