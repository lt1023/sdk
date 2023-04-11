.class public abstract Landroidx/media2/exoplayer/external/source/chunk/DataChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/Chunk;
.source "DataChunk.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V
    .locals 11
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "type"    # I
    .param p4, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "data"    # [B

    .line 55
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 57
    move-object/from16 v1, p7

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    .line 58
    return-void
.end method

.method private maybeExpandData(I)V
    .locals 4
    .param p1, "limit"    # I

    .line 110
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_0

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    goto :goto_0

    .line 112
    :cond_0
    array-length v2, v0

    add-int/lit16 v3, p1, 0x4000

    if-ge v2, v3, :cond_1

    .line 115
    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    goto :goto_0

    .line 112
    :cond_1
    nop

    .line 117
    :goto_0
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->loadCanceled:Z

    .line 76
    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "limit":I
    const/4 v1, 0x0

    .line 84
    .local v1, "bytesRead":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v3, :cond_1

    .line 85
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->maybeExpandData(I)V

    .line 86
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v0, v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->read([BII)I

    move-result v3

    move v1, v3

    .line 87
    if-eq v1, v2, :cond_0

    .line 88
    add-int/2addr v0, v1

    goto :goto_0

    .line 87
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    nop

    .line 91
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v2, :cond_2

    .line 92
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->consume([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 91
    :cond_2
    nop

    .line 95
    .end local v0    # "limit":I
    .end local v1    # "bytesRead":I
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v0

    return-void
.end method
