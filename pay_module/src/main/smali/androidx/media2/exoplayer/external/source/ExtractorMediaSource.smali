.class public final Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "ExtractorMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListenerWrapper;,
        Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;,
        Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "extractorsFactory"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "eventListener"    # Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "extractorsFactory"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "eventListener"    # Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "customCacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    const/high16 v7, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "extractorsFactory"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "eventListener"    # Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "customCacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "continueLoadingCheckIntervalBytes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    new-instance v4, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    .line 319
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 320
    new-instance v0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListenerWrapper;

    invoke-direct {v0, p5}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListenerWrapper;-><init>(Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;)V

    invoke-virtual {p0, p4, v0}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    goto :goto_0

    .line 319
    :cond_0
    nop

    .line 322
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "extractorsFactory"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;
    .param p4, "loadableLoadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p5, "customCacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "continueLoadingCheckIntervalBytes"    # I
    .param p7, "tag"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 331
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 332
    new-instance v8, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v8, v0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "x2"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;
    .param p4, "x3"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$1;

    .line 46
    invoke-direct/range {p0 .. p7}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 1
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 361
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 346
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 357
    return-void
.end method

.method public onSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p3, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 377
    invoke-virtual {p0, p2, p3}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 351
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 352
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 366
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 367
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    .line 372
    return-void
.end method
