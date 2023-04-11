.class public final Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;
.super Ljava/lang/Object;
.source "AesCipherDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final secretKey:[B

.field private final upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;


# direct methods
.method public constructor <init>([BLandroidx/media2/exoplayer/external/upstream/DataSource;)V
    .locals 0
    .param p1, "secretKey"    # [B
    .param p2, "upstream"    # Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->secretKey:[B

    .line 50
    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 55
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    .line 93
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->close()V

    .line 94
    return-void
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

    .line 87
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v0

    .line 60
    .local v0, "dataLength":J
    iget-object v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/upstream/crypto/CryptoUtil;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v10

    .line 61
    .local v10, "nonce":J
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->secretKey:[B

    iget-wide v8, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v4, 0x2

    move-object v3, v2

    move-wide v6, v10

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    .line 63
    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    if-nez p3, :cond_0

    .line 69
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    .line 72
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 73
    return v1

    .line 75
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSource;->cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    .line 76
    return v0
.end method
