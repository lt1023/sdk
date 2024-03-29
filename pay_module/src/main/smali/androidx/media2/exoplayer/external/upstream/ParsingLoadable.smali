.class public final Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

.field public final dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private final parser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroid/net/Uri;ILandroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;)V
    .locals 2
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    .local p4, "parser":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<+TT;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;)V
    .locals 1
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/DataSource;",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "I",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    .local p4, "parser":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 130
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 131
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    .line 132
    iput-object p4, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->parser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    .line 133
    return-void
.end method

.method public static load(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;Landroid/net/Uri;I)Ljava/lang/Object;
    .locals 2
    .param p0, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media2/exoplayer/external/upstream/DataSource;",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Landroid/net/Uri;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    .local p1, "parser":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<+TT;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroid/net/Uri;ILandroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;)V

    .line 74
    .local v0, "loadable":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->load()V

    .line 75
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static load(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)Ljava/lang/Object;
    .locals 2
    .param p0, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media2/exoplayer/external/upstream/DataSource;",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    .local p1, "parser":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<+TT;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;)V

    .line 92
    .local v0, "loadable":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->load()V

    .line 93
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .line 146
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 0

    .line 168
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
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

    .line 162
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 137
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 154
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;, "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->resetBytesRead()V

    .line 174
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 176
    .local v0, "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    :try_start_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->open()V

    .line 177
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 178
    .local v1, "dataSourceUri":Landroid/net/Uri;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->parser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    invoke-interface {v2, v1, v0}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v1    # "dataSourceUri":Landroid/net/Uri;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
