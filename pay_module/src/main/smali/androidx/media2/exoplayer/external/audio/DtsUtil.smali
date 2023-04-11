.class public final Landroidx/media2/exoplayer/external/audio/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field private static final FIRST_BYTE_14B_BE:B = 0x1ft

.field private static final FIRST_BYTE_14B_LE:B = -0x1t

.field private static final FIRST_BYTE_BE:B = 0x7ft

.field private static final FIRST_BYTE_LE:B = -0x2t

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SYNC_VALUE_14B_BE:I = 0x1fffe800

.field private static final SYNC_VALUE_14B_LE:I = -0xe0ff18

.field private static final SYNC_VALUE_BE:I = 0x7ffe8001

.field private static final SYNC_VALUE_LE:I = -0x180fe80

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 54
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/exoplayer/external/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    .line 60
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media2/exoplayer/external/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .locals 6
    .param p0, "data"    # [B

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "uses14BitPerWord":Z
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/16 v2, 0x1f

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 181
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v5

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :pswitch_0
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 177
    .local v1, "fsize":I
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 173
    .end local v1    # "fsize":I
    :pswitch_1
    aget-byte v1, p0, v5

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v5

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 174
    .restart local v1    # "fsize":I
    goto :goto_0

    .line 169
    .end local v1    # "fsize":I
    :cond_0
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 170
    .restart local v1    # "fsize":I
    const/4 v0, 0x1

    .line 171
    nop

    .line 185
    :goto_0
    if-eqz v0, :cond_1

    mul-int/lit8 v2, v1, 0x10

    div-int/lit8 v2, v2, 0xe

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNormalizedFrameHeader([B)Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .locals 4
    .param p0, "frameHeader"    # [B

    .line 189
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    .line 191
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    return-object v0

    .line 194
    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 195
    invoke-static {p0}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 198
    aget-byte v2, p0, v1

    .line 199
    .local v2, "temp":B
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 200
    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v3

    .line 197
    .end local v2    # "temp":B
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 195
    .end local v1    # "i":I
    :cond_2
    nop

    .line 203
    :goto_1
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    .line 204
    .local v1, "frameBits":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_4

    .line 206
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    .line 207
    .local v0, "scratchBits":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    :goto_2
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 208
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 209
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->putInt(II)V

    goto :goto_2

    .line 207
    :cond_3
    goto :goto_3

    .line 204
    .end local v0    # "scratchBits":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    :cond_4
    nop

    .line 212
    :goto_3
    invoke-virtual {v1, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([B)V

    .line 213
    return-object v1
.end method

.method private static isLittleEndianFrameHeader([B)Z
    .locals 3
    .param p0, "frameHeader"    # [B

    .line 217
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSyncWord(I)Z
    .locals 1
    .param p0, "word"    # I

    .line 72
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_1

    const v0, -0x180fe80

    if-eq p0, v0, :cond_1

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_1

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 141
    .local v0, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 153
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    goto :goto_0

    .line 146
    :pswitch_0
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 147
    .local v1, "nblks":I
    goto :goto_0

    .line 143
    .end local v1    # "nblks":I
    :pswitch_1
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 144
    .restart local v1    # "nblks":I
    goto :goto_0

    .line 149
    .end local v1    # "nblks":I
    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 150
    .restart local v1    # "nblks":I
    nop

    .line 155
    :goto_0
    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x20

    return v2

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 6
    .param p0, "data"    # [B

    .line 113
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x1f

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 125
    aget-byte v0, p0, v5

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v4

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    goto :goto_0

    .line 118
    :pswitch_0
    aget-byte v0, p0, v5

    and-int/2addr v0, v2

    shl-int/2addr v0, v5

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 119
    .local v0, "nblks":I
    goto :goto_0

    .line 115
    .end local v0    # "nblks":I
    :pswitch_1
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v4

    aget-byte v1, p0, v5

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 116
    .restart local v0    # "nblks":I
    goto :goto_0

    .line 121
    .end local v0    # "nblks":I
    :cond_0
    aget-byte v0, p0, v3

    and-int/2addr v0, v2

    shl-int/2addr v0, v5

    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 122
    .restart local v0    # "nblks":I
    nop

    .line 127
    :goto_0
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x20

    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 17
    .param p0, "frame"    # [B
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 90
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->getNormalizedFrameHeader([B)Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    move-result-object v0

    .line 91
    .local v0, "frameBits":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 92
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 93
    .local v1, "amode":I
    sget-object v2, Landroidx/media2/exoplayer/external/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v2, v2, v1

    .line 94
    .local v2, "channelCount":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 95
    .local v3, "sfreq":I
    sget-object v4, Landroidx/media2/exoplayer/external/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v4, v4, v3

    .line 96
    .local v4, "sampleRate":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 97
    .local v15, "rate":I
    sget-object v5, Landroidx/media2/exoplayer/external/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v15, v6, :cond_0

    const/4 v5, -0x1

    const/4 v8, -0x1

    goto :goto_0

    .line 98
    :cond_0
    aget v5, v5, v15

    mul-int/lit16 v5, v5, 0x3e8

    div-int/2addr v5, v7

    move v8, v5

    :goto_0
    nop

    .line 99
    .local v8, "bitrate":I
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 100
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v2, v5

    .line 101
    const-string v6, "audio/vnd.dts"

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move v10, v2

    move v11, v4

    move-object/from16 v13, p3

    move/from16 v16, v15

    .end local v15    # "rate":I
    .local v16, "rate":I
    move-object/from16 v15, p2

    invoke-static/range {v5 .. v15}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    return-object v5
.end method
