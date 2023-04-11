.class public final Landroidx/media2/exoplayer/external/upstream/FileDataSourceFactory;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/FileDataSourceFactory;-><init>(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSourceFactory;->listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 39
    return-void
.end method


# virtual methods
.method public createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .locals 2

    .line 43
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;-><init>()V

    .line 44
    .local v0, "dataSource":Landroidx/media2/exoplayer/external/upstream/FileDataSource;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSourceFactory;->listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    goto :goto_0

    .line 44
    :cond_0
    nop

    .line 47
    :goto_0
    return-object v0
.end method
