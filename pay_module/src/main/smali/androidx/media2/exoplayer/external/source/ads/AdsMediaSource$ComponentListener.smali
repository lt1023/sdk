.class final Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final playerHandler:Landroid/os/Handler;

.field private volatile released:Z

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)V
    .locals 0

    .line 379
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    .line 381
    return-void
.end method


# virtual methods
.method final synthetic lambda$onAdPlaybackState$0$AdsMediaSource$ComponentListener(Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V
    .locals 1
    .param p1, "adPlaybackState"    # Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 396
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->access$100(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V

    .line 400
    return-void
.end method

.method public onAdClicked()V
    .locals 0

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/ads/AdsLoader$EventListener$$CC;->onAdClicked$$dflt$$(Landroidx/media2/exoplayer/external/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public onAdLoadError(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V
    .locals 16
    .param p1, "error"    # Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 405
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v1, :cond_0

    .line 406
    return-void

    .line 408
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->access$000(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v3

    move-object/from16 v1, p2

    iget-object v5, v1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 412
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x6

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    .line 409
    move-object/from16 v4, p2

    move-object/from16 v14, p1

    invoke-virtual/range {v3 .. v15}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    .line 419
    return-void
.end method

.method public onAdPlaybackState(Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V
    .locals 2
    .param p1, "adPlaybackState"    # Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 391
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->released:Z

    if-eqz v0, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method

.method public onAdTapped()V
    .locals 0

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/ads/AdsLoader$EventListener$$CC;->onAdTapped$$dflt$$(Landroidx/media2/exoplayer/external/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->released:Z

    .line 386
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 387
    return-void
.end method
