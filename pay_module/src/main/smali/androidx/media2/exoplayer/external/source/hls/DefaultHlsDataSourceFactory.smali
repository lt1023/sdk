.class public final Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .locals 0
    .param p1, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 38
    return-void
.end method


# virtual methods
.method public createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;
    .locals 1
    .param p1, "dataType"    # I

    .line 42
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    return-object v0
.end method
