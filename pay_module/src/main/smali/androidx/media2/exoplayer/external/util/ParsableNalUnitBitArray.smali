.class public final Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;
.super Ljava/lang/Object;
.source "ParsableNalUnitBitArray.java"


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

.field private data:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 47
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .line 213
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 215
    return-void
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method private shouldSkipByte(I)Z
    .locals 3
    .param p1, "offset"    # I

    .line 207
    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canReadBits(I)Z
    .locals 7
    .param p1, "numBits"    # I

    .line 107
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 108
    .local v0, "oldByteOffset":I
    div-int/lit8 v1, p1, 0x8

    .line 109
    .local v1, "numBytes":I
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/2addr v2, v1

    .line 110
    .local v2, "newByteOffset":I
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/2addr v3, p1

    mul-int/lit8 v4, v1, 0x8

    sub-int/2addr v3, v4

    .line 111
    .local v3, "newBitOffset":I
    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 111
    :cond_0
    nop

    .line 115
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x1

    if-gt v4, v2, :cond_2

    iget v6, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v2, v6, :cond_2

    .line 116
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 119
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 116
    :cond_1
    nop

    .line 115
    :goto_2
    add-int/2addr v4, v5

    goto :goto_1

    .line 122
    .end local v4    # "i":I
    :cond_2
    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v2, v4, :cond_4

    if-ne v2, v4, :cond_3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    nop

    :cond_4
    :goto_3
    return v5
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 7

    .line 167
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 168
    .local v0, "initialByteOffset":I
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 169
    .local v1, "initialBitOffset":I
    const/4 v2, 0x0

    .line 170
    .local v2, "leadingZeros":I
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    nop

    .line 173
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteLimit:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 174
    .local v3, "hitLimit":Z
    :goto_1
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 175
    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 176
    if-nez v3, :cond_2

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    nop

    :cond_2
    return v5
.end method

.method public readBit()Z
    .locals 3

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 133
    return v0
.end method

.method public readBits(I)I
    .locals 8
    .param p1, "numBits"    # I

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "returnValue":I
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 145
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-le v1, v4, :cond_1

    .line 146
    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 147
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->data:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    shl-int/2addr v1, v5

    or-int/2addr v0, v1

    .line 148
    add-int/lit8 v1, v4, 0x1

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/2addr v4, v2

    iput v4, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    goto :goto_0

    .line 150
    :cond_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v5, v7

    or-int/2addr v0, v5

    .line 151
    const/4 v5, -0x1

    rsub-int/lit8 v7, p1, 0x20

    ushr-int/2addr v5, v7

    and-int/2addr v0, v5

    .line 152
    if-ne v1, v4, :cond_3

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 154
    add-int/lit8 v1, v6, 0x1

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    add-int/2addr v6, v2

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    goto :goto_3

    .line 152
    :cond_3
    nop

    .line 156
    :goto_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->assertValidOffset()V

    .line 157
    return v0
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 3

    .line 194
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    .line 195
    .local v0, "codeNum":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int v1, v1, v2

    return v1
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    .line 185
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 57
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->data:[B

    .line 58
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 59
    iput p3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteLimit:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 61
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->assertValidOffset()V

    .line 62
    return-void
.end method

.method public skipBit()V
    .locals 3

    .line 68
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 70
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    nop

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    goto :goto_0

    .line 68
    :cond_1
    nop

    .line 72
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->assertValidOffset()V

    .line 73
    return-void
.end method

.method public skipBits(I)V
    .locals 4
    .param p1, "numBits"    # I

    .line 81
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 82
    .local v0, "oldByteOffset":I
    div-int/lit8 v1, p1, 0x8

    .line 83
    .local v1, "numBytes":I
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 84
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    mul-int/lit8 v3, v1, 0x8

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 85
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 86
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 87
    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->bitOffset:I

    goto :goto_0

    .line 85
    :cond_0
    nop

    .line 89
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_1
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    if-gt v2, v3, :cond_2

    .line 90
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 93
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 90
    :cond_1
    nop

    .line 89
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->assertValidOffset()V

    .line 97
    return-void
.end method
