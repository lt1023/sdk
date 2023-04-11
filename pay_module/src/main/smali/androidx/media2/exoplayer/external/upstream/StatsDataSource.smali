.class public final Landroidx/media2/exoplayer/external/upstream/StatsDataSource;
.super Ljava/lang/Object;
.source "StatsDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private bytesRead:J

.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private lastOpenedUri:Landroid/net/Uri;

.field private lastResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;)V
    .locals 1
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSource;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 52
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 82
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->close()V

    .line 118
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 63
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->bytesRead:J

    return-wide v0
.end method

.method public getLastOpenedUri()Landroid/net/Uri;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLastResponseHeaders()Ljava/util/Map;
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

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    return-object v0
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

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 3
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v0

    .line 90
    .local v0, "availableBytes":J
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 91
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 92
    return-wide v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    .line 98
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 99
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->bytesRead:J

    goto :goto_0

    .line 98
    :cond_0
    nop

    .line 101
    :goto_0
    return v0
.end method

.method public resetBytesRead()V
    .locals 2

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->bytesRead:J

    .line 59
    return-void
.end method
