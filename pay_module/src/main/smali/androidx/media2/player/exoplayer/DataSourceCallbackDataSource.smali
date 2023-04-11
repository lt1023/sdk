.class public final Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "DataSourceCallbackDataSource.java"


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

.field private final mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

.field private mOffset:J

.field private mOpened:Z

.field private mUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/common/DataSourceCallback;)V
    .locals 1
    .param p1, "dataSourceCallback"    # Landroidx/media2/common/DataSourceCallback;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 70
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/DataSourceCallback;

    iput-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    .line 71
    return-void
.end method

.method static getFactory(Landroidx/media2/common/DataSourceCallback;)Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .locals 1
    .param p0, "dataSourceCallback"    # Landroidx/media2/common/DataSourceCallback;

    .line 52
    new-instance v0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource$1;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource$1;-><init>(Landroidx/media2/common/DataSourceCallback;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mUri:Landroid/net/Uri;

    .line 123
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOpened:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOpened:Z

    .line 125
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->transferEnded()V

    goto :goto_0

    .line 123
    :cond_0
    nop

    .line 127
    :goto_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 7
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mUri:Landroid/net/Uri;

    .line 76
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    .line 77
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 78
    iget-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    invoke-virtual {v0}, Landroidx/media2/common/DataSourceCallback;->getSize()J

    move-result-wide v0

    .line 79
    .local v0, "dataSourceCallback2Size":J
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 80
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    goto :goto_0

    .line 81
    :cond_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 82
    iget-wide v2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    goto :goto_0

    .line 84
    :cond_1
    iput-wide v4, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    .line 86
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOpened:Z

    .line 87
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 88
    iget-wide v2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    return-wide v2
.end method

.method public read([BII)I
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    if-nez p3, :cond_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 96
    return v4

    .line 98
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    move v10, p3

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 99
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    move v10, v1

    :goto_0
    nop

    .line 100
    .local v10, "bytesToRead":I
    iget-object v5, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    iget-wide v6, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroidx/media2/common/DataSourceCallback;->readAt(J[BII)I

    move-result v0

    .line 101
    .local v0, "bytesRead":I
    if-gez v0, :cond_4

    .line 102
    iget-wide v5, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    cmp-long v1, v5, v2

    if-nez v1, :cond_3

    .line 105
    return v4

    .line 103
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 107
    :cond_4
    iget-wide v4, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    .line 108
    iget-wide v4, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    .line 109
    int-to-long v1, v0

    sub-long/2addr v4, v1

    iput-wide v4, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    goto :goto_1

    .line 108
    :cond_5
    nop

    .line 111
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->bytesTransferred(I)V

    .line 112
    return v0
.end method
