.class public Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DUMMY_POSITION_HOLDER:Landroidx/media2/exoplayer/external/extractor/PositionHolder;


# instance fields
.field private final chunkCount:I

.field private final extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/PositionHolder;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->DUMMY_POSITION_HOLDER:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJIJLandroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;)V
    .locals 5
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "clippedStartTimeUs"    # J
    .param p12, "clippedEndTimeUs"    # J
    .param p14, "chunkIndex"    # J
    .param p16, "chunkCount"    # I
    .param p17, "sampleOffsetUs"    # J
    .param p19, "extractorWrapper"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    .line 84
    move-object v0, p0

    invoke-direct/range {p0 .. p15}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 95
    move/from16 v1, p16

    iput v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 96
    move-wide/from16 v2, p17

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 97
    move-object/from16 v4, p19

    iput-object v4, v0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    .line 98
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 115
    return-void
.end method

.method public getNextChunkIndex()J
    .locals 4

    .line 102
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->chunkIndex:J

    iget v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getTrackOutputProvider(Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;)Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    .locals 0
    .param p1, "baseMediaChunkOutput"    # Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;

    .line 164
    return-object p1
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->subrange(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v0

    .line 123
    .local v0, "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :try_start_0
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 124
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V

    move-object v1, v7

    .line 125
    .local v1, "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 127
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->getOutput()Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;

    move-result-object v2

    .line 128
    .local v2, "output":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 129
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    .line 130
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->getTrackOutputProvider(Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;)Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    move-result-object v6

    .line 131
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v3, v7

    if-nez v9, :cond_0

    .line 132
    move-wide v3, v7

    goto :goto_0

    .line 133
    :cond_0
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v3, v9

    .line 134
    :goto_0
    iget-wide v9, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    cmp-long v11, v9, v7

    if-nez v11, :cond_1

    :goto_1
    move-wide v9, v7

    goto :goto_2

    :cond_1
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v7, v9

    goto :goto_1

    .line 129
    :goto_2
    move-wide v7, v3

    invoke-virtual/range {v5 .. v10}, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->init(Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    .line 125
    .end local v2    # "output":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;
    :cond_2
    nop

    .line 138
    :goto_3
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->extractorWrapper:Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/chunk/ChunkExtractorWrapper;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 139
    .local v2, "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    const/4 v3, 0x0

    .line 140
    .local v3, "result":I
    :goto_4
    if-nez v3, :cond_3

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v4, :cond_3

    .line 141
    sget-object v4, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->DUMMY_POSITION_HOLDER:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v2, v1, v4}, Landroidx/media2/exoplayer/external/extractor/Extractor;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v4

    move v3, v4

    goto :goto_4

    .line 140
    :cond_3
    nop

    .line 143
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v2    # "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    .end local v3    # "result":I
    :try_start_2
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v5

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->nextLoadPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    nop

    .line 148
    .end local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 149
    nop

    .line 150
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 151
    return-void

    .line 145
    .restart local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    .end local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    .end local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .restart local v0    # "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v1

    return-void
.end method
