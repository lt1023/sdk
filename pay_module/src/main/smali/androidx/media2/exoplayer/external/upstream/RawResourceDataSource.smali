.class public final Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "RawResourceDataSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    .line 88
    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "rawResourceId"    # I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 182
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 182
    :cond_0
    nop

    .line 188
    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 190
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 190
    :cond_1
    nop

    .line 196
    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    goto :goto_2

    .line 197
    :cond_2
    nop

    .line 202
    :goto_2
    nop

    .line 203
    return-void

    .line 196
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    goto :goto_4

    .line 197
    :cond_3
    nop

    .line 199
    :goto_4
    throw v2

    .line 188
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 185
    :catch_1
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 190
    :try_start_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 190
    :cond_4
    nop

    .line 196
    :goto_6
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    goto :goto_7

    .line 197
    :cond_5
    nop

    .line 199
    :goto_7
    throw v2

    .line 196
    :catchall_2
    move-exception v2

    goto :goto_8

    .line 193
    :catch_2
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    :goto_8
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    goto :goto_9

    .line 197
    :cond_6
    nop

    .line 199
    :goto_9
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 11
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 95
    const-string v1, "rawresource"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    .line 101
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .local v1, "resourceId":I
    nop

    .line 106
    :try_start_2
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 107
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 108
    .local v2, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 109
    if-eqz v2, :cond_3

    .line 112
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 113
    .local v3, "inputStream":Ljava/io/FileInputStream;
    iput-object v3, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 115
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 116
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    invoke-virtual {v3, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    .line 117
    .local v4, "skipped":J
    iget-wide v6, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 122
    iget-wide v6, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_0

    .line 123
    iget-wide v6, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 127
    .local v6, "assetFileDescriptorLength":J
    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 128
    goto :goto_0

    :cond_1
    iget-wide v8, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    sub-long v8, v6, v8

    :goto_0
    iput-wide v8, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "resourceId":I
    .end local v2    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "skipped":J
    .end local v6    # "assetFileDescriptorLength":J
    :goto_1
    nop

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 137
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    return-wide v0

    .line 120
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "resourceId":I
    .restart local v2    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "skipped":J
    :cond_2
    :try_start_3
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v6

    .line 110
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "skipped":J
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :cond_3
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Resource is compressed: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v3

    .line 102
    .end local v1    # "resourceId":I
    .end local v2    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v3, "Resource identifier must be an integer."

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v2

    .line 96
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :cond_4
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v2, "URI must use scheme rawresource"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    .end local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    .end local v0    # "uri":Landroid/net/Uri;
    .restart local p1    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 142
    if-nez p3, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 145
    return v4

    .line 150
    :cond_1
    nop

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    nop

    move v1, p3

    goto :goto_0

    .line 151
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

    .line 152
    .local v0, "bytesToRead":I
    nop

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

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

    .line 155
    .local v0, "bytesRead":I
    nop

    .line 157
    nop

    if-ne v0, v4, :cond_4

    .line 158
    nop

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v1, v5, v2

    if-nez v1, :cond_3

    .line 162
    nop

    return v4

    .line 160
    :cond_3
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 164
    :cond_4
    nop

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    .line 165
    nop

    int-to-long v1, v0

    sub-long/2addr v4, v1

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_1

    .line 164
    :cond_5
    nop

    .line 167
    :goto_1
    nop

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesTransferred(I)V

    .line 168
    nop

    return v0

    .line 153
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v0

    nop

    .line 154
    .local v0, "e":Ljava/io/IOException;
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
