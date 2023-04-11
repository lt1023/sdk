.class public final Landroidx/media2/exoplayer/external/upstream/ContentDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 68
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 158
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 158
    :cond_0
    nop

    .line 164
    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 166
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 166
    :cond_1
    nop

    .line 172
    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    goto :goto_2

    .line 173
    :cond_2
    nop

    .line 178
    :goto_2
    nop

    .line 179
    return-void

    .line 172
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    goto :goto_4

    .line 173
    :cond_3
    nop

    .line 175
    :goto_4
    throw v2

    .line 164
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 161
    :catch_1
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 166
    :try_start_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 167
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 166
    :cond_4
    nop

    .line 172
    :goto_6
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    goto :goto_7

    .line 173
    :cond_5
    nop

    .line 175
    :goto_7
    throw v2

    .line 172
    :catchall_2
    move-exception v2

    goto :goto_8

    .line 169
    :catch_2
    move-exception v2

    .line 170
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :goto_8
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    goto :goto_9

    .line 173
    :cond_6
    nop

    .line 175
    :goto_9
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 19
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 73
    :try_start_0
    iget-object v0, v2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 74
    .local v0, "uri":Landroid/net/Uri;
    iput-object v0, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 76
    invoke-virtual/range {p0 .. p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 77
    iget-object v3, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 78
    .local v3, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iput-object v3, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 79
    if-eqz v3, :cond_4

    .line 82
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 83
    .local v4, "inputStream":Ljava/io/FileInputStream;
    iput-object v4, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 85
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 86
    .local v5, "assetStartOffset":J
    iget-wide v7, v2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    add-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 87
    .local v7, "skipped":J
    iget-wide v9, v2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    .line 92
    iget-wide v9, v2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_0

    .line 93
    iget-wide v9, v2, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v9, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    .line 96
    .local v9, "assetFileDescriptorLength":J
    cmp-long v13, v9, v11

    if-nez v13, :cond_2

    .line 99
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    .line 100
    .local v13, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    .line 101
    .local v14, "channelSize":J
    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-nez v18, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v11

    sub-long v11, v14, v11

    :goto_0
    iput-wide v11, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    .line 102
    .end local v13    # "channel":Ljava/nio/channels/FileChannel;
    .end local v14    # "channelSize":J
    goto :goto_1

    .line 103
    :cond_2
    sub-long v11, v9, v7

    iput-wide v11, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "assetStartOffset":J
    .end local v7    # "skipped":J
    .end local v9    # "assetFileDescriptorLength":J
    :goto_1
    nop

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 111
    invoke-virtual/range {p0 .. p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 113
    iget-wide v3, v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v3

    .line 90
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v3    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "assetStartOffset":J
    .restart local v7    # "skipped":J
    :cond_3
    :try_start_1
    new-instance v9, Ljava/io/EOFException;

    invoke-direct {v9}, Ljava/io/EOFException;-><init>()V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v9

    .line 80
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "assetStartOffset":J
    .end local v7    # "skipped":J
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :cond_4
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x24

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Could not open file descriptor for: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 118
    if-nez p3, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 121
    return v4

    .line 126
    :cond_1
    nop

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    nop

    move v1, p3

    goto :goto_0

    .line 127
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

    .line 128
    .local v0, "bytesToRead":I
    nop

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    nop

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/io/FileInputStream;

    nop

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move v0, v1

    .line 131
    .local v0, "bytesRead":I
    nop

    .line 133
    nop

    if-ne v0, v4, :cond_4

    .line 134
    nop

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v1, v5, v2

    if-nez v1, :cond_3

    .line 138
    nop

    return v4

    .line 136
    :cond_3
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 140
    :cond_4
    nop

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    .line 141
    nop

    int-to-long v1, v0

    sub-long/2addr v4, v1

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_1

    .line 140
    :cond_5
    nop

    .line 143
    :goto_1
    nop

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesTransferred(I)V

    .line 144
    nop

    return v0

    .line 129
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v0

    nop

    .line 130
    .local v0, "e":Ljava/io/IOException;
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
