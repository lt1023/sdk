.class public final Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "DataSchemeDataSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final SCHEME_DATA:Ljava/lang/String; = "data"


# instance fields
.field private bytesRead:I

.field private data:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dataLength:I

.field private dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->data:[B

    .line 107
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->transferEnded()V

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 109
    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 110
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 100
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 9
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 55
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 56
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const-string v3, "Unsupported scheme: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "uriParts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 64
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 65
    .local v3, "dataString":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    const-string v6, ";base64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    :try_start_0
    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->data:[B

    .line 68
    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->data:[B

    array-length v4, v4

    iput v4, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->dataLength:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_2

    .line 69
    :catch_0
    move-exception v4

    .line 70
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Landroidx/media2/exoplayer/external/ParserException;

    const-string v6, "Error while parsing Base64 encoded string: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_1
    invoke-direct {v5, v6, v4}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 74
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string v4, "US-ASCII"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->data:[B

    .line 75
    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->data:[B

    array-length v4, v4

    iput v4, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->dataLength:I

    .line 77
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 78
    iget v4, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->dataLength:I

    int-to-long v4, v4

    return-wide v4

    .line 62
    .end local v3    # "dataString":Ljava/lang/String;
    :cond_4
    new-instance v3, Landroidx/media2/exoplayer/external/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected URI format: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I

    .line 83
    if-nez p3, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->dataLength:I

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->bytesRead:I

    sub-int/2addr v0, v1

    .line 87
    .local v0, "remainingBytes":I
    if-nez v0, :cond_1

    .line 88
    const/4 v1, -0x1

    return v1

    .line 90
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 91
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->data:[B

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->bytesRead:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->bytesRead:I

    add-int/2addr v1, p3

    iput v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->bytesRead:I

    .line 93
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;->bytesTransferred(I)V

    .line 94
    return p3
.end method
