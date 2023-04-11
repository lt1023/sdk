.class public final Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;
.super Ljava/lang/Object;
.source "AesCipherDataSink.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSink;


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

.field private final scratch:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final secretKey:[B

.field private final wrappedDataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;


# direct methods
.method public constructor <init>([BLandroidx/media2/exoplayer/external/upstream/DataSink;)V
    .locals 1
    .param p1, "secretKey"    # [B
    .param p2, "wrappedDataSink"    # Landroidx/media2/exoplayer/external/upstream/DataSink;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;-><init>([BLandroidx/media2/exoplayer/external/upstream/DataSink;[B)V

    .line 53
    return-void
.end method

.method public constructor <init>([BLandroidx/media2/exoplayer/external/upstream/DataSink;[B)V
    .locals 0
    .param p1, "secretKey"    # [B
    .param p2, "wrappedDataSink"    # Landroidx/media2/exoplayer/external/upstream/DataSink;
    .param p3, "scratch"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    .line 69
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->secretKey:[B

    .line 70
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 71
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSink;->close()V

    .line 104
    return-void
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V
    .locals 10
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSink;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 76
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/crypto/CryptoUtil;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v8

    .line 77
    .local v8, "nonce":J
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->secretKey:[B

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v2, 0x1

    move-object v1, v0

    move-wide v4, v8

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    .line 79
    return-void
.end method

.method public write([BII)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->scratch:[B

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    .line 86
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSink;->write([BII)V

    goto :goto_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, "bytesProcessed":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 91
    sub-int v1, p3, v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->scratch:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92
    .local v1, "bytesToProcess":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->cipher:Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;

    add-int v5, p2, v0

    iget-object v7, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->scratch:[B

    const/4 v8, 0x0

    .line 93
    move-object v4, p1

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 94
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Landroidx/media2/exoplayer/external/upstream/DataSink;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesCipherDataSink;->scratch:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroidx/media2/exoplayer/external/upstream/DataSink;->write([BII)V

    .line 95
    add-int/2addr v0, v1

    .line 96
    .end local v1    # "bytesToProcess":I
    goto :goto_0

    .line 90
    :cond_1
    nop

    .line 98
    .end local v0    # "bytesProcessed":I
    :goto_1
    return-void
.end method
