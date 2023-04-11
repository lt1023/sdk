.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "HlsMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final allowChunklessPreparation:Z

.field private final compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

.field private final extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final manifestUri:Landroid/net/Uri;

.field private mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field private final tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final useSessionKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "goog.exo.hls"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V
    .locals 0
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;
    .param p3, "extractorFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;
    .param p4, "compositeSequenceableLoaderFactory"    # Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;
    .param p5, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p6, "playlistTracker"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
    .param p7, "allowChunklessPreparation"    # Z
    .param p8, "useSessionKeys"    # Z
    .param p9, "tag"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 325
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 326
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 327
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    .line 328
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 329
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 330
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 331
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 332
    iput-boolean p7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    .line 333
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->useSessionKeys:Z

    .line 334
    iput-object p9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->tag:Ljava/lang/Object;

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;
    .param p3, "x2"    # Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;
    .param p4, "x3"    # Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;
    .param p5, "x4"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p6, "x5"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Ljava/lang/Object;
    .param p10, "x9"    # Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$1;

    .line 59
    invoke-direct/range {p0 .. p9}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 14
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 357
    move-object v0, p0

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v12

    .line 358
    .local v12, "eventDispatcher":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->useSessionKeys:Z

    move-object v1, v13

    move-object v7, v12

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v11}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;ZZ)V

    return-object v13
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 340
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    .line 353
    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 32
    .param p1, "playlist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    .line 385
    :cond_0
    move-wide v10, v3

    :goto_0
    nop

    .line 390
    .local v10, "windowStartTimeMs":J
    iget v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    iget v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    if-ne v2, v6, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    move-wide v8, v3

    goto :goto_2

    .line 390
    :cond_2
    :goto_1
    nop

    .line 391
    move-wide v8, v10

    .line 392
    :goto_2
    nop

    .line 393
    .local v8, "presentationStartTimeMs":J
    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 394
    .local v14, "windowDefaultStartPositionUs":J
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 396
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v16

    sub-long v23, v12, v16

    .line 398
    .local v23, "offsetFromInitialStartTimeUs":J
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_3

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v12, v23, v12

    goto :goto_3

    :cond_3
    move-wide v12, v3

    .line 399
    .local v12, "periodDurationUs":J
    :goto_3
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 400
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    cmp-long v5, v14, v3

    if-nez v5, :cond_5

    .line 401
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x0

    goto :goto_4

    .line 402
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    :goto_4
    goto :goto_5

    .line 400
    :cond_5
    move-wide v3, v14

    .line 404
    .end local v14    # "windowDefaultStartPositionUs":J
    .local v3, "windowDefaultStartPositionUs":J
    :goto_5
    new-instance v5, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const/16 v20, 0x1

    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 v21, v7, 0x1

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->tag:Ljava/lang/Object;

    move-object v7, v5

    move-wide/from16 v16, v23

    move-wide/from16 v18, v3

    move-object/from16 v22, v6

    invoke-direct/range {v7 .. v22}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    move-object v2, v5

    .line 415
    .end local v12    # "periodDurationUs":J
    .end local v23    # "offsetFromInitialStartTimeUs":J
    .local v2, "timeline":Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;
    move-wide v14, v3

    goto :goto_7

    .line 416
    .end local v2    # "timeline":Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;
    .end local v3    # "windowDefaultStartPositionUs":J
    .restart local v14    # "windowDefaultStartPositionUs":J
    :cond_6
    cmp-long v2, v14, v3

    if-nez v2, :cond_7

    .line 417
    const-wide/16 v14, 0x0

    goto :goto_6

    .line 416
    :cond_7
    nop

    .line 419
    :goto_6
    new-instance v2, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const-wide/16 v25, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->tag:Ljava/lang/Object;

    move-object/from16 v16, v2

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    move-wide/from16 v27, v14

    move-object/from16 v31, v7

    invoke-direct/range {v16 .. v31}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 431
    .restart local v2    # "timeline":Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;
    :goto_7
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/HlsManifest;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsManifest;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 345
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    .line 347
    .local v0, "eventDispatcher":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->start(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    .line 348
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 373
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->release()V

    .line 374
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 1

    .line 378
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 379
    return-void
.end method
