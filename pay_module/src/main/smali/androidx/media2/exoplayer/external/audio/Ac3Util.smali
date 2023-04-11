.class public final Landroidx/media2/exoplayer/external/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 134
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 138
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 142
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/media2/exoplayer/external/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 146
    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroidx/media2/exoplayer/external/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 151
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 523
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 524
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 525
    .local v1, "endIndex":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 527
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const v4, -0x1000001

    and-int/2addr v3, v4

    const v4, -0x45908d08

    if-ne v3, v4, :cond_0

    .line 528
    sub-int v3, v2, v0

    return v3

    .line 525
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    .line 497
    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4
    .param p0, "fscod"    # I
    .param p1, "frmsizecod"    # I

    .line 571
    div-int/lit8 v0, p1, 0x2

    .line 572
    .local v0, "halfFrmsizecod":I
    if-ltz p0, :cond_3

    sget-object v1, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_3

    if-ltz p1, :cond_3

    sget-object v2, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    aget v1, v1, p0

    .line 578
    .local v1, "sampleRate":I
    const v3, 0xac44

    if-ne v1, v3, :cond_1

    .line 579
    aget v2, v2, v0

    rem-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    return v2

    .line 581
    :cond_1
    sget-object v2, Landroidx/media2/exoplayer/external/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v2, v2, v0

    .line 582
    .local v2, "bitrate":I
    const/16 v3, 0x7d00

    if-ne v1, v3, :cond_2

    .line 583
    mul-int/lit8 v3, v2, 0x6

    return v3

    .line 585
    :cond_2
    mul-int/lit8 v3, v2, 0x4

    return v3

    .line 572
    .end local v1    # "sampleRate":I
    .end local v2    # "bitrate":I
    :cond_3
    :goto_0
    nop

    .line 575
    const/4 v1, -0x1

    return v1
.end method

