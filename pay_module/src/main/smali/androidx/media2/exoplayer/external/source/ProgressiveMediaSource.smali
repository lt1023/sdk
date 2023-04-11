.class public final Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private final extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private final loadableLoadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timelineDurationUs:J

.field private timelineIsSeekable:Z

.field private transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
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

    .line 219
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 220
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->uri:Landroid/net/Uri;

    .line 221
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 222
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 223
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 224
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->customCacheKey:Ljava/lang/String;

    .line 225
    iput p6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    .line 226
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 227
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->tag:Ljava/lang/Object;

    .line 228
    return-void
.end method

.method private notifySourceInfoRefreshed(JZ)V
    .locals 7
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z

    .line 291
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 292
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 294
    new-instance v6, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->tag:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 298
    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 13
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 249
    move-object v10, p0

    iget-object v0, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v11

    .line 250
    .local v11, "dataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    iget-object v0, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v11, v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    goto :goto_0

    .line 250
    :cond_0
    nop

    .line 253
    :goto_0
    new-instance v12, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    iget-object v1, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->uri:Landroid/net/Uri;

    iget-object v0, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 256
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media2/exoplayer/external/extractor/Extractor;

    move-result-object v3

    iget-object v4, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 258
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v5

    iget-object v8, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->customCacheKey:Ljava/lang/String;

    iget v9, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, v12

    move-object v2, v11

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;[Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;Landroidx/media2/exoplayer/external/upstream/Allocator;Ljava/lang/String;I)V

    .line 253
    return-object v12
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 233
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public onSourceInfoRefreshed(JZ)V
    .locals 3
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z

    .line 280
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 281
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    .line 283
    return-void

    .line 281
    :cond_1
    nop

    .line 285
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->notifySourceInfoRefreshed(JZ)V

    .line 286
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 238
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 239
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->notifySourceInfoRefreshed(JZ)V

    .line 240
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 267
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->release()V

    .line 268
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 0

    .line 273
    return-void
.end method
