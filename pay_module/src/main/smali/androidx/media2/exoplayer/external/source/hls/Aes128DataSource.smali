.class Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final encryptionIv:[B

.field private final encryptionKey:[B

.field private final upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;[B[B)V
    .locals 0
    .param p1, "upstream"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "encryptionKey"    # [B
    .param p3, "encryptionIv"    # [B

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 69
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->encryptionKey:[B

    .line 70
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->encryptionIv:[B

    .line 71
    return-void
.end method


# virtual methods
.method public final addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 76
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->close()V

    goto :goto_0

    .line 125
    :cond_0
    nop

    .line 129
    :goto_0
    return-void
.end method

.method protected getCipherInstance()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 132
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
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

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 6
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    .local v0, "cipher":Ljavax/crypto/Cipher;
    nop

    .line 87
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->encryptionKey:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 88
    .local v1, "cipherKey":Ljava/security/Key;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->encryptionIv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 91
    .local v2, "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    nop

    .line 96
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-direct {v3, v4, p1}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 97
    .local v3, "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v3, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 98
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->open()V

    .line 100
    const-wide/16 v4, -0x1

    return-wide v4

    .line 92
    .end local v3    # "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 93
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 83
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherKey":Ljava/security/Key;
    .end local v2    # "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 84
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    .line 107
    .local v0, "bytesRead":I
    if-gez v0, :cond_0

    .line 108
    const/4 v1, -0x1

    return v1

    .line 110
    :cond_0
    return v0
.end method
