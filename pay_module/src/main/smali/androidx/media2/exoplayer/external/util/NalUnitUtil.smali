.class public final Landroidx/media2/exoplayer/external/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;,
        Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 108
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 138
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .line 495
    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    .line 496
    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    .line 497
    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    .line 498
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 198
    .local v0, "length":I
    const/4 v1, 0x0

    .line 199
    .local v1, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 200
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_4

    .line 201
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 202
    .local v3, "value":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 203
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 206
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 208
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 210
    return-void

    .line 203
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    goto :goto_1

    .line 212
    :cond_1
    if-nez v3, :cond_2

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_2
    nop

    .line 215
    :goto_1
    if-eqz v3, :cond_3

    .line 216
    const/4 v1, 0x0

    goto :goto_2

    .line 215
    :cond_3
    nop

    .line 218
    :goto_2
    nop

    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    .line 219
    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 222
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .line 433
    sub-int v0, p2, p1

    .line 435
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 436
    if-nez v0, :cond_1

    .line 437
    return p2

    .line 440
    :cond_1
    const/4 v3, 0x2

    if-eqz p3, :cond_5

    .line 441
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_2

    .line 442
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 443
    add-int/lit8 v1, p1, -0x3

    return v1

    .line 444
    :cond_2
    if-le v0, v2, :cond_3

    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    .line 445
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 446
    add-int/lit8 v1, p1, -0x2

    return v1

    .line 444
    :cond_3
    nop

    .line 447
    if-le v0, v3, :cond_4

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 449
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 450
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 447
    :cond_4
    goto :goto_1

    .line 440
    :cond_5
    nop

    .line 454
    :goto_1
    add-int/lit8 v4, p2, -0x1

    .line 457
    .local v4, "limit":I
    add-int/lit8 v5, p1, 0x2

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_9

    .line 458
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xfe

    if-eqz v6, :cond_6

    goto :goto_4

    .line 461
    :cond_6
    add-int/lit8 v6, v5, -0x2

    aget-byte v6, p0, v6

    if-nez v6, :cond_8

    add-int/lit8 v6, v5, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_8

    aget-byte v6, p0, v5

    if-ne v6, v2, :cond_8

    .line 462
    if-eqz p3, :cond_7

    .line 463
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    goto :goto_3

    .line 462
    :cond_7
    nop

    .line 465
    :goto_3
    add-int/lit8 v1, v5, -0x2

    return v1

    .line 461
    :cond_8
    nop

    .line 469
    add-int/lit8 v5, v5, -0x2

    .line 457
    :goto_4
    add-int/lit8 v5, v5, 0x3

    goto :goto_2

    .line 473
    .end local v5    # "i":I
    :cond_9
    if-eqz p3, :cond_13

    .line 475
    if-le v0, v3, :cond_b

    .line 476
    add-int/lit8 v5, p2, -0x3

    aget-byte v5, p0, v5

    if-nez v5, :cond_a

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_a

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 477
    :cond_b
    if-ne v0, v3, :cond_d

    aget-boolean v5, p3, v3

    if-eqz v5, :cond_c

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_c

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    .line 478
    :cond_d
    aget-boolean v5, p3, v2

    if-eqz v5, :cond_e

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_e

    const/4 v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :goto_5
    aput-boolean v5, p3, v1

    .line 480
    if-le v0, v2, :cond_10

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_f

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    goto :goto_6

    .line 481
    :cond_10
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_11

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_6

    :cond_11
    const/4 v5, 0x0

    :goto_6
    aput-boolean v5, p3, v2

    .line 483
    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_12

    const/4 v1, 0x1

    nop

    :cond_12
    aput-boolean v1, p3, v3

    goto :goto_7

    .line 473
    :cond_13
    nop

    .line 486
    :goto_7
    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 501
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 502
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 503
    return v0

    .line 502
    :cond_0
    nop

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 260
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 248
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "nalUnitHeaderFirstByte"    # B

    .line 233
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "video/hevc"

    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x7e

    shr-int/2addr v0, v1

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 233
    :goto_2
    return v1
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    .locals 5
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 401
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 402
    .local v0, "data":Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 403
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 404
    .local v1, "picParameterSetId":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 405
    .local v2, "seqParameterSetId":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 406
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 407
    .local v3, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v4, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;

    invoke-direct {v4, v1, v2, v3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v4
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    .locals 38
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 273
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 274
    .local v0, "data":Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 275
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .line 276
    .local v15, "profileIdc":I
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v19

    .line 277
    .local v19, "constraintsFlagsAndReservedZero2Bits":I
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v20

    .line 278
    .local v20, "levelIdc":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .line 280
    .local v21, "seqParameterSetId":I
    const/4 v5, 0x1

    .line 281
    .local v5, "chromaFormatIdc":I
    const/4 v6, 0x0

    .line 282
    .local v6, "separateColorPlaneFlag":Z
    const/4 v7, 0x3

    const/16 v8, 0x10

    const/16 v9, 0x64

    if-eq v15, v9, :cond_1

    const/16 v9, 0x6e

    if-eq v15, v9, :cond_1

    const/16 v9, 0x7a

    if-eq v15, v9, :cond_1

    const/16 v9, 0xf4

    if-eq v15, v9, :cond_1

    const/16 v9, 0x2c

    if-eq v15, v9, :cond_1

    const/16 v9, 0x53

    if-eq v15, v9, :cond_1

    const/16 v9, 0x56

    if-eq v15, v9, :cond_1

    const/16 v9, 0x76

    if-eq v15, v9, :cond_1

    const/16 v9, 0x80

    if-eq v15, v9, :cond_1

    const/16 v9, 0x8a

    if-ne v15, v9, :cond_0

    goto :goto_0

    :cond_0
    move v14, v5

    move/from16 v22, v6

    goto :goto_7

    .line 285
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 286
    if-ne v5, v7, :cond_2

    .line 287
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    goto :goto_1

    .line 286
    :cond_2
    nop

    .line 289
    :goto_1
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 290
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 291
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 292
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 293
    .local v9, "seqScalingMatrixPresentFlag":Z
    if-eqz v9, :cond_7

    .line 294
    if-eq v5, v7, :cond_3

    const/16 v10, 0x8

    goto :goto_2

    :cond_3
    const/16 v10, 0xc

    .line 295
    .local v10, "limit":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_6

    .line 296
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    .line 297
    .local v12, "seqScalingListPresentFlag":Z
    if-eqz v12, :cond_5

    .line 298
    const/4 v13, 0x6

    if-ge v11, v13, :cond_4

    const/16 v13, 0x10

    goto :goto_4

    :cond_4
    const/16 v13, 0x40

    :goto_4
    invoke-static {v0, v13}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;I)V

    goto :goto_5

    .line 297
    :cond_5
    nop

    .line 295
    .end local v12    # "seqScalingListPresentFlag":Z
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    goto :goto_6

    .line 293
    .end local v10    # "limit":I
    .end local v11    # "i":I
    :cond_7
    nop

    .line 304
    .end local v9    # "seqScalingMatrixPresentFlag":Z
    :goto_6
    move v14, v5

    move/from16 v22, v6

    .end local v5    # "chromaFormatIdc":I
    .end local v6    # "separateColorPlaneFlag":Z
    .local v14, "chromaFormatIdc":I
    .local v22, "separateColorPlaneFlag":Z
    :goto_7
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v23, v5, 0x4

    .line 305
    .local v23, "frameNumLength":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 306
    .local v13, "picOrderCntType":I
    const/4 v5, 0x0

    .line 307
    .local v5, "picOrderCntLsbLength":I
    const/4 v6, 0x0

    .line 308
    .local v6, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v9, 0x1

    if-nez v13, :cond_8

    .line 310
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    move/from16 v24, v6

    move v4, v10

    goto :goto_9

    .line 311
    :cond_8
    if-ne v13, v9, :cond_a

    .line 312
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 313
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 314
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 315
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    int-to-long v10, v10

    .line 316
    .local v10, "numRefFramesInPicOrderCntCycle":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    move/from16 v17, v5

    .end local v5    # "picOrderCntLsbLength":I
    .local v17, "picOrderCntLsbLength":I
    int-to-long v4, v12

    cmp-long v18, v4, v10

    if-gez v18, :cond_9

    .line 317
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 316
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v17

    const/16 v4, 0x8

    goto :goto_8

    :cond_9
    move/from16 v24, v6

    move/from16 v4, v17

    goto :goto_9

    .line 311
    .end local v10    # "numRefFramesInPicOrderCntCycle":J
    .end local v12    # "i":I
    .end local v17    # "picOrderCntLsbLength":I
    .restart local v5    # "picOrderCntLsbLength":I
    :cond_a
    move/from16 v17, v5

    .end local v5    # "picOrderCntLsbLength":I
    .restart local v17    # "picOrderCntLsbLength":I
    move/from16 v24, v6

    move/from16 v4, v17

    .line 320
    .end local v6    # "deltaPicOrderAlwaysZeroFlag":Z
    .end local v17    # "picOrderCntLsbLength":I
    .local v4, "picOrderCntLsbLength":I
    .local v24, "deltaPicOrderAlwaysZeroFlag":Z
    :goto_9
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 321
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 323
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v25, v5, 0x1

    .line 324
    .local v25, "picWidthInMbs":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v26, v5, 0x1

    .line 325
    .local v26, "picHeightInMapUnits":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v27

    .line 326
    .local v27, "frameMbsOnlyFlag":Z
    nop

    const/4 v5, 0x2

    rsub-int/lit8 v6, v27, 0x2

    mul-int v28, v6, v26

    .line 327
    .local v28, "frameHeightInMbs":I
    nop

    if-nez v27, :cond_b

    .line 328
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    goto :goto_a

    .line 327
    :cond_b
    nop

    .line 331
    :goto_a
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 332
    nop

    mul-int/lit8 v6, v25, 0x10

    .line 333
    .local v6, "frameWidth":I
    nop

    mul-int/lit8 v10, v28, 0x10

    .line 334
    .local v10, "frameHeight":I
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v29

    .line 335
    .local v29, "frameCroppingFlag":Z
    nop

    if-eqz v29, :cond_f

    .line 336
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 337
    .local v11, "frameCropLeftOffset":I
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 338
    .local v12, "frameCropRightOffset":I
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 339
    .local v17, "frameCropTopOffset":I
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 342
    .local v18, "frameCropBottomOffset":I
    nop

    if-nez v14, :cond_c

    .line 343
    nop

    const/4 v7, 0x1

    .line 344
    .local v7, "cropUnitX":I
    nop

    nop

    nop

    rsub-int/lit8 v5, v27, 0x2

    move/from16 v30, v7

    goto :goto_d

    .line 346
    .end local v7    # "cropUnitX":I
    :cond_c
    nop

    if-ne v14, v7, :cond_d

    nop

    const/4 v7, 0x1

    goto :goto_b

    :cond_d
    nop

    const/4 v7, 0x2

    :goto_b
    nop

    .line 347
    .local v7, "subWidthC":I
    nop

    if-ne v14, v9, :cond_e

    nop

    const/4 v9, 0x2

    goto :goto_c

    :cond_e
    nop

    :goto_c
    nop

    .line 348
    .local v9, "subHeightC":I
    nop

    move/from16 v30, v7

    .line 349
    .local v30, "cropUnitX":I
    nop

    nop

    nop

    rsub-int/lit8 v5, v27, 0x2

    mul-int v5, v5, v9

    .line 351
    .end local v7    # "subWidthC":I
    .end local v9    # "subHeightC":I
    .local v5, "cropUnitY":I
    :goto_d
    nop

    add-int v7, v11, v12

    mul-int v7, v7, v30

    sub-int/2addr v6, v7

    .line 352
    nop

    add-int v7, v17, v18

    mul-int v7, v7, v5

    sub-int/2addr v10, v7

    move/from16 v30, v6

    move/from16 v31, v10

    goto :goto_e

    .line 335
    .end local v5    # "cropUnitY":I
    .end local v11    # "frameCropLeftOffset":I
    .end local v12    # "frameCropRightOffset":I
    .end local v17    # "frameCropTopOffset":I
    .end local v18    # "frameCropBottomOffset":I
    .end local v30    # "cropUnitX":I
    :cond_f
    nop

    move/from16 v30, v6

    move/from16 v31, v10

    .line 355
    .end local v6    # "frameWidth":I
    .end local v10    # "frameHeight":I
    .local v30, "frameWidth":I
    .local v31, "frameHeight":I
    :goto_e
    nop

    const/high16 v5, 0x3f800000    # 1.0f

    .line 356
    .local v5, "pixelWidthHeightRatio":F
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v32

    .line 357
    .local v32, "vuiParametersPresentFlag":Z
    nop

    if-eqz v32, :cond_14

    .line 358
    nop

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 359
    .local v6, "aspectRatioInfoPresentFlag":Z
    nop

    if-eqz v6, :cond_13

    .line 360
    nop

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 361
    .local v7, "aspectRatioIdc":I
    nop

    const/16 v9, 0xff

    if-ne v7, v9, :cond_11

    .line 362
    nop

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    .line 363
    .local v9, "sarWidth":I
    nop

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 364
    .local v8, "sarHeight":I
    nop

    if-eqz v9, :cond_10

    nop

    if-eqz v8, :cond_10

    .line 365
    nop

    int-to-float v10, v9

    int-to-float v11, v8

    div-float v5, v10, v11

    goto :goto_f

    .line 364
    :cond_10
    nop

    .line 367
    .end local v8    # "sarHeight":I
    .end local v9    # "sarWidth":I
    :goto_f
    nop

    move/from16 v33, v5

    goto :goto_11

    :cond_11
    nop

    sget-object v8, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v9, v8

    if-ge v7, v9, :cond_12

    .line 368
    nop

    aget v5, v8, v7

    move/from16 v33, v5

    goto :goto_11

    .line 370
    :cond_12
    nop

    const-string v8, "NalUnitUtil"

    const/16 v9, 0x2e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 359
    .end local v7    # "aspectRatioIdc":I
    :cond_13
    nop

    goto :goto_10

    .line 357
    .end local v6    # "aspectRatioInfoPresentFlag":Z
    :cond_14
    nop

    .line 375
    :goto_10
    move/from16 v33, v5

    .end local v5    # "pixelWidthHeightRatio":F
    .local v33, "pixelWidthHeightRatio":F
    :goto_11
    nop

    new-instance v34, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    move-object/from16 v5, v34

    move v6, v15

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v30

    move/from16 v11, v31

    move/from16 v12, v33

    move/from16 v35, v13

    .end local v13    # "picOrderCntType":I
    .local v35, "picOrderCntType":I
    move/from16 v13, v22

    move/from16 v36, v14

    .end local v14    # "chromaFormatIdc":I
    .local v36, "chromaFormatIdc":I
    move/from16 v14, v27

    move/from16 v37, v15

    .end local v15    # "profileIdc":I
    .local v37, "profileIdc":I
    move/from16 v15, v23

    move/from16 v16, v35

    move/from16 v17, v4

    move/from16 v18, v24

    invoke-direct/range {v5 .. v18}, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;-><init>(IIIIIIFZZIIIZ)V

    return-object v34
