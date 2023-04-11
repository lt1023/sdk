.class public final Landroidx/media2/exoplayer/external/upstream/FileDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "FileDataSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 119
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :cond_0
    nop

    .line 125
    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 126
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 127
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->opened:Z

    .line 128
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->transferEnded()V

    goto :goto_1

    .line 126
    :cond_1
    nop

    .line 131
    :goto_1
    return-void

    .line 125
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 126
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 127
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->opened:Z

    .line 128
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->transferEnded()V

    goto :goto_3

    .line 126
    :cond_2
    nop

    .line 128
    :goto_3
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 7
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 63
    .local v0, "uri":Landroid/net/Uri;
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 65
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 66
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v1, "file":Ljava/io/RandomAccessFile;
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 69
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    goto :goto_0

    .line 71
    :cond_0
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    :goto_0
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesRemaining:J

    .line 72
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 77
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    nop

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->opened:Z

    .line 80
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 82
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesRemaining:J

    return-wide v0

    .line 73
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 87
    if-nez p3, :cond_0

    .line 88
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 90
    const/4 v0, -0x1

    return v0

    .line 94
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 95
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, p1, p2, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .local v0, "bytesRead":I
    nop

    .line 100
    if-lez v0, :cond_2

    .line 101
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesRemaining:J

    .line 102
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;->bytesTransferred(I)V

    goto :goto_0

    .line 100
    :cond_2
    nop

    .line 105
    :goto_0
    return v0

    .line 96
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
