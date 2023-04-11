.class public abstract Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field private final defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    .line 180
    return-void
.end method


# virtual methods
.method public final clearAllDefaultRequestProperties()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->clear()V

    .line 208
    return-void
.end method

.method public final clearDefaultRequestProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public bridge synthetic createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .locals 1

    .line 174
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->createDataSourceInternal(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createDataSourceInternal(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end method

.method public final getDefaultRequestProperties()Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    return-object v0
.end method

.method public final setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method
