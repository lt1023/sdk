.class public final Landroidx/media2/exoplayer/external/audio/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field private static final SAMPLE_COUNT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/audio/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc4SampleHeader(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 3
    .param p0, "size"    # I
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 228
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 229
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 230
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 231
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, -0x1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 232
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 233
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 234
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 235
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 236
    return-void
.end method

.method public static parseAc4AnnexEFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 12
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 108
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    shr-int/lit8 v1, v1, 0x5

    if-ne v1, v0, :cond_0

    const v0, 0xbb80

    const v7, 0xbb80

    goto :goto_0

    :cond_0
    const v0, 0xac44

    const v7, 0xac44

    .line 109
    .local v7, "sampleRate":I
    :goto_0
    const-string v2, "audio/ac4"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move-object v9, p3

    move-object v11, p2

    invoke-static/range {v1 .. v11}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 218
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 219
    .local v0, "bufferBytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 220
    .local v1, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    new-instance v2, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;

    move-result-object v2

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return v2
.end method

.method public static parseAc4SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;
    .locals 17
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 131
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 132
    .local v1, "headerSize":I
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 133
    .local v3, "syncWord":I
    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 134
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 135
    .local v2, "frameSize":I
    add-int/2addr v1, v4

    .line 136
    const v5, 0xffff

    if-ne v2, v5, :cond_0

    .line 137
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 138
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 140
    :goto_0
    add-int/2addr v2, v1

    .line 141
    const v5, 0xac41

    if-ne v3, v5, :cond_1

    .line 142
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 141
    :cond_1
    nop

    .line 144
    :goto_1
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 145
    .local v5, "bitstreamVersion":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 146
    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->readVariableBits(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)I

    move-result v7

    add-int/2addr v5, v7

    move v12, v5

    goto :goto_2

    .line 145
    :cond_2
    move v12, v5

    .line 148
    .end local v5    # "bitstreamVersion":I
    .local v12, "bitstreamVersion":I
    :goto_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 149
    .local v13, "sequenceCounter":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 150
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 151
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 150
    :cond_3
    goto :goto_3

    .line 149
    :cond_4
    nop

    .line 154
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v5, 0xbb80

    const v7, 0xac44

    if-eqz v4, :cond_5

    const v4, 0xbb80

    goto :goto_4

    :cond_5
    const v4, 0xac44

    .line 155
    .local v4, "sampleRate":I
    :goto_4
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 156
    .local v14, "frameRateIndex":I
    const/4 v8, 0x0

    .line 157
    .local v8, "sampleCount":I
    if-ne v4, v7, :cond_6

    const/16 v7, 0xd

    if-ne v14, v7, :cond_6

    .line 158
    sget-object v5, Landroidx/media2/exoplayer/external/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget v5, v5, v14

    move v15, v5

    goto :goto_9

    .line 157
    :cond_6
    nop

    .line 159
    if-ne v4, v5, :cond_d

    sget-object v5, Landroidx/media2/exoplayer/external/audio/Ac4Util;->SAMPLE_COUNT:[I

    array-length v7, v5

    if-ge v14, v7, :cond_d

    .line 160
    aget v5, v5, v14

    .line 161
    .end local v8    # "sampleCount":I
    .local v5, "sampleCount":I
    rem-int/lit8 v7, v13, 0x5

    const/16 v8, 0xb

    const/16 v9, 0x8

    packed-switch v7, :pswitch_data_0

    goto :goto_8

    .line 174
    :pswitch_0
    if-eq v14, v6, :cond_8

    if-eq v14, v9, :cond_8

    if-ne v14, v8, :cond_7

    goto :goto_5

    :cond_7
    goto :goto_8

    .line 175
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v15, v5

    goto :goto_9

    .line 169
    :pswitch_1
    if-eq v14, v9, :cond_a

    if-ne v14, v8, :cond_9

    goto :goto_6

    :cond_9
    goto :goto_8

    .line 170
    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v15, v5

    goto :goto_9

    .line 164
    :pswitch_2
    if-eq v14, v6, :cond_c

    if-ne v14, v9, :cond_b

    goto :goto_7

    :cond_b
    goto :goto_8

    .line 165
    :cond_c
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move v15, v5

    goto :goto_9

    .line 182
    :goto_8
    move v15, v5

    goto :goto_9

    .line 159
    .end local v5    # "sampleCount":I
    .restart local v8    # "sampleCount":I
    :cond_d
    nop

    .line 182
    move v15, v8

    .end local v8    # "sampleCount":I
    .local v15, "sampleCount":I
    :goto_9
    new-instance v16, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;

    const/4 v7, 0x2

    const/4 v11, 0x0

    move-object/from16 v5, v16

    move v6, v12

    move v8, v4

    move v9, v2

    move v10, v15

    invoke-direct/range {v5 .. v11}, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;-><init>(IIIIILandroidx/media2/exoplayer/external/audio/Ac4Util$1;)V

    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "syncword"    # I

    .line 193
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 194
    const/4 v0, -0x1

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x2

    .line 197
    .local v0, "headerSize":I
    const/4 v1, 0x2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 198
    .local v2, "frameSize":I
    add-int/2addr v0, v1

    .line 199
    const v1, 0xffff

    if-ne v2, v1, :cond_1

    .line 200
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v2, v1, v3

    .line 201
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 199
    :cond_1
    nop

    .line 203
    :goto_0
    const v1, 0xac41

    if-ne p1, v1, :cond_2

    .line 204
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 203
    :cond_2
    nop

    .line 206
    :goto_1
    add-int/2addr v2, v0

    .line 207
    return v2
.end method

.method private static readVariableBits(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)I
    .locals 2
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "bitsPerRead"    # I

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    nop

    .line 248
    return v0

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 246
    shl-int/2addr v0, p1

    goto :goto_0
.end method
