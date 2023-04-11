.class final Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdPrepareErrorListener"
.end annotation


# instance fields
.field private final adGroupIndex:I

.field private final adIndexInAdGroup:I

.field private final adUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroid/net/Uri;II)V
    .locals 0
    .param p2, "adUri"    # Landroid/net/Uri;
    .param p3, "adGroupIndex"    # I
    .param p4, "adIndexInAdGroup"    # I

    .line 428
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->adUri:Landroid/net/Uri;

    .line 430
    iput p3, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->adGroupIndex:I

    .line 431
    iput p4, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->adIndexInAdGroup:I

    .line 432
    return-void
.end method


# virtual methods
.method final synthetic lambda$onPrepareError$0$AdsMediaSource$AdPrepareErrorListener(Ljava/io/IOException;)V
    .locals 3
    .param p1, "exception"    # Ljava/io/IOException;

    .line 448
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->access$400(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroidx/media2/exoplayer/external/source/ads/AdsLoader;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->adGroupIndex:I

    iget v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->adIndexInAdGroup:I

    invoke-interface {v0, v1, v2, p1}, Landroidx/media2/exoplayer/external/source/ads/AdsLoader;->handlePrepareError(IILjava/io/IOException;)V

    return-void
.end method

.method public onPrepareError(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 16
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "exception"    # Ljava/io/IOException;

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->access$200(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v3

    new-instance v4, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->adUri:Landroid/net/Uri;

    invoke-direct {v4, v1}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->adUri:Landroid/net/Uri;

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 445
    invoke-static/range {p2 .. p2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;->createForAd(Ljava/lang/Exception;)Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v14

    .line 437
    const/4 v7, 0x6

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v3 .. v15}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    .line 447
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;->this$0:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->access$300(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener$$Lambda$0;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v4}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener;Ljava/io/IOException;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    return-void
.end method