.end method

.method private static skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;
    .param p1, "size"    # I

    .line 510
    const/16 v0, 0x8

    .line 511
    .local v0, "lastScale":I
    const/16 v1, 0x8

    .line 512
    .local v1, "nextScale":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 513
    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v3

    .line 515
    .local v3, "deltaScale":I
    add-int v4, v0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    move v1, v4

    goto :goto_1

    .line 513
    .end local v3    # "deltaScale":I
    :cond_0
    nop

    .line 517
    :goto_1
    if-nez v1, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    move v0, v3

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .line 152
    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "position":I
    const/4 v2, 0x0

    .line 155
    .local v2, "scratchEscapeCount":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 156
    :try_start_0
    invoke-static {p0, v1, p1}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v3

    move v1, v3

    .line 157
    if-ge v1, p1, :cond_1

    .line 158
    sget-object v3, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v3, v3

    if-gt v3, v2, :cond_0

    .line 160
    sget-object v3, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v4, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    sput-object v3, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    goto :goto_1

    .line 158
    :cond_0
    nop

    .line 163
    :goto_1
    sget-object v3, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v1, v3, v2

    .line 164
    add-int/lit8 v1, v1, 0x3

    move v2, v4

    goto :goto_0

    .line 157
    .end local v4    # "scratchEscapeCount":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_1
    goto :goto_0

    .line 184
    .end local v1    # "position":I
    .end local v2    # "scratchEscapeCount":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 168
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int v3, p1, v2

    .line 169
    .local v3, "unescapedLength":I
    const/4 v4, 0x0

    .line 170
    .local v4, "escapedPosition":I
    const/4 v5, 0x0

    .line 171
    .local v5, "unescapedPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_3

    .line 172
    sget-object v7, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v7, v7, v6

    .line 173
    .local v7, "nextEscapePosition":I
    sub-int v8, v7, v4

    .line 174
    .local v8, "copyLength":I
    invoke-static {p0, v4, p0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    add-int/2addr v5, v8

    .line 176
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "unescapedPosition":I
    .local v9, "unescapedPosition":I
    const/4 v10, 0x0

    aput-byte v10, p0, v5

    .line 177
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v10, p0, v9

    .line 178
    add-int/lit8 v9, v8, 0x3

    add-int/2addr v4, v9

    .line 171
    .end local v7    # "nextEscapePosition":I
    .end local v8    # "copyLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 181
    .end local v6    # "i":I
    :cond_3
    sub-int v6, v3, v5

    .line 182
    .local v6, "remainingLength":I
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    monitor-exit v0

    return v3

    .line 184
    .end local v1    # "position":I
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4    # "escapedPosition":I
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method
