.class public final Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/Chunk;
.source "InitializationChunk.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DUMMY_POSITION_HOLDER:Landroidx/media2/exoplayer/external/extractor/PositionHolder;


# instance fields
.field private final extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private nextLoadPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/PositionHolder;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->DUMMY_POSITION_HOLDER:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;)V
    .locals 11
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "extractorWrapper"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    .line 64
    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 66
    move-object/from16 v1, p6

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    .line 67
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->loadCanceled:Z

    .line 74
    return-void
.end method

.method public load()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->subrange(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v0

    .line 82
    .local v0, "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :try_start_0
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 83
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V

    move-object v1, v7

    .line 84
    .local v1, "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->nextLoadPosition:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 85
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v7 .. v12}, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->init(Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 84
    :cond_0
    nop

    .line 92
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 93
    .local v2, "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    const/4 v3, 0x0

    .line 94
    .local v3, "result":I
    :goto_1
    if-nez v3, :cond_1

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v4, :cond_1

    .line 95
    sget-object v4, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->DUMMY_POSITION_HOLDER:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v2, v1, v4}, Landroidx/media2/exoplayer/external/extractor/Extractor;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v4

    move v3, v4

    goto :goto_1

    .line 94
    :cond_1
    nop

    .line 97
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v2    # "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    .end local v3    # "result":I
    :try_start_2
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->nextLoadPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    nop

    .line 102
    .end local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 103
    nop

    .line 104
    return-void

    .line 99
    .restart local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->nextLoadPosition:J

    .end local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    .end local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .restart local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/InitializationChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v1

    return-void
.end method
