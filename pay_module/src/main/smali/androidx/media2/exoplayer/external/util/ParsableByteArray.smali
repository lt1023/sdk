.class public final Landroidx/media2/exoplayer/external/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 52
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    .line 53
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 62
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    .line 63
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 73
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    .line 74
    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .locals 2

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v0, v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 142
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .locals 1

    .line 125
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    return v0
.end method

.method public peekChar()C
    .locals 3

    .line 224
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method public peekUnsignedByte()I
    .locals 2

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V
    .locals 2
    .param p1, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p2, "length"    # I

    .line 184
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 185
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 186
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .line 209
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 210
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 211
    return-void
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 199
    return-void
.end method

.method public readDouble()D
    .locals 2

    .line 446
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 439
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 4

    .line 325
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readInt24()I
    .locals 4

    .line 278
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x8

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 528
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x0

    return-object v0

    .line 531
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 532
    .local v0, "lineLimit":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->isLinebreak(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_1
    nop

    .line 535
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v2, v1

    const/16 v5, -0x11

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x45

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, v2, v4

    const/16 v4, -0x41

    if-ne v2, v4, :cond_2

    .line 538
    add-int/2addr v1, v3

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    goto :goto_1

    .line 535
    :cond_2
    nop

    .line 540
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "line":Ljava/lang/String;
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 542
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ne v2, v3, :cond_3

    .line 543
    return-object v1

    .line 545
    :cond_3
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v2

    const/16 v5, 0xd

    if-ne v4, v5, :cond_5

    .line 546
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 547
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    if-ne v2, v3, :cond_4

    .line 548
    return-object v1

    .line 547
    :cond_4
    goto :goto_2

    .line 545
    :cond_5
    nop

    .line 551
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    const/16 v4, 0xa

    if-ne v2, v4, :cond_6

    .line 552
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    goto :goto_3

    .line 551
    :cond_6
    nop

    .line 554
    :goto_3
    return-object v1
.end method

.method public readLittleEndianInt()I
    .locals 4

    .line 335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianInt24()I
    .locals 4

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianLong()J
    .locals 8

    .line 359
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public readLittleEndianShort()S
    .locals 4

    .line 262
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readLittleEndianUnsignedInt()J
    .locals 8

    .line 315
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public readLittleEndianUnsignedInt24()I
    .locals 4

    .line 296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianUnsignedIntToInt()I
    .locals 4

    .line 415
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 416
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 419
    return v0

    .line 417
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLittleEndianUnsignedShort()I
    .locals 4

    .line 247
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 8

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public readNullTerminatedString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 501
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x0

    return-object v0

    .line 504
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 505
    .local v0, "stringLimit":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    nop

    .line 508
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "string":Ljava/lang/String;
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 510
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v2, v3, :cond_2

    .line 511
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    goto :goto_1

    .line 510
    :cond_2
    nop

    .line 513
    :goto_1
    return-object v1
.end method

.method public readNullTerminatedString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 480
    if-nez p1, :cond_0

    .line 481
    const-string v0, ""

    return-object v0

    .line 483
    :cond_0
    move v0, p1

    .line 484
    .local v0, "stringLength":I
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 485
    .local v1, "lastIndex":I
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    .line 486
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 485
    :cond_1
    nop

    .line 488
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "result":Ljava/lang/String;
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v3, p1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 490
    return-object v2
.end method

.method public readShort()S
    .locals 4

    .line 254
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 1
    .param p1, "length"    # I

    .line 456
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 467
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 468
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 469
    return-object v0
.end method

.method public readSynchSafeInt()I
    .locals 6

    .line 388
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 389
    .local v0, "b1":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 390
    .local v1, "b2":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 391
    .local v2, "b3":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 392
    .local v3, "b4":I
    shl-int/lit8 v4, v0, 0x15

    shl-int/lit8 v5, v1, 0xe

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x7

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public readUnsignedByte()I
    .locals 3

    .line 232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .locals 4

    .line 373
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 375
    .local v0, "result":I
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 376
    return v0
.end method

.method public readUnsignedInt()J
    .locals 8

    .line 305
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x18

    shl-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public readUnsignedInt24()I
    .locals 4

    .line 269
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedIntToInt()I
    .locals 4

    .line 401
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 402
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 405
    return v0

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readUnsignedLongToLong()J
    .locals 5

    .line 428
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 429
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 432
    return-wide v0

    .line 430
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUnsignedShort()I
    .locals 4

    .line 239
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUtf8EncodedLong()J
    .locals 11

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "length":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    .line 567
    .local v1, "value":J
    const/4 v3, 0x7

    .local v3, "j":I
    :goto_0
    const/4 v4, 0x6

    if-ltz v3, :cond_3

    .line 568
    const/4 v5, 0x1

    shl-int v6, v5, v3

    int-to-long v6, v6

    and-long/2addr v6, v1

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    .line 569
    const/4 v6, 0x7

    if-ge v3, v4, :cond_0

    .line 570
    shl-int v7, v5, v3

    sub-int/2addr v7, v5

    int-to-long v7, v7

    and-long/2addr v1, v7

    .line 571
    rsub-int/lit8 v0, v3, 0x7

    goto :goto_1

    .line 572
    :cond_0
    if-ne v3, v6, :cond_1

    .line 573
    const/4 v0, 0x1

    goto :goto_1

    .line 572
    :cond_1
    goto :goto_1

    .line 567
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 578
    .end local v3    # "j":I
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 581
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 582
    iget-object v5, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    .line 583
    .local v5, "x":I
    and-int/lit16 v6, v5, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_4

    .line 586
    shl-long v6, v1, v4

    and-int/lit8 v8, v5, 0x3f

    int-to-long v8, v8

    or-long v1, v6, v8

    .line 581
    .end local v5    # "x":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 584
    .restart local v5    # "x":I
    :cond_4
    new-instance v4, Ljava/lang/NumberFormatException;

    const/16 v6, 0x3e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 581
    .end local v5    # "x":I
    :cond_5
    nop

    .line 588
    .end local v3    # "i":I
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 589
    return-wide v1

    .line 579
    :cond_6
    new-instance v3, Ljava/lang/NumberFormatException;

    const/16 v4, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    return-void
.end method

.method public reset()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    .line 80
    return-void
.end method

.method public reset(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 89
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 90
    return-void
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 99
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 100
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 109
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 110
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 112
    return-void
.end method

.method public setLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 134
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 135
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    .line 136
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 161
    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 162
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 163
    return-void
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 173
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 174
    return-void
.end method