.method public static parseAc3AnnexFFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 15
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 166
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 167
    .local v0, "fscod":I
    sget-object v1, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v1, v0

    .line 168
    .local v1, "sampleRate":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 169
    .local v13, "nextByte":I
    sget-object v2, Landroidx/media2/exoplayer/external/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v3, v13, 0x38

    shr-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    .line 170
    .local v2, "channelCount":I
    and-int/lit8 v3, v13, 0x4

    if-eqz v3, :cond_0

    .line 171
    add-int/lit8 v2, v2, 0x1

    move v14, v2

    goto :goto_0

    .line 170
    :cond_0
    move v14, v2

    .line 173
    .end local v2    # "channelCount":I
    .local v14, "channelCount":I
    :goto_0
    const-string v3, "audio/ac3"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move v7, v14

    move v8, v1

    move-object/from16 v10, p3

    move-object/from16 v12, p2

    invoke-static/range {v2 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    return-object v2
.end method

.method public static parseAc3SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;
    .locals 28
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 250
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->getPosition()I

    move-result v1

    .line 251
    .local v1, "initialPosition":I
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 252
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 253
    .local v3, "isEac3":Z
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 255
    const/4 v6, -0x1

    .line 262
    .local v6, "streamType":I
    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_34

    .line 264
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 265
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 276
    const/4 v6, -0x1

    goto :goto_1

    .line 273
    :pswitch_0
    const/4 v6, 0x2

    .line 274
    goto :goto_1

    .line 270
    :pswitch_1
    const/4 v6, 0x1

    .line 271
    goto :goto_1

    .line 267
    :pswitch_2
    const/4 v6, 0x0

    .line 268
    nop

    .line 279
    :goto_1
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 280
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0x2

    .line 281
    .local v11, "frameSize":I
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 284
    .local v12, "fscod":I
    if-ne v12, v9, :cond_1

    .line 285
    const/4 v13, 0x3

    .line 286
    .local v13, "numblkscod":I
    sget-object v14, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v15

    aget v14, v14, v15

    .line 287
    .local v14, "sampleRate":I
    const/4 v15, 0x6

    goto :goto_2

    .line 289
    .end local v13    # "numblkscod":I
    .end local v14    # "sampleRate":I
    :cond_1
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 290
    .restart local v13    # "numblkscod":I
    sget-object v14, Landroidx/media2/exoplayer/external/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v15, v14, v13

    .line 291
    .local v15, "audioBlocks":I
    sget-object v14, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v14, v14, v12

    .line 293
    .restart local v14    # "sampleRate":I
    :goto_2
    mul-int/lit16 v8, v15, 0x100

    .line 294
    .local v8, "sampleCount":I
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 295
    .local v10, "acmod":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 296
    .local v18, "lfeon":Z
    sget-object v19, Landroidx/media2/exoplayer/external/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v19, v19, v10

    add-int v19, v19, v18

    .line 297
    .local v19, "channelCount":I
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 299
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 298
    :cond_2
    nop

    .line 301
    :goto_3
    if-nez v10, :cond_4

    .line 302
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 304
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    .line 303
    :cond_3
    goto :goto_4

    .line 301
    :cond_4
    nop

    .line 307
    :goto_4
    if-ne v6, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 308
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_5

    .line 307
    :cond_5
    nop

    .line 310
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v9, 0x4

    if-eqz v4, :cond_27

    .line 311
    const/4 v4, 0x2

    if-le v10, v4, :cond_6

    .line 312
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 311
    :cond_6
    nop

    .line 314
    :goto_6
    and-int/lit8 v17, v10, 0x1

    if-eqz v17, :cond_7

    if-le v10, v4, :cond_7

    .line 315
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_7

    .line 314
    :cond_7
    const/4 v4, 0x6

    .line 317
    :goto_7
    and-int/lit8 v16, v10, 0x4

    if-eqz v16, :cond_8

    .line 318
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_8

    .line 317
    :cond_8
    nop

    .line 320
    :goto_8
    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 321
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_9

    .line 320
    :cond_9
    nop

    .line 323
    :goto_9
    if-nez v6, :cond_26

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 325
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_a

    .line 324
    :cond_a
    const/4 v4, 0x6

    .line 327
    :goto_a
    if-nez v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 328
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_b

    .line 327
    :cond_b
    nop

    .line 330
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 331
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    .line 330
    :cond_c
    nop

    .line 333
    :goto_c
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 334
    .local v7, "mixdef":I
    if-ne v7, v5, :cond_d

    .line 335
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_17

    .line 336
    :cond_d
    if-ne v7, v4, :cond_e

    .line 337
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_17

    .line 338
    :cond_e
    const/4 v4, 0x3

    if-ne v7, v4, :cond_1d

    .line 339
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 340
    .local v4, "mixdeflen":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 341
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 343
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_d

    .line 342
    :cond_f
    nop

    .line 345
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 346
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_e

    .line 345
    :cond_10
    nop

    .line 348
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 349
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_f

    .line 348
    :cond_11
    nop

    .line 351
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 352
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_10

    .line 351
    :cond_12
    nop

    .line 354
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 355
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_11

    .line 354
    :cond_13
    nop

    .line 357
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 358
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_12

    .line 357
    :cond_14
    nop

    .line 360
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 361
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_13

    .line 360
    :cond_15
    nop

    .line 363
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 365
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_14

    .line 364
    :cond_16
    nop

    .line 367
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 368
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_15

    .line 367
    :cond_17
    goto :goto_15

    .line 363
    :cond_18
    goto :goto_15

    .line 340
    :cond_19
    nop

    .line 372
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 373
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 375
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 377
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_16

    .line 376
    :cond_1a
    const/16 v5, 0x8

    goto :goto_16

    .line 374
    :cond_1b
    const/16 v5, 0x8

    goto :goto_16

    .line 372
    :cond_1c
    const/16 v5, 0x8

    .line 381
    :goto_16
    add-int/lit8 v21, v4, 0x2

    mul-int/lit8 v9, v21, 0x8

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteAlign()V

    goto :goto_17

    .line 338
    .end local v4    # "mixdeflen":I
    :cond_1d
    nop

    .line 384
    :goto_17
    const/4 v4, 0x2

    if-ge v10, v4, :cond_21

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/16 v5, 0xe

    if-eqz v4, :cond_1e

    .line 386
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_18

    .line 385
    :cond_1e
    nop

    .line 388
    :goto_18
    if-nez v10, :cond_20

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 390
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_19

    .line 389
    :cond_1f
    goto :goto_19

    .line 388
    :cond_20
    goto :goto_19

    .line 384
    :cond_21
    nop

    .line 394
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 395
    if-nez v13, :cond_22

    .line 396
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1c

    .line 398
    :cond_22
    const/4 v4, 0x0

    .local v4, "blk":I
    :goto_1a
    if-ge v4, v15, :cond_24

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 400
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1b

    .line 399
    :cond_23
    nop

    .line 398
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_24
    goto :goto_1c

    .line 394
    .end local v4    # "blk":I
    :cond_25
    goto :goto_1c

    .line 323
    .end local v7    # "mixdef":I
    :cond_26
    goto :goto_1c

    .line 310
    :cond_27
    nop

    .line 407
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 408
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 409
    const/4 v2, 0x2

    if-ne v10, v2, :cond_28

    .line 410
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1d

    .line 409
    :cond_28
    nop

    .line 412
    :goto_1d
    const/4 v4, 0x6

    if-lt v10, v4, :cond_29

    .line 413
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1e

    .line 412
    :cond_29
    nop

    .line 415
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 416
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1f

    .line 415
    :cond_2a
    const/16 v2, 0x8

    .line 418
    :goto_1f
    if-nez v10, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 419
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_20

    .line 418
    :cond_2b
    nop

    .line 421
    :goto_20
    const/4 v2, 0x3

    if-ge v12, v2, :cond_2c

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBit()V

    goto :goto_21

    .line 421
    :cond_2c
    goto :goto_21

    .line 407
    :cond_2d
    const/4 v2, 0x3

    .line 425
    :goto_21
    if-nez v6, :cond_2e

    if-eq v13, v2, :cond_2e

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBit()V

    goto :goto_22

    .line 425
    :cond_2e
    nop

    .line 428
    :goto_22
    const/4 v4, 0x2

    if-ne v6, v4, :cond_31

    if-eq v13, v2, :cond_30

    .line 429
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_23

    :cond_2f
    const/4 v2, 0x6

    goto :goto_24

    .line 428
    :cond_30
    nop

    .line 430
    :goto_23
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_24

    .line 428
    :cond_31
    const/4 v2, 0x6

    .line 432
    :goto_24
    const-string v4, "audio/eac3"

    .line 433
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 434
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 435
    .local v2, "addbsil":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_32

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-ne v7, v5, :cond_32

    .line 436
    const-string v4, "audio/eac3-joc"

    goto :goto_25

    .line 435
    :cond_32
    goto :goto_25

    .line 433
    .end local v2    # "addbsil":I
    :cond_33
    nop

    .line 439
    .end local v12    # "fscod":I
    .end local v13    # "numblkscod":I
    .end local v15    # "audioBlocks":I
    :goto_25
    goto :goto_2b

    .line 440
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v8    # "sampleCount":I
    .end local v10    # "acmod":I
    .end local v11    # "frameSize":I
    .end local v14    # "sampleRate":I
    .end local v18    # "lfeon":Z
    .end local v19    # "channelCount":I
    :cond_34
    const-string v2, "audio/ac3"

    .line 441
    .local v2, "mimeType":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 442
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 443
    .local v5, "fscod":I
    const/4 v4, 0x3

    if-ne v5, v4, :cond_35

    .line 446
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_26

    .line 443
    :cond_35
    move-object v4, v2

    .line 448
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v4    # "mimeType":Ljava/lang/String;
    :goto_26
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 449
    .local v2, "frmsizecod":I
    invoke-static {v5, v2}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v11

    .line 450
    .restart local v11    # "frameSize":I
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 451
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 452
    .restart local v10    # "acmod":I
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_36

    const/4 v7, 0x1

    if-eq v10, v7, :cond_36

    .line 453
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_27

    .line 452
    :cond_36
    const/4 v7, 0x2

    .line 455
    :goto_27
    and-int/lit8 v8, v10, 0x4

    if-eqz v8, :cond_37

    .line 456
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_28

    .line 455
    :cond_37
    nop

    .line 458
    :goto_28
    if-ne v10, v7, :cond_38

    .line 459
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_29

    .line 458
    :cond_38
    nop

    .line 462
    :goto_29
    sget-object v7, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v8, v7

    if-ge v5, v8, :cond_39

    aget v7, v7, v5

    goto :goto_2a

    :cond_39
    const/4 v7, -0x1

    :goto_2a
    move v14, v7

    .line 463
    .restart local v14    # "sampleRate":I
    const/16 v8, 0x600

    .line 464
    .restart local v8    # "sampleCount":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 465
    .restart local v18    # "lfeon":Z
    sget-object v7, Landroidx/media2/exoplayer/external/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v7, v7, v10

    add-int v19, v7, v18

    .line 467
    .end local v2    # "frmsizecod":I
    .end local v5    # "fscod":I
    .restart local v19    # "channelCount":I
    :goto_2b
    new-instance v2, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;

    const/16 v27, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v19

    move/from16 v24, v14

    move/from16 v25, v11

    move/from16 v26, v8

    invoke-direct/range {v20 .. v27}, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILandroidx/media2/exoplayer/external/audio/Ac3Util$1;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 4
    .param p0, "data"    # [B

    .line 478
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 479
    const/4 v0, -0x1

    return v0

    .line 481
    :cond_0
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 482
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 483
    const/4 v1, 0x2

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x8

    .line 484
    .local v3, "frmsiz":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 485
    .end local v3    # "frmsiz":I
    .local v2, "frmsiz":I
    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    return v3

    .line 487
    .end local v2    # "frmsiz":I
    :cond_2
    const/4 v2, 0x4

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v1, v3, 0x6

    .line 488
    .local v1, "fscod":I
    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    .line 489
    .local v2, "frmsizecod":I
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v3

    return v3
.end method

.method public static parseEAc3AnnexFFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 18
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 199
    const/4 v0, 0x2

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 203
    .local v0, "fscod":I
    sget-object v2, Landroidx/media2/exoplayer/external/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v2, v2, v0

    .line 204
    .local v2, "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 205
    .local v3, "nextByte":I
    sget-object v4, Landroidx/media2/exoplayer/external/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v5, v3, 0xe

    shr-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    .line 206
    .local v4, "channelCount":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    :cond_0
    nop

    .line 211
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 212
    and-int/lit8 v5, v3, 0x1e

    shr-int/lit8 v14, v5, 0x1

    .line 213
    .local v14, "numDepSub":I
    if-lez v14, :cond_2

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 217
    .local v5, "lowByteChanLoc":I
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1

    .line 218
    add-int/lit8 v4, v4, 0x2

    move v15, v4

    goto :goto_2

    .line 217
    :cond_1
    goto :goto_1

    .line 213
    .end local v5    # "lowByteChanLoc":I
    :cond_2
    nop

    .line 221
    :goto_1
    move v15, v4

    .end local v4    # "channelCount":I
    .local v15, "channelCount":I
    :goto_2
    const-string v4, "audio/eac3"

    .line 222
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_4

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 224
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_3

    .line 225
    const-string v4, "audio/eac3-joc"

    move/from16 v17, v3

    move-object/from16 v16, v4

    goto :goto_3

    .line 224
    :cond_3
    move/from16 v17, v3

    move-object/from16 v16, v4

    goto :goto_3

    .line 222
    :cond_4
    move/from16 v17, v3

    move-object/from16 v16, v4

    .line 228
    .end local v3    # "nextByte":I
    .end local v4    # "mimeType":Ljava/lang/String;
    .local v16, "mimeType":Ljava/lang/String;
    .local v17, "nextByte":I
    :goto_3
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move v8, v15

    move v9, v2

    move-object/from16 v11, p3

    move-object/from16 v13, p2

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    return-object v3
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 509
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v0, v1

    .line 510
    .local v0, "fscod":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    sget-object v1, Landroidx/media2/exoplayer/external/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    .line 510
    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 566
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 567
    .local v0, "isMlp":Z
    :goto_0
    const/16 v1, 0x28

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-eqz v0, :cond_1

    const/16 v3, 0x9

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x7

    shl-int/2addr v1, v2

    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .locals 5
    .param p0, "syncframe"    # [B

    .line 546
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, -0x8

    if-ne v1, v3, :cond_3

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_3

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_3

    const/4 v1, 0x7

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xba

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 552
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    nop

    .line 553
    .local v2, "isMlp":Z
    :cond_1
    const/16 v3, 0x28

    if-eqz v2, :cond_2

    const/16 v4, 0x9

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    :goto_0
    aget-byte v4, p0, v4

    shr-int/lit8 v0, v4, 0x4

    and-int/2addr v0, v1

    shl-int v0, v3, v0

    return v0

    .line 546
    .end local v2    # "isMlp":Z
    :cond_3
    :goto_1
    nop

    .line 550
    return v2
.end method
