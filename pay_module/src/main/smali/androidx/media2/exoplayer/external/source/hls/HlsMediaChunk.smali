.class final Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final PRIV_TIMESTAMP_FRAME_OWNER:Ljava/lang/String; = "com.apple.streaming.transportStreamTimestamp"

.field private static final uidSource:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final discontinuitySequenceNumber:I

.field private final drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

.field private final extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private final hasGapTag:Z

.field private final id3Decoder:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

.field private initDataLoadRequired:Z

.field private final initDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final initDataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final initSegmentEncrypted:Z

.field private isExtractorReusable:Z

.field private final isMasterTimestampSource:Z

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private final mediaSegmentEncrypted:Z

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextLoadPosition:I

.field private output:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

.field public final playlistUrl:Landroid/net/Uri;

.field private final previousExtractor:Landroidx/media2/exoplayer/external/extractor/Extractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final shouldSpliceIn:Z

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ZLandroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Z)V
    .locals 17
    .param p1, "extractorFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;
    .param p2, "mediaDataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p3, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p4, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p5, "mediaSegmentEncrypted"    # Z
    .param p6, "initDataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p7, "initDataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "initSegmentEncrypted"    # Z
    .param p9, "playlistUrl"    # Landroid/net/Uri;
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "trackSelectionReason"    # I
    .param p12, "trackSelectionData"    # Ljava/lang/Object;
    .param p13, "startTimeUs"    # J
    .param p15, "endTimeUs"    # J
    .param p17, "chunkMediaSequence"    # J
    .param p19, "discontinuitySequenceNumber"    # I
    .param p20, "hasGapTag"    # Z
    .param p21, "isMasterTimestampSource"    # Z
    .param p22, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p23, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p24, "previousExtractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p25, "id3Decoder"    # Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;
    .param p26, "scratchId3Data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p27, "shouldSpliceIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;",
            "Landroidx/media2/exoplayer/external/upstream/DataSource;",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z",
            "Landroidx/media2/exoplayer/external/upstream/DataSource;",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/extractor/Extractor;",
            "Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "Z)V"
        }
    .end annotation

    .line 245
    .local p10, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    .line 254
    move/from16 v0, p5

    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    .line 255
    move/from16 v1, p19

    iput v1, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    .line 256
    move-object/from16 v2, p6

    iput-object v2, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 257
    iput-object v13, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 258
    move/from16 v3, p8

    iput-boolean v3, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    .line 259
    move-object/from16 v4, p9

    iput-object v4, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    .line 260
    move/from16 v5, p21

    iput-boolean v5, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    .line 261
    move-object/from16 v6, p22

    iput-object v6, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 262
    move/from16 v7, p20

    iput-boolean v7, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->hasGapTag:Z

    .line 263
    move-object/from16 v8, p1

    iput-object v8, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 264
    move-object/from16 v9, p10

    iput-object v9, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    .line 265
    move-object/from16 v10, p23

    iput-object v10, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 266
    move-object/from16 v11, p24

    iput-object v11, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->previousExtractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 267
    move-object/from16 v14, p25

    iput-object v14, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->id3Decoder:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

    .line 268
    move-object/from16 v15, p26

    iput-object v15, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 269
    move/from16 v0, p27

    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    .line 270
    if-eqz v13, :cond_0

    const/16 v16, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 271
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uid:I

    .line 272
    return-void
.end method

