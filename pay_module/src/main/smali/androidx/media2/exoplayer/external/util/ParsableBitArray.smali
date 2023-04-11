.class public final Landroidx/media2/exoplayer/external/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    .line 40
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 48
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([BI)V

    .line 49
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    .line 59
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    .line 60
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .line 312
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 314
    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .line 99
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public byteAlign()V
    .locals 1

    .line 236
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 240
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 241
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 242
    return-void
.end method

.method public getBytePosition()I
    .locals 1

    .line 115
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 116
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 2

    .line 106
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public putInt(II)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .line 283
    move v0, p2

    .line 284
    .local v0, "remainingBitsToRead":I
    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ge p2, v2, :cond_0

    .line 285
    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int/2addr p1, v2

    goto :goto_0

    .line 284
    :cond_0
    nop

    .line 287
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 288
    .local v2, "firstByteReadSize":I
    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v5, v4, 0x8

    sub-int/2addr v5, v2

    .line 289
    .local v5, "firstByteRightPaddingSize":I
    const v6, 0xff00

    shr-int v4, v6, v4

    shl-int v6, v1, v5

    sub-int/2addr v6, v1

    or-int/2addr v4, v6

    .line 290
    .local v4, "firstByteBitmask":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v7, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v8, v6, v7

    and-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 291
    sub-int v8, p2, v2

    ushr-int v8, p1, v8

    .line 292
    .local v8, "firstByteInputBits":I
    aget-byte v9, v6, v7

    shl-int v10, v8, v5

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 294
    sub-int/2addr v0, v2

    .line 295
    add-int/2addr v7, v1

    .line 296
    .local v7, "currentByteIndex":I
    :goto_1
    if-le v0, v3, :cond_1

    .line 297
    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "currentByteIndex":I
    .local v9, "currentByteIndex":I
    add-int/lit8 v10, v0, -0x8

    ushr-int v10, p1, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v7

    .line 298
    add-int/lit8 v0, v0, -0x8

    move v7, v9

    goto :goto_1

    .line 300
    .end local v9    # "currentByteIndex":I
    .restart local v7    # "currentByteIndex":I
    :cond_1
    sub-int/2addr v3, v0

    .line 301
    .local v3, "lastByteRightPaddingSize":I
    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    aget-byte v9, v6, v7

    shl-int v10, v1, v3

    sub-int/2addr v10, v1

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 303
    shl-int v9, v1, v0

    sub-int/2addr v9, v1

    and-int v1, p1, v9

    .line 304
    .local v1, "lastByteInput":I
    aget-byte v9, v6, v7

    shl-int v10, v1, v3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 306
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 307
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 308
    return-void
.end method

.method public readBit()Z
    .locals 3

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBit()V

    .line 165
    return v0
.end method

.method public readBits(I)I
    .locals 7
    .param p1, "numBits"    # I

    .line 175
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 176
    return v0

    .line 178
    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, "returnValue":I
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 180
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 181
    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 182
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    goto :goto_0

    .line 184
    :cond_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    .line 185
    const/4 v4, -0x1

    rsub-int/lit8 v6, p1, 0x20

    ushr-int/2addr v4, v6

    and-int/2addr v1, v4

    .line 186
    if-ne v2, v3, :cond_2

    .line 187
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 188
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    goto :goto_1

    .line 186
    :cond_2
    nop

    .line 190
    :goto_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 191
    return v1
.end method

.method public readBits([BII)V
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBits"    # I

    .line 205
    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    .line 206
    .local v0, "to":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    const/16 v3, 0x8

    if-ge v1, v0, :cond_0

    .line 207
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v5, v4, v5

    iget v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 208
    aget-byte v5, p1, v1

    iget v7, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v7

    and-int/2addr v2, v4

    sub-int/2addr v3, v6

    shr-int/2addr v2, v3

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_0
    and-int/lit8 v1, p3, 0x7

    .line 212
    .local v1, "bitsLeft":I
    if-nez v1, :cond_1

    .line 213
    return-void

    .line 216
    :cond_1
    aget-byte v4, p1, v0

    shr-int v5, v2, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 217
    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int v5, v4, v1

    if-le v5, v3, :cond_2

    .line 219
    aget-byte v5, p1, v0

    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v7, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v2

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 220
    sub-int/2addr v4, v3

    iput v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    goto :goto_1

    .line 217
    :cond_2
    nop

    .line 222
    :goto_1
    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 223
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v2, v4

    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v6, v4, 0x8

    shr-int/2addr v2, v6

    .line 224
    .local v2, "lastDataByteTrailingBits":I
    aget-byte v6, p1, v0

    rsub-int/lit8 v7, v1, 0x8

    shl-int v7, v2, v7

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v0

    .line 225
    if-ne v4, v3, :cond_3

    .line 226
    const/4 v3, 0x0

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 227
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    goto :goto_2

    .line 225
    :cond_3
    nop

    .line 229
    :goto_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 230
    return-void
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 255
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 256
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 258
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 259
    return-void
.end method

.method public reset(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 2
    .param p1, "parsableByteArray"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 78
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([BI)V

    .line 79
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 80
    return-void
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 68
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([BI)V

    .line 69
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 91
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 92
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    .line 93
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 125
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 126
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 127
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 128
    return-void
.end method

.method public skipBit()V
    .locals 2

    .line 134
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 136
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    goto :goto_0

    .line 134
    :cond_0
    nop

    .line 138
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 139
    return-void
.end method

.method public skipBits(I)V
    .locals 3
    .param p1, "numBits"    # I

    .line 147
    div-int/lit8 v0, p1, 0x8

    .line 148
    .local v0, "numBytes":I
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 149
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v2, v0, 0x8

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 150
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 151
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 152
    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    goto :goto_0

    .line 150
    :cond_0
    nop

    .line 154
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 155
    return-void
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "length"    # I

    .line 268
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 269
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 270
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    .line 271
    return-void
.end method
