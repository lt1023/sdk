.class final Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;
.super Ljava/lang/Object;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# instance fields
.field private final bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private final colors:[I

.field private colorsSet:Z

.field private planeHeight:I

.field private planeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 136
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    .line 137
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->parsePaletteSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->parseBitmapSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "x2"    # I

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->parseIdentifierSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    return-void
.end method

.method private parseBitmapSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 6
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 167
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 171
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 172
    .local v1, "isBaseSection":Z
    :goto_0
    add-int/lit8 p2, p2, -0x4

    .line 174
    if-eqz v1, :cond_4

    .line 175
    const/4 v2, 0x7

    if-ge p2, v2, :cond_2

    .line 176
    return-void

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 179
    .local v2, "totalLength":I
    if-ge v2, v0, :cond_3

    .line 180
    return-void

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    .line 183
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 185
    add-int/lit8 p2, p2, -0x7

    goto :goto_1

    .line 174
    .end local v2    # "totalLength":I
    :cond_4
    nop

    .line 188
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 189
    .local v0, "position":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    .line 190
    .local v2, "limit":I
    if-ge v0, v2, :cond_5

    if-lez p2, :cond_5

    .line 191
    sub-int v3, v2, v0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 192
    .local v3, "bytesToRead":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v4, v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 193
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int v5, v0, v3

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 190
    .end local v3    # "bytesToRead":I
    :cond_5
    nop

    .line 195
    :goto_2
    return-void
.end method

.method private parseIdentifierSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 1
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 198
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    .line 202
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    .line 203
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 204
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    .line 205
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    .line 206
    return-void
.end method

.method private parsePaletteSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .locals 17
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "sectionLength"    # I

    .line 140
    move-object/from16 v0, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 146
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 147
    div-int/lit8 v2, p2, 0x5

    .line 148
    .local v2, "entryCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 150
    .local v5, "index":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 151
    .local v6, "y":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 152
    .local v7, "cr":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 153
    .local v8, "cb":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 154
    .local v9, "a":I
    int-to-double v10, v6

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v14, v7, -0x80

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v14

    double-to-int v10, v10

    .line 155
    .local v10, "r":I
    int-to-double v11, v6

    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v15, v8, -0x80

    move/from16 v16, v4

    .end local v4    # "i":I
    .local v16, "i":I
    int-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v3

    const-wide v3, 0x3fe6da3c21187e7cL    # 0.71414

    add-int/lit8 v13, v7, -0x80

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v3

    sub-double/2addr v11, v13

    double-to-int v3, v11

    .line 156
    .local v3, "g":I
    int-to-double v11, v6

    const-wide v13, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v4, v8, -0x80

    move v15, v2

    .end local v2    # "entryCount":I
    .local v15, "entryCount":I
    int-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v1

    double-to-int v1, v11

    .line 157
    .local v1, "b":I
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    shl-int/lit8 v4, v9, 0x18

    .line 159
    const/16 v11, 0xff

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v13

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v4, v13

    .line 160
    invoke-static {v3, v12, v11}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v4, v13

    .line 161
    invoke-static {v1, v12, v11}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v11

    or-int/2addr v4, v11

    aput v4, v2, v5

    .line 148
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v5    # "index":I
    .end local v6    # "y":I
    .end local v7    # "cr":I
    .end local v8    # "cb":I
    .end local v9    # "a":I
    .end local v10    # "r":I
    add-int/lit8 v4, v16, 0x1

    move v2, v15

    move-object/from16 v1, p1

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v15    # "entryCount":I
    .end local v16    # "i":I
    .restart local v2    # "entryCount":I
    .restart local v4    # "i":I
    :cond_1
    move v15, v2

    move/from16 v16, v4

    .line 163
    .end local v2    # "entryCount":I
    .end local v4    # "i":I
    .restart local v15    # "entryCount":I
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    .line 164
    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/exoplayer/external/text/Cue;
    .locals 13

    .line 209
    iget v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 213
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 214
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 219
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 220
    iget v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v2, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    mul-int v0, v0, v2

    new-array v0, v0, [I

    .line 221
    .local v0, "argbBitmapData":[I
    const/4 v2, 0x0

    .line 222
    .local v2, "argbBitmapDataIndex":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 223
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 224
    .local v3, "colorIndex":I
    if-eqz v3, :cond_1

    .line 225
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argbBitmapDataIndex":I
    .local v4, "argbBitmapDataIndex":I
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    aget v5, v5, v3

    aput v5, v0, v2

    move v2, v4

    goto :goto_3

    .line 227
    .end local v4    # "argbBitmapDataIndex":I
    .restart local v2    # "argbBitmapDataIndex":I
    :cond_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 228
    .local v4, "switchBits":I
    if-eqz v4, :cond_4

    .line 230
    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_2

    .line 231
    and-int/lit8 v5, v4, 0x3f

    goto :goto_1

    .line 232
    :cond_2
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    or-int/2addr v5, v6

    :goto_1
    nop

    .line 233
    .local v5, "runLength":I
    and-int/lit16 v6, v4, 0x80

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    aget v6, v6, v7

    .line 234
    .local v6, "color":I
    :goto_2
    add-int v7, v2, v5

    invoke-static {v0, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 236
    add-int/2addr v2, v5

    goto :goto_3

    .line 228
    .end local v5    # "runLength":I
    .end local v6    # "color":I
    :cond_4
    nop

    .line 239
    .end local v3    # "colorIndex":I
    .end local v4    # "switchBits":I
    :goto_3
    goto :goto_0

    .line 240
    :cond_5
    iget v1, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v3, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 241
    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroidx/media2/exoplayer/external/text/Cue;

    iget v4, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    int-to-float v6, v5

    div-float v7, v4, v6

    const/4 v8, 0x0

    iget v4, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    int-to-float v4, v4

    iget v6, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    int-to-float v9, v6

    div-float v9, v4, v9

    const/4 v10, 0x0

    iget v4, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    int-to-float v4, v4

    int-to-float v5, v5

    div-float v11, v4, v5

    iget v4, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    int-to-float v4, v4

    int-to-float v5, v6

    div-float v12, v4, v5

    move-object v5, v3

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v3

    .line 214
    .end local v0    # "argbBitmapData":[I
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "argbBitmapDataIndex":I
    :cond_6
    :goto_4
    goto :goto_5

    .line 213
    :cond_7
    goto :goto_5

    .line 209
    :cond_8
    nop

    .line 216
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    .line 255
    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    .line 256
    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    .line 257
    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    .line 258
    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    .line 259
    iput v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    .line 260
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 261
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    .line 262
    return-void
.end method
