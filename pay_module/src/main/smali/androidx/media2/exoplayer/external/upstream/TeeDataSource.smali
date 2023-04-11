.class public final Landroidx/media2/exoplayer/external/upstream/TeeDataSource;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private final dataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

.field private dataSinkNeedsClosing:Z

.field private final upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSink;)V
    .locals 1
    .param p1, "upstream"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSink"    # Landroidx/media2/exoplayer/external/upstream/DataSink;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSource;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 49
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSink;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    .line 50
    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 55
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    if-eqz v1, :cond_0

    .line 105
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSink;->close()V

    goto :goto_0

    .line 104
    :cond_0
    nop

    .line 109
    :goto_0
    return-void

    .line 104
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    if-eqz v2, :cond_1

    .line 105
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSink;->close()V

    goto :goto_1

    .line 104
    :cond_1
    nop

    .line 106
    :goto_1
    throw v1
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 7
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->bytesRemaining:J

    .line 60
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 61
    return-wide v2

    .line 63
    :cond_0
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->bytesRemaining:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 65
    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->subrange(JJ)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_1
    nop

    .line 67
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSink;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 69
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->bytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 75
    const/4 v0, -0x1

    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    .line 78
    .local v0, "bytesRead":I
    if-lez v0, :cond_2

    .line 80
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->dataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    invoke-interface {v1, p1, p2, v0}, Landroidx/media2/exoplayer/external/upstream/DataSink;->write([BII)V

    .line 81
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->bytesRemaining:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 82
    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/TeeDataSource;->bytesRemaining:J

    goto :goto_0

    .line 81
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    nop

    .line 85
    :goto_0
    return v0
.end method
