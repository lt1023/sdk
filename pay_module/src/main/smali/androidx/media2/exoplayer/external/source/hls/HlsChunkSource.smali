.class Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# static fields
.field private static final KEY_CACHE_SIZE:I = 0x4


# instance fields
.field private final encryptionDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private expectedPlaylistUrl:Landroid/net/Uri;

.field private final extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;

.field private independentSegments:Z

.field private isTimestampMaster:Z

.field private final keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

.field private liveEdgeInPeriodTimeUs:J

.field private final mediaDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistFormats:[Landroidx/media2/exoplayer/external/Format;

.field private final playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field private final playlistUrls:[Landroid/net/Uri;

.field private scratchSpace:[B

.field private seenExpectedPlaylistError:Z

.field private final timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field private trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V
    .locals 3
    .param p1, "extractorFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
    .param p3, "playlistUrls"    # [Landroid/net/Uri;
    .param p4, "playlistFormats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p5, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;
    .param p6, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "timestampAdjusterProvider"    # Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;",
            "Landroidx/media2/exoplayer/external/upstream/TransferListener;",
            "Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p8, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 149
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 150
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 151
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistFormats:[Landroidx/media2/exoplayer/external/Format;

    .line 152
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    .line 153
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 154
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    .line 155
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 156
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->mediaDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 157
    if-eqz p6, :cond_0

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->mediaDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p6}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    goto :goto_0

    .line 157
    :cond_0
    nop

    .line 160
    :goto_0
    const/4 v0, 0x3

    invoke-interface {p5, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 161
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, p4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 162
    array-length v0, p3

    new-array v0, v0, [I

    .line 163
    .local v0, "initialTrackSelection":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 164
    aput v1, v0, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 167
    return-void
.end method

.method private getChunkMediaSequence(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;ZLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JJ)J
    .locals 13
    .param p1, "previous"    # Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "switchingTrack"    # Z
    .param p3, "mediaPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .param p4, "startOfPlaylistInPeriodUs"    # J
    .param p6, "loadPositionUs"    # J

    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v3

    return-wide v3

    .line 466
    :cond_1
    :goto_0
    nop

    .line 467
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v3, p4, v3

    .line 469
    .local v3, "endOfPlaylistInPeriodUs":J
    if-eqz v1, :cond_3

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->independentSegments:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    goto :goto_2

    :cond_3
    :goto_1
    move-wide/from16 v5, p6

    .line 470
    .local v5, "targetPositionInPeriodUs":J
    :goto_2
    iget-boolean v7, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v7, :cond_4

    cmp-long v7, v5, v3

    if-ltz v7, :cond_4

    .line 472
    iget-wide v7, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v9, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    return-wide v7

    .line 470
    :cond_4
    nop

    .line 474
    sub-long v7, v5, p4

    .line 475
    .local v7, "targetPositionInPlaylistUs":J
    iget-object v9, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 477
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 479
    invoke-interface {v11}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v11, 0x1

    .line 475
    :goto_4
    invoke-static {v9, v10, v12, v11}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v9

    int-to-long v9, v9

    iget-wide v11, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    add-long/2addr v9, v11

    return-wide v9
.end method

.method private static getFullEncryptionKeyUri(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;)Landroid/net/Uri;
    .locals 2
    .param p0, "playlist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .param p1, "segment"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 525
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 525
    :cond_1
    :goto_0
    nop

    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeCreateEncryptionChunkFor(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .locals 11
    .param p1, "keyUri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selectedTrackIndex"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 503
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 504
    return-object v0

    .line 506
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, p1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    .line 511
    return-object v0

    .line 513
    :cond_1
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v5, v0

    .line 514
    .local v5, "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistFormats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v6, v1, p2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 518
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionReason()I

    move-result v7

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 519
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    .line 514
    return-object v0
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 5
    .param p1, "playbackPositionUs"    # J

    .line 488
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 489
    .local v0, "resolveTimeToLiveEdgePossible":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 490
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    sub-long/2addr v1, p1

    goto :goto_1

    .line 491
    :cond_1
    move-wide v1, v2

    .line 489
    :goto_1
    return-wide v1
.end method

.method private updateLiveEdgeTimeUs(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 4
    .param p1, "mediaPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 495
    nop

    .line 496
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_0

    .line 497
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 499
    return-void
.end method


# virtual methods
.method public createMediaChunkIterators(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;J)[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .locals 16
    .param p1, "previous"    # Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "loadPositionUs"    # J

    .line 418
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    :goto_0
    move v10, v0

    .line 419
    .local v10, "oldTrackIndex":I
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v0

    new-array v11, v0, [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    .line 420
    .local v11, "chunkIterators":[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1
    array-length v0, v11

    if-ge v12, v0, :cond_4

    .line 421
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v0, v12}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v13

    .line 422
    .local v13, "trackIndex":I
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v14, v0, v13

    .line 423
    .local v14, "playlistUrl":Landroid/net/Uri;
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v14}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    sget-object v0, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    aput-object v0, v11, v12

    .line 425
    goto :goto_3

    .line 427
    :cond_1
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 428
    const/4 v1, 0x0

    invoke-interface {v0, v14, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v15

    .line 429
    .local v15, "playlist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    iget-wide v2, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 430
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long v6, v2, v4

    .line 431
    .local v6, "startOfPlaylistInPeriodUs":J
    if-eq v13, v10, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 432
    .local v2, "switchingTrack":Z
    :goto_2
    nop

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide v8, v6

    .end local v6    # "startOfPlaylistInPeriodUs":J
    .local v8, "startOfPlaylistInPeriodUs":J
    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getChunkMediaSequence(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;ZLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    .line 435
    .local v0, "chunkMediaSequence":J
    iget-wide v3, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    .line 436
    sget-object v3, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    aput-object v3, v11, v12

    .line 437
    goto :goto_3

    .line 439
    :cond_3
    iget-wide v3, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v3, v0, v3

    long-to-int v4, v3

    .line 440
    .local v4, "chunkIndex":I
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    invoke-direct {v3, v15, v8, v9, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JI)V

    aput-object v3, v11, v12

    .line 420
    .end local v0    # "chunkMediaSequence":J
    .end local v2    # "switchingTrack":Z
    .end local v4    # "chunkIndex":I
    .end local v8    # "startOfPlaylistInPeriodUs":J
    .end local v13    # "trackIndex":I
    .end local v14    # "playlistUrl":Landroid/net/Uri;
    .end local v15    # "playlist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    goto :goto_1

    .line 443
    .end local v12    # "i":I
    :cond_4
    return-object v11
.end method

.method public getNextChunk(JJLjava/util/List;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 41
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadPositionUs"    # J
    .param p6, "out"    # Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;",
            ">;",
            "Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    .line 242
    .local p5, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;>;"
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v11, p6

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    move-object/from16 v6, p5

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    move-object/from16 v6, p5

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    :goto_0
    move-object v7, v0

    .line 243
    .local v7, "previous":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    if-nez v7, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v7, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    :goto_1
    move v4, v0

    .line 244
    .local v4, "oldTrackIndex":I
    sub-long v0, v9, p1

    .line 245
    .local v0, "bufferedDurationUs":J
    invoke-direct/range {p0 .. p2}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v2

    .line 246
    .local v2, "timeToLiveEdgeUs":J
    if-eqz v7, :cond_3

    iget-boolean v5, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->independentSegments:Z

    if-nez v5, :cond_3

    .line 253
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v14

    .line 254
    .local v14, "subtractedDurationUs":J
    sub-long v12, v0, v14

    move-wide/from16 v16, v0

    .end local v0    # "bufferedDurationUs":J
    .local v16, "bufferedDurationUs":J
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 255
    .end local v16    # "bufferedDurationUs":J
    .local v12, "bufferedDurationUs":J
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v2, v16

    if-eqz v5, :cond_2

    .line 256
    sub-long v5, v2, v14

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide/from16 v30, v0

    goto :goto_2

    .line 255
    :cond_2
    move-wide/from16 v30, v2

    goto :goto_2

    .line 246
    .end local v12    # "bufferedDurationUs":J
    .end local v14    # "subtractedDurationUs":J
    .restart local v0    # "bufferedDurationUs":J
    :cond_3
    move-wide/from16 v16, v0

    .line 261
    .end local v0    # "bufferedDurationUs":J
    .restart local v16    # "bufferedDurationUs":J
    move-wide/from16 v30, v2

    move-wide/from16 v12, v16

    .end local v2    # "timeToLiveEdgeUs":J
    .end local v16    # "bufferedDurationUs":J
    .restart local v12    # "bufferedDurationUs":J
    .local v30, "timeToLiveEdgeUs":J
    :goto_2
    invoke-virtual {v8, v7, v9, v10}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->createMediaChunkIterators(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;J)[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    move-result-object v32

    .line 262
    .local v32, "mediaChunkIterators":[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    iget-object v14, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-wide/from16 v15, p1

    move-wide/from16 v17, v12

    move-wide/from16 v19, v30

    move-object/from16 v21, p5

    move-object/from16 v22, v32

    invoke-interface/range {v14 .. v22}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V

    .line 264
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v14

    .line 266
    .local v14, "selectedTrackIndex":I
    if-eq v4, v14, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move/from16 v33, v0

    .line 267
    .local v33, "switchingTrack":Z
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v6, v0, v14

    .line 268
    .local v6, "selectedPlaylistUrl":Landroid/net/Uri;
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    iput-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 270
    iget-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 271
    iput-object v6, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 273
    return-void

    .line 275
    :cond_5
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 276
    const/4 v1, 0x1

    invoke-interface {v0, v6, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v5

    .line 277
    .local v5, "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    iget-boolean v0, v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->independentSegments:Z

    .line 279
    invoke-direct {v8, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V

    .line 282
    iget-wide v0, v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 283
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v16, v0, v2

    .line 284
    .local v16, "startOfPlaylistInPeriodUs":J
    nop

    .line 285
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v33

    move-object v3, v5

    move/from16 v34, v4

    move-object v15, v5

    .end local v4    # "oldTrackIndex":I
    .end local v5    # "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .local v15, "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .local v34, "oldTrackIndex":I
    move-wide/from16 v4, v16

    move-object/from16 v19, v6

    move-object/from16 v35, v7

    .end local v6    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v7    # "previous":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    .local v19, "selectedPlaylistUrl":Landroid/net/Uri;
    .local v35, "previous":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getChunkMediaSequence(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;ZLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    .line 287
    .local v0, "chunkMediaSequence":J
    iget-wide v2, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    if-eqz v35, :cond_6

    if-eqz v33, :cond_6

    .line 290
    move/from16 v14, v34

    .line 291
    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v2, v2, v14

    .line 292
    .end local v19    # "selectedPlaylistUrl":Landroid/net/Uri;
    .local v2, "selectedPlaylistUrl":Landroid/net/Uri;
    iget-object v3, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 293
    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    .line 294
    .end local v15    # "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .local v3, "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v6, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 295
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 296
    .end local v16    # "startOfPlaylistInPeriodUs":J
    .local v4, "startOfPlaylistInPeriodUs":J
    invoke-virtual/range {v35 .. v35}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v0

    move-wide v5, v4

    move v4, v14

    goto :goto_4

    .line 287
    .end local v2    # "selectedPlaylistUrl":Landroid/net/Uri;
    .end local v3    # "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .end local v4    # "startOfPlaylistInPeriodUs":J
    .restart local v15    # "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .restart local v16    # "startOfPlaylistInPeriodUs":J
    .restart local v19    # "selectedPlaylistUrl":Landroid/net/Uri;
    :cond_6
    nop

    .line 299
    move v4, v14

    move-object v3, v15

    move-wide/from16 v5, v16

    move-object/from16 v2, v19

    .end local v14    # "selectedTrackIndex":I
    .end local v15    # "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .end local v16    # "startOfPlaylistInPeriodUs":J
    .end local v19    # "selectedPlaylistUrl":Landroid/net/Uri;
    .restart local v2    # "selectedPlaylistUrl":Landroid/net/Uri;
    .restart local v3    # "mediaPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .local v4, "selectedTrackIndex":I
    .local v5, "startOfPlaylistInPeriodUs":J
    :goto_4
    iget-wide v14, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v7, v0, v14

    if-gez v7, :cond_7

    .line 300
    new-instance v7, Landroidx/media2/exoplayer/external/source/BehindLiveWindowException;

    invoke-direct {v7}, Landroidx/media2/exoplayer/external/source/BehindLiveWindowException;-><init>()V

    iput-object v7, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 301
    return-void

    .line 304
    :cond_7
    iget-wide v14, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v14, v0, v14

    long-to-int v7, v14

    .line 305
    .local v7, "segmentIndexInPlaylist":I
    iget-object v14, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_9

    .line 306
    iget-boolean v14, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v14, :cond_8

    .line 307
    const/4 v14, 0x1

    iput-boolean v14, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto :goto_5

    .line 309
    :cond_8
    iput-object v2, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 310
    iget-boolean v14, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v15, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v2, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    and-int/2addr v14, v15

    iput-boolean v14, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 311
    iput-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 313
    :goto_5
    return-void

    .line 316
    :cond_9
    const/4 v14, 0x0

    iput-boolean v14, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 317
    const/4 v14, 0x0

    iput-object v14, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 320
    iget-object v14, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 323
    .local v15, "segment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-object v14, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-static {v3, v14}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getFullEncryptionKeyUri(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;)Landroid/net/Uri;

    move-result-object v14

    .line 324
    .local v14, "initSegmentKeyUri":Landroid/net/Uri;
    move-wide/from16 v36, v0

    .end local v0    # "chunkMediaSequence":J
    .local v36, "chunkMediaSequence":J
    invoke-direct {v8, v14, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 325
    iget-object v0, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    if-eqz v0, :cond_a

    .line 326
    return-void

    .line 328
    :cond_a
    invoke-static {v3, v15}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getFullEncryptionKeyUri(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;)Landroid/net/Uri;

    move-result-object v0

    .line 329
    .local v0, "mediaSegmentKeyUri":Landroid/net/Uri;
    invoke-direct {v8, v0, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-result-object v1

    iput-object v1, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 330
    iget-object v1, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    if-eqz v1, :cond_b

    .line 331
    return-void

    .line 334
    :cond_b
    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v9, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->mediaDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v10, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistFormats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v16, v10, v4

    iget-object v10, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    move/from16 v38, v4

    .end local v4    # "selectedTrackIndex":I
    .local v38, "selectedTrackIndex":I
    iget-object v4, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 344
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionReason()I

    move-result v23

    iget-object v4, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 345
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v24

    iget-boolean v4, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->isTimestampMaster:Z

    move-wide/from16 v39, v12

    .end local v12    # "bufferedDurationUs":J
    .local v39, "bufferedDurationUs":J
    iget-object v12, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    iget-object v13, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    .line 349
    invoke-virtual {v13, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->get(Ljava/lang/Object;)[B

    move-result-object v28

    iget-object v13, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    .line 350
    invoke-virtual {v13, v14}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->get(Ljava/lang/Object;)[B

    move-result-object v29

    .line 335
    move-object v13, v14

    .end local v14    # "initSegmentKeyUri":Landroid/net/Uri;
    .local v13, "initSegmentKeyUri":Landroid/net/Uri;
    move-object v14, v1

    move-object v1, v15

    .end local v15    # "segment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v1, "segment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    move-object v15, v9

    move-wide/from16 v17, v5

    move-object/from16 v19, v3

    move/from16 v20, v7

    move-object/from16 v21, v2

    move-object/from16 v22, v10

    move/from16 v25, v4

    move-object/from16 v26, v12

    move-object/from16 v27, v35

    invoke-static/range {v14 .. v29}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->createInstance(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;[B[B)Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v4

    iput-object v4, v11, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 351
    return-void
.end method

.method public getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    return-object v0
.end method

.method public maybeBlacklistTrack(Landroidx/media2/exoplayer/external/source/chunk/Chunk;J)Z
    .locals 3
    .param p1, "chunk"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .param p2, "blacklistDurationMs"    # J

    .line 377
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 378
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    .line 377
    invoke-interface {v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V

    goto :goto_0

    .line 179
    :cond_0
    nop

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_1
    throw v0
.end method

.method public onChunkLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)V
    .locals 4
    .param p1, "chunk"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 360
    instance-of v0, p1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_0

    .line 361
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 362
    .local v0, "encryptionKeyChunk":Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 363
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    goto :goto_0

    .line 360
    .end local v0    # "encryptionKeyChunk":Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_0
    nop

    .line 365
    :goto_0
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .locals 6
    .param p1, "playlistUrl"    # Landroid/net/Uri;
    .param p2, "blacklistDurationMs"    # J

    .line 390
    const/4 v0, -0x1

    .line 391
    .local v0, "trackGroupIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 392
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    move v0, v1

    .line 394
    goto :goto_1

    .line 391
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 398
    return v2

    .line 400
    :cond_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v3, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->indexOf(I)I

    move-result v3

    .line 401
    .local v3, "trackSelectionIndex":I
    if-ne v3, v1, :cond_3

    .line 402
    return v2

    .line 404
    :cond_3
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 405
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 406
    invoke-interface {v1, v3, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 405
    :cond_5
    nop

    .line 406
    :goto_2
    nop

    .line 405
    :goto_3
    return v2
.end method

.method public reset()V
    .locals 1

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 212
    return-void
.end method

.method public selectTracks(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V
    .locals 0
    .param p1, "trackSelection"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 197
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 198
    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 0
    .param p1, "isTimestampMaster"    # Z

    .line 221
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->isTimestampMaster:Z

    .line 222
    return-void
.end method
