.class Landroidx/media2/player/exoplayer/FileDescriptorDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "FileDescriptorDataSource.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBytesRemaining:J

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mLength:J

.field private final mLock:Ljava/lang/Object;

.field private final mOffset:J

.field private mOpened:Z

.field private mPosition:J

.field private mUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V
    .locals 1
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "lock"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 85
    iput-object p1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 86
    iput-wide p2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOffset:J

    .line 87
    iput-wide p4, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLength:J

    .line 88
    iput-object p6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLock:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method static getFactory(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .locals 8
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "lock"    # Ljava/lang/Object;

    .line 61
    new-instance v7, Landroidx/media2/player/exoplayer/FileDescriptorDataSource$1;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource$1;-><init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mUri:Landroid/net/Uri;

    .line 147
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :cond_0
    nop

    .line 151
    :goto_0
    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    .line 152
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    if-eqz v0, :cond_1

    .line 153
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    .line 154
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferEnded()V

    goto :goto_1

    .line 152
    :cond_1
    nop

    .line 157
    :goto_1
    return-void

    .line 151
    :catchall_0
    move-exception v2

    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    .line 152
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    if-eqz v0, :cond_2

    .line 153
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    .line 154
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferEnded()V

    goto :goto_2

    .line 152
    :cond_2
    nop

    .line 154
    :goto_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 5
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 93
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    .line 96
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 97
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    goto :goto_0

    .line 98
    :cond_0
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLength:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 99
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    goto :goto_0

    .line 101
    :cond_1
    iput-wide v2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    .line 103
    :goto_0
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOffset:J

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    .line 105
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 106
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    if-nez p3, :cond_0

    .line 112
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 114
    return v4

    .line 116
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    move v1, p3

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 117
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    :goto_0
    move v0, v1

    .line 119
    .local v0, "bytesToRead":I
    iget-object v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v5, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-wide v6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    invoke-static {v5, v6, v7}, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->seek(Ljava/io/FileDescriptor;J)V

    .line 122
    iget-object v5, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-virtual {v5, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 123
    .local v5, "bytesRead":I
    if-ne v5, v4, :cond_4

    .line 124
    iget-wide v6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    cmp-long v8, v6, v2

    if-nez v8, :cond_3

    .line 127
    monitor-exit v1

    return v4

    .line 125
    :cond_3
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    .end local v0    # "bytesToRead":I
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "readLength":I
    throw v2

    .line 129
    .restart local v0    # "bytesToRead":I
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "readLength":I
    :cond_4
    iget-wide v6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-wide v6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_5

    .line 132
    int-to-long v1, v5

    sub-long/2addr v6, v1

    iput-wide v6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    goto :goto_1

    .line 131
    :cond_5
    nop

    .line 134
    :goto_1
    invoke-virtual {p0, v5}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->bytesTransferred(I)V

    .line 135
    return v5

    .line 130
    .end local v5    # "bytesRead":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
