.class public final Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Factory;,
        Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;
    }
.end annotation


# instance fields
.field private final resolver:Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;

.field private final upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private upstreamOpened:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;)V
    .locals 0
    .param p1, "upstreamDataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "resolver"    # Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 103
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->resolver:Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;

    .line 104
    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 109
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamOpened:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamOpened:Z

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->close()V

    goto :goto_0

    .line 137
    :cond_0
    nop

    .line 141
    :goto_0
    return-void
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

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, "reportedUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->resolver:Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;->resolveReportedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 3
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->resolver:Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource$Resolver;->resolveDataSpec(Landroidx/media2/exoplayer/external/upstream/DataSpec;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v0

    .line 114
    .local v0, "resolvedDataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamOpened:Z

    .line 115
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v1

    return-wide v1
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ResolvingDataSource;->upstreamDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
