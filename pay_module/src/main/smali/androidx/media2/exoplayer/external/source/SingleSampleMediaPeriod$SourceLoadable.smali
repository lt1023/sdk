.class final Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

.field public final dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private sampleData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/upstream/DataSource;)V
    .locals 1
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 389
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 390
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;

    .line 379
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;

    .line 379
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .line 395
    return-void
.end method

.method public load()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->resetBytesRead()V

    .line 403
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "result":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 407
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    .line 408
    .local v2, "sampleSize":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v1, :cond_0

    .line 409
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    goto :goto_1

    .line 410
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v1, v1

    if-ne v2, v1, :cond_1

    .line 411
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    goto :goto_1

    .line 410
    :cond_1
    nop

    .line 413
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 414
    .end local v2    # "sampleSize":I
    goto :goto_0

    .line 406
    :cond_2
    nop

    .line 416
    .end local v0    # "result":I
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 417
    nop

    .line 418
    return-void

    .line 416
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v0

    return-void
.end method
