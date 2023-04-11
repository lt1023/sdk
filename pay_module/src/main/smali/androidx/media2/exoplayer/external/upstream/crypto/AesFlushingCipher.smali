.class public final Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;
.super Ljava/lang/Object;
.source "AesFlushingCipher.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private final flushedBlock:[B

.field private pendingXorBytes:I

.field private final zerosBlock:[B


# direct methods
.method public constructor <init>(I[BJJ)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "secretKey"    # [B
    .param p3, "nonce"    # J
    .param p5, "offset"    # J

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    .line 55
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    .line 56
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    .line 57
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    int-to-long v0, v0

    div-long v0, p5, v0

    .line 58
    .local v0, "counter":J
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    int-to-long v2, v2

    rem-long v2, p5, v2

    long-to-int v3, v2

    .line 59
    .local v3, "startPadding":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 61
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 62
    invoke-direct {p0, p3, p4, v0, v1}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->getInitializationVector(JJ)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 59
    invoke-virtual {v2, p1, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 63
    if-eqz v3, :cond_0

    .line 64
    new-array v2, v3, [B

    invoke-virtual {p0, v2, v6, v3}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :cond_0
    nop

    .line 70
    .end local v0    # "counter":J
    .end local v3    # "startPadding":I
    :goto_0
    nop

    .line 71
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 69
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getInitializationVector(JJ)[B
    .locals 1
    .param p1, "nonce"    # J
    .param p3, "counter"    # J

    .line 126
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private nonFlushingUpdate([BII[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .line 118
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public update([BII[BI)V
    .locals 14
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    move-object v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    .line 81
    .end local p2    # "inOffset":I
    .end local p3    # "length":I
    .end local p5    # "outOffset":I
    .local v7, "inOffset":I
    .local v8, "length":I
    .local v9, "outOffset":I
    :goto_0
    iget v0, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    if-lez v0, :cond_1

    .line 82
    aget-byte v1, p1, v7

    iget-object v2, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    iget v3, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    sub-int/2addr v3, v0

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v9

    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    add-int/lit8 v7, v7, 0x1

    .line 85
    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    .line 86
    add-int/lit8 v8, v8, -0x1

    .line 87
    if-nez v8, :cond_0

    .line 88
    return-void

    .line 87
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v8

    move-object/from16 v4, p4

    move v5, v9

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v10

    .line 94
    .local v10, "written":I
    if-ne v8, v10, :cond_2

    .line 95
    return-void

    .line 103
    :cond_2
    sub-int v11, v8, v10

    .line 104
    .local v11, "bytesToFlush":I
    iget v0, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 105
    add-int/2addr v9, v10

    .line 106
    iget v0, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    sub-int/2addr v0, v11

    iput v0, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    .line 107
    iget-object v1, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    const/4 v2, 0x0

    iget v3, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    iget-object v4, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v0

    .line 108
    .end local v10    # "written":I
    .local v0, "written":I
    iget v1, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->blockSize:I

    if-ne v0, v1, :cond_4

    const/4 v12, 0x1

    nop

    :cond_4
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v11, :cond_5

    .line 112
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "outOffset":I
    .local v2, "outOffset":I
    iget-object v3, v6, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    aget-byte v3, v3, v1

    aput-byte v3, p4, v9

    .line 111
    add-int/lit8 v1, v1, 0x1

    move v9, v2

    goto :goto_2

    .line 114
    .end local v1    # "i":I
    .end local v2    # "outOffset":I
    .restart local v9    # "outOffset":I
    :cond_5
    return-void
.end method

.method public updateInPlace([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 74
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 75
    return-void
.end method