.method private static buildDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;[B[B)Landroidx/media2/exoplayer/external/upstream/DataSource;
    .locals 1
    .param p0, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p1, "fullSegmentEncryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .line 491
    if-eqz p1, :cond_0

    .line 492
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;[B[B)V

    return-object v0

    .line 494
    :cond_0
    return-object p0
.end method

.method public static createInstance(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;[B[B)Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    .locals 48
    .param p0, "extractorFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "startOfPlaylistInPeriodUs"    # J
    .param p5, "mediaPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .param p6, "segmentIndexInPlaylist"    # I
    .param p7, "playlistUrl"    # Landroid/net/Uri;
    .param p8    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "trackSelectionReason"    # I
    .param p10, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "isMasterTimestampSource"    # Z
    .param p12, "timestampAdjusterProvider"    # Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;
    .param p13, "previousChunk"    # Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14, "mediaSegmentKey"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15, "initSegmentKey"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;",
            "Landroidx/media2/exoplayer/external/upstream/DataSource;",
            "Landroidx/media2/exoplayer/external/Format;",
            "J",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;",
            "[B[B)",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;"
        }
    .end annotation

    .line 93
    .local p8, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 94
    .local v6, "mediaSegment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    new-instance v14, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v8, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    .line 96
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v11, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v10, v14

    .line 100
    .local v10, "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    if-eqz v4, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    move/from16 v35, v9

    .line 102
    .local v35, "mediaSegmentEncrypted":Z
    if-eqz v35, :cond_1

    iget-object v11, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    move-object v15, v11

    .line 103
    .local v15, "mediaSegmentIv":[B
    invoke-static {v0, v4, v15}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->buildDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;[B[B)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v36

    .line 106
    .local v36, "mediaDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    iget-object v14, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 107
    .local v14, "initSegment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    const/4 v11, 0x0

    .line 108
    .local v11, "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    const/4 v12, 0x0

    .line 109
    .local v12, "initSegmentEncrypted":Z
    const/4 v13, 0x0

    .line 110
    .local v13, "initDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    if-eqz v14, :cond_4

    .line 111
    if-eqz v5, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    move/from16 v12, v16

    .line 113
    if-eqz v12, :cond_3

    iget-object v7, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 114
    .local v7, "initSegmentIv":[B
    :goto_3
    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v9, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 115
    .local v8, "initSegmentUri":Landroid/net/Uri;
    new-instance v9, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-object/from16 v26, v11

    move/from16 v27, v12

    .end local v11    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local v12    # "initSegmentEncrypted":Z
    .local v26, "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .local v27, "initSegmentEncrypted":Z
    iget-wide v11, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v2, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v25, 0x0

    move-object/from16 v19, v9

    move-object/from16 v20, v8

    move-wide/from16 v21, v11

    move-wide/from16 v23, v2

    invoke-direct/range {v19 .. v25}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v2, v9

    .line 121
    .end local v26    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .local v2, "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    invoke-static {v0, v5, v7}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->buildDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;[B[B)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v3

    move/from16 v37, v27

    goto :goto_4

    .line 110
    .end local v2    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local v7    # "initSegmentIv":[B
    .end local v8    # "initSegmentUri":Landroid/net/Uri;
    .end local v27    # "initSegmentEncrypted":Z
    .restart local v11    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .restart local v12    # "initSegmentEncrypted":Z
    :cond_4
    move-object/from16 v26, v11

    .end local v11    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .restart local v26    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    move/from16 v37, v12

    move-object v3, v13

    move-object/from16 v2, v26

    .line 124
    .end local v12    # "initSegmentEncrypted":Z
    .end local v13    # "initDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .end local v26    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .restart local v2    # "initDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .local v3, "initDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .local v37, "initSegmentEncrypted":Z
    :goto_4
    iget-wide v7, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long v38, p3, v7

    .line 125
    .local v38, "segmentStartTimeInPeriodUs":J
    iget-wide v7, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long v40, v38, v7

    .line 126
    .local v40, "segmentEndTimeInPeriodUs":J
    iget v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v8, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int v13, v7, v8

    .line 129
    .local v13, "discontinuitySequenceNumber":I
    const/4 v7, 0x0

    .line 133
    .local v7, "previousExtractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    move-object/from16 v12, p13

    if-eqz v12, :cond_8

    .line 134
    iget-object v8, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->id3Decoder:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

    .line 135
    .local v8, "id3Decoder":Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;
    iget-object v9, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 136
    .local v9, "scratchId3Data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget-object v11, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    .line 137
    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-boolean v11, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->loadCompleted:Z

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v16, 0x1

    :goto_6
    move/from16 v11, v16

    .line 141
    .local v11, "shouldSpliceIn":Z
    iget-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isExtractorReusable:Z

    if-eqz v0, :cond_7

    iget v0, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    if-ne v0, v13, :cond_7

    if-nez v11, :cond_7

    .line 142
    iget-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    goto :goto_7

    .line 141
    :cond_7
    nop

    .line 143
    const/4 v0, 0x0

    :goto_7
    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move/from16 v44, v11

    goto :goto_8

    .line 145
    .end local v8    # "id3Decoder":Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;
    .end local v9    # "scratchId3Data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v11    # "shouldSpliceIn":Z
    :cond_8
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;-><init>()V

    .line 146
    .local v0, "id3Decoder":Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;
    new-instance v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 147
    .local v8, "scratchId3Data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/4 v9, 0x0

    move-object/from16 v42, v0

    move-object v0, v7

    move-object/from16 v43, v8

    move/from16 v44, v9

    .line 150
    .end local v7    # "previousExtractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    .end local v8    # "scratchId3Data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v0, "previousExtractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    .local v42, "id3Decoder":Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;
    .local v43, "scratchId3Data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v44, "shouldSpliceIn":Z
    :goto_8
    new-instance v45, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-object/from16 v7, v45

    iget-wide v8, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    move/from16 v11, p6

    int-to-long v4, v11

    add-long v24, v8, v4

    iget-boolean v4, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    move/from16 v27, v4

    .line 169
    move-object/from16 v4, p12

    invoke-virtual {v4, v13}, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->getAdjuster(I)Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    move-result-object v29

    iget-object v5, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v30, v5

    move-object/from16 v8, p0

    move-object/from16 v9, v36

    move-object/from16 v11, p2

    move/from16 v12, v35

    move v5, v13

    .end local v13    # "discontinuitySequenceNumber":I
    .local v5, "discontinuitySequenceNumber":I
    move-object v13, v3

    move-object/from16 v46, v14

    .end local v14    # "initSegment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    .local v46, "initSegment":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    move-object v14, v2

    move-object/from16 v47, v15

    .end local v15    # "mediaSegmentIv":[B
    .local v47, "mediaSegmentIv":[B
    move/from16 v15, v37

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    move-wide/from16 v20, v38

    move-wide/from16 v22, v40

    move/from16 v26, v5

    move/from16 v28, p11

    move-object/from16 v31, v0

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move/from16 v34, v44

    invoke-direct/range {v7 .. v34}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ZLandroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Z)V

    .line 150
    return-object v45
.end method

.method private feedDataToExtractor(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V
    .locals 8
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "dataIsEncrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 348
    if-eqz p3, :cond_1

    .line 349
    move-object v0, p2

    .line 350
    .local v0, "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->nextLoadPosition:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    goto :goto_1

    .line 352
    .end local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->nextLoadPosition:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->subrange(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v0

    .line 353
    .restart local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    const/4 v1, 0x0

    .line 356
    .local v1, "skipLoadedBytes":Z
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->prepareExtraction(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;

    move-result-object v2

    .line 357
    .local v2, "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    if-eqz v1, :cond_2

    .line 358
    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->nextLoadPosition:I

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 357
    :cond_2
    nop

    .line 361
    :goto_2
    const/4 v3, 0x0

    .line 362
    .local v3, "result":I
    :goto_3
    if-nez v3, :cond_3

    :try_start_1
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v4, :cond_3

    .line 363
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroidx/media2/exoplayer/external/extractor/Extractor;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_3

    .line 366
    .end local v3    # "result":I
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v6, p2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    iput v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->nextLoadPosition:I

    .end local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local v1    # "skipLoadedBytes":Z
    .end local p1    # "dataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .end local p2    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local p3    # "dataIsEncrypted":Z
    throw v3

    .line 362
    .restart local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .restart local v1    # "skipLoadedBytes":Z
    .restart local v3    # "result":I
    .restart local p1    # "dataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .restart local p2    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .restart local p3    # "dataIsEncrypted":Z
    :cond_3
    nop

    .line 366
    .end local v3    # "result":I
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    iput v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->nextLoadPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 367
    nop

    .line 369
    .end local v2    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 370
    nop

    .line 371
    return-void

    .line 369
    :catchall_1
    move-exception v2

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v2

    return-void
.end method

.method private static getEncryptionIvArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "ivString"    # Ljava/lang/String;

    .line 467
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_0
    move-object v0, p0

    .line 473
    .local v0, "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 474
    .local v1, "ivData":[B
    new-array v3, v2, [B

    .line 475
    .local v3, "ivDataWithPadding":[B
    array-length v4, v1

    if-le v4, v2, :cond_1

    array-length v4, v1

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 476
    .local v2, "offset":I
    array-length v4, v3

    array-length v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    return-object v3
.end method

.method private loadMedia()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 325
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->waitUntilInitialized()V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 329
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    goto :goto_0

    .line 327
    :cond_1
    nop

    .line 331
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->feedDataToExtractor(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V

    .line 332
    return-void
.end method

.method private maybeLoadInitData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    if-nez v0, :cond_0

    .line 317
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->feedDataToExtractor(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 321
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 322
    return-void
.end method

.method private peekId3PrivTimestamp(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 13
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 420
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 422
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    nop

    .line 427
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 428
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 429
    .local v2, "id":I
    const v5, 0x494433

    if-eq v2, v5, :cond_0

    .line 430
    return-wide v0

    .line 432
    :cond_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 433
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 434
    .local v5, "id3Size":I
    add-int/lit8 v6, v5, 0xa

    .line 435
    .local v6, "requiredCapacity":I
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 436
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 437
    .local v7, "data":[B
    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 438
    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v7, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 435
    .end local v7    # "data":[B
    :cond_1
    nop

    .line 440
    :goto_0
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v7, v3, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 441
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->id3Decoder:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {v3, v7, v5}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v3

    .line 442
    .local v3, "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    if-nez v3, :cond_2

    .line 443
    return-wide v0

    .line 445
    :cond_2
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v7

    .line 446
    .local v7, "metadataLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 447
    invoke-virtual {v3, v8}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v9

    .line 448
    .local v9, "frame":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    instance-of v10, v9, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v10, :cond_4

    .line 449
    move-object v10, v9

    check-cast v10, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    .line 450
    .local v10, "privFrame":Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;
    const-string v11, "com.apple.streaming.transportStreamTimestamp"

    iget-object v12, v10, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 451
    iget-object v0, v10, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->privateData:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v11, 0x8

    invoke-static {v0, v4, v1, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 456
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->scratchId3Data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide v11, 0x1ffffffffL

    and-long/2addr v0, v11

    return-wide v0

    .line 450
    :cond_3
    goto :goto_2

    .line 448
    .end local v10    # "privFrame":Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;
    :cond_4
    nop

    .line 446
    .end local v9    # "frame":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 460
    .end local v8    # "i":I
    :cond_5
    return-wide v0

    .line 423
    .end local v2    # "id":I
    .end local v3    # "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    .end local v5    # "id3Size":I
    .end local v6    # "requiredCapacity":I
    .end local v7    # "metadataLength":I
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Ljava/io/EOFException;
    return-wide v0
.end method

.method private prepareExtraction(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;
    .locals 20
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p2}, Landroidx/media2/exoplayer/external/upstream/DataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v8

    .line 377
    .local v8, "bytesToRead":J
    new-instance v10, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    move-object v2, v10

    move-object/from16 v3, p1

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V

    .line 380
    .local v2, "extractorInput":Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    if-nez v3, :cond_2

    .line 381
    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->peekId3PrivTimestamp(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v3

    .line 382
    .local v3, "id3Timestamp":J
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;->resetPeekPosition()V

    .line 384
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->previousExtractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    iget-object v13, v1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 392
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v18

    .line 385
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v2

    invoke-interface/range {v11 .. v19}, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;->createExtractor(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object v5

    .line 394
    .local v5, "result":Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    iput-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 395
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;->isReusable:Z

    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isExtractorReusable:Z

    .line 396
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;->isPackedAudioExtractor:Z

    if-eqz v6, :cond_1

    .line 397
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->output:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 398
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v10

    if-eqz v7, :cond_0

    .line 399
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v7, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    goto :goto_0

    .line 400
    :cond_0
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    .line 397
    :goto_0
    invoke-virtual {v6, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    goto :goto_1

    .line 396
    :cond_1
    nop

    .line 402
    :goto_1
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->output:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uid:I

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->init(IZZ)V

    .line 403
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->output:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/extractor/Extractor;->init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V

    goto :goto_2

    .line 380
    .end local v3    # "id3Timestamp":J
    .end local v5    # "result":Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    :cond_2
    nop

    .line 406
    :goto_2
    return-object v2
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->loadCanceled:Z

    .line 294
    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 281
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->output:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 282
    return-void
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->previousExtractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 299
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 300
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isExtractorReusable:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 302
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->output:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uid:I

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    invoke-virtual {v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->init(IZZ)V

    goto :goto_0

    .line 298
    :cond_0
    nop

    .line 304
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->maybeLoadInitData()V

    .line 305
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_2

    .line 306
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->hasGapTag:Z

    if-nez v0, :cond_1

    .line 307
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->loadMedia()V

    goto :goto_1

    .line 306
    :cond_1
    nop

    .line 309
    :goto_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->loadCompleted:Z

    goto :goto_2

    .line 305
    :cond_2
    nop

    .line 311
    :goto_2
    return-void
.end method
