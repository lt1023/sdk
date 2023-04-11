.class final Landroidx/media2/exoplayer/external/source/IcyDataSource;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field private bytesUntilMetadata:I

.field private final listener:Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;

.field private final metadataIntervalBytes:I

.field private final metadataLengthByteHolder:[B

.field private final upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;ILandroidx/media2/exoplayer/external/source/IcyDataSource$Listener;)V
    .locals 2
    .param p1, "upstream"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "metadataIntervalBytes"    # I
    .param p3, "listener"    # Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 67
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 68
    iput p2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataIntervalBytes:I

    .line 69
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->listener:Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;

    .line 70
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataLengthByteHolder:[B

    .line 71
    iput p2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    .line 72
    return-void
.end method

.method private readMetadata()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    .line 125
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    return v3

    .line 128
    :cond_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataLengthByteHolder:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    .line 129
    .local v4, "metadataLength":I
    if-nez v4, :cond_1

    .line 130
    return v2

    .line 133
    :cond_1
    const/4 v5, 0x0

    .line 134
    .local v5, "offset":I
    move v6, v4

    .line 135
    .local v6, "lengthRemaining":I
    new-array v7, v4, [B

    .line 136
    .local v7, "metadata":[B
    :goto_0
    if-lez v6, :cond_3

    .line 137
    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v8, v7, v5, v6}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    .line 138
    if-ne v0, v1, :cond_2

    .line 139
    return v3

    .line 141
    :cond_2
    add-int/2addr v5, v0

    .line 142
    sub-int/2addr v6, v0

    goto :goto_0

    .line 136
    :cond_3
    nop

    .line 146
    :goto_1
    if-lez v4, :cond_4

    add-int/lit8 v1, v4, -0x1

    aget-byte v1, v7, v1

    if-nez v1, :cond_4

    .line 147
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 146
    :cond_4
    nop

    .line 150
    if-lez v4, :cond_5

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->listener:Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;

    new-instance v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v3, v7, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;->onIcyMetadata(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_2

    .line 150
    :cond_5
    nop

    .line 153
    :goto_2
    return v2
.end method


# virtual methods
.method public addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 77
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 1
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 87
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/IcyDataSource;->readMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataIntervalBytes:I

    iput v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_0

    .line 90
    :cond_0
    return v1

    .line 86
    :cond_1
    nop

    .line 93
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, p1, p2, v2}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    .line 94
    .local v0, "bytesRead":I
    if-eq v0, v1, :cond_2

    .line 95
    iget v1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_1

    .line 94
    :cond_2
    nop

    .line 97
    :goto_1
    return v0
.end method
