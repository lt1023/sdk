.class public final Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleFormat:Landroidx/media2/exoplayer/external/Format;

.field private final trackType:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJILandroidx/media2/exoplayer/external/Format;)V
    .locals 16
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # J
    .param p12, "trackType"    # I
    .param p13, "sampleFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 69
    move-object/from16 v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v0 .. v15}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 80
    move/from16 v1, p12

    iput v1, v0, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->trackType:I

    .line 81
    move-object/from16 v2, p13

    iput-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->sampleFormat:Landroidx/media2/exoplayer/external/Format;

    .line 82
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .line 95
    return-void
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->subrange(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v2

    .line 103
    .local v2, "loadDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :try_start_0
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v3

    .line 104
    .local v3, "length":J
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 105
    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    add-long/2addr v3, v5

    goto :goto_0

    .line 104
    :cond_0
    nop

    .line 107
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;

    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    move-object v5, v0

    move-wide v9, v3

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V

    .line 109
    .local v0, "extractorInput":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->getOutput()Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;

    move-result-object v5

    .line 110
    .local v5, "output":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 111
    const/4 v6, 0x0

    iget v7, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->trackType:I

    invoke-virtual {v5, v6, v7}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v6

    .line 112
    .local v6, "trackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->sampleFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 114
    const/4 v7, 0x0

    move v14, v7

    .line 115
    .local v14, "result":I
    :goto_1
    const/4 v7, -0x1

    const/4 v15, 0x1

    if-eq v14, v7, :cond_1

    .line 116
    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    int-to-long v9, v14

    add-long/2addr v7, v9

    iput-wide v7, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    .line 117
    const v7, 0x7fffffff

    invoke-interface {v6, v0, v7, v15}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v7

    move v14, v7

    goto :goto_1

    .line 119
    :cond_1
    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    long-to-int v13, v7

    .line 120
    .local v13, "sampleSize":I
    iget-wide v8, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v7, v6

    move v11, v13

    move/from16 v17, v13

    .end local v13    # "sampleSize":I
    .local v17, "sampleSize":I
    move-object/from16 v13, v16

    invoke-interface/range {v7 .. v13}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0    # "extractorInput":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .end local v3    # "length":J
    .end local v5    # "output":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;
    .end local v6    # "trackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .end local v14    # "result":I
    .end local v17    # "sampleSize":I
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 123
    nop

    .line 124
    iput-boolean v15, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    .line 125
    return-void

    .line 122
    :catchall_0
    move-exception v0

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v0

    return-void
.end method
