.class public final Landroidx/media2/exoplayer/external/upstream/AssetDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "AssetDataSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 144
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :cond_0
    nop

    .line 150
    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 151
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 152
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    .line 153
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferEnded()V

    goto :goto_1

    .line 151
    :cond_1
    nop

    .line 156
    :goto_1
    return-void

    .line 150
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 151
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 152
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    .line 153
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferEnded()V

    goto :goto_3

    .line 151
    :cond_2
    nop

    .line 153
    :goto_3
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 11
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 69
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 71
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 72
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 72
    :cond_1
    nop

    .line 75
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 76
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 77
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v3, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 78
    .local v3, "skipped":J
    iget-wide v5, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 83
    iget-wide v5, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 84
    iget-wide v5, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    goto :goto_1

    .line 86
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    .line 87
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v9, 0x7fffffff

    cmp-long v1, v5, v9

    if-nez v1, :cond_3

    .line 91
    iput-wide v7, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    :cond_3
    nop

    .line 96
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    :goto_1
    nop

    .line 98
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    .line 99
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 100
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v0

    .line 81
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v3    # "skipped":J
    :cond_4
    :try_start_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 105
    if-nez p3, :cond_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 108
    return v4

    .line 113
    :cond_1
    nop

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    nop

    move v1, p3

    goto :goto_0

    .line 114
    :cond_2
    nop

    nop

    int-to-long v5, p3

    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    long-to-int v1, v0

    :goto_0
    nop

    move v0, v1

    .line 115
    .local v0, "bytesToRead":I
    nop

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    nop

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/io/InputStream;

    nop

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move v0, v1

    .line 118
    .local v0, "bytesRead":I
    nop

    .line 120
    nop

    if-ne v0, v4, :cond_4

    .line 121
    nop

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v1, v5, v2

    if-nez v1, :cond_3

    .line 125
    nop

    return v4

    .line 123
    :cond_3
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 127
    :cond_4
    nop

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    .line 128
    nop

    int-to-long v1, v0

    sub-long/2addr v4, v1

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    goto :goto_1

    .line 127
    :cond_5
    nop

    .line 130
    :goto_1
    nop

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesTransferred(I)V

    .line 131
    nop

    return v0

    .line 116
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v0

    nop

    .line 117
    .local v0, "e":Ljava/io/IOException;
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
