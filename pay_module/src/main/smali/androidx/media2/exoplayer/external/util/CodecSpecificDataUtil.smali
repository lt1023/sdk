.class public final Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field private static final AUDIO_OBJECT_TYPE_ER_BSAC:I = 0x16

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_OBJECT_TYPE_PS:I = 0x1d

.field private static final AUDIO_OBJECT_TYPE_SBR:I = 0x5

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 40
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

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
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacAudioSpecificConfig(III)[B
    .locals 3
    .param p0, "audioObjectType"    # I
    .param p1, "sampleRateIndex"    # I
    .param p2, "channelConfig"    # I

    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 209
    .local v0, "specificConfig":[B
    shl-int/lit8 v1, p0, 0x3

    and-int/lit16 v1, v1, 0xf8

    shr-int/lit8 v2, p1, 0x1

    and-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 210
    shl-int/lit8 v1, p1, 0x7

    and-int/lit16 v1, v1, 0x80

    shl-int/lit8 v2, p2, 0x3

    and-int/lit8 v2, v2, 0x78

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 211
    return-object v0
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 5
    .param p0, "sampleRate"    # I
    .param p1, "numChannels"    # I

    .line 179
    const/4 v0, -0x1

    .line 180
    .local v0, "sampleRateIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 181
    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    .line 182
    move v0, v1

    goto :goto_1

    .line 181
    :cond_0
    nop

    .line 180
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    .line 186
    .local v1, "channelConfig":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v3, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 187
    aget v3, v3, v2

    if-ne p1, v3, :cond_2

    .line 188
    move v1, v2

    goto :goto_3

    .line 187
    :cond_2
    nop

    .line 186
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    if-eq p0, v2, :cond_4

    if-eq v1, v2, :cond_4

    .line 195
    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v2

    return-object v2

    .line 191
    :cond_4
    nop

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/16 v3, 0x43

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid sample rate or number of channels: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    return-void
.end method

.method public static buildAvcCodecString(III)Ljava/lang/String;
    .locals 4
    .param p0, "profileIdc"    # I
    .param p1, "constraintsFlagsAndReservedZero2Bits"    # I
    .param p2, "levelIdc"    # I

    .line 225
    const-string v0, "avc1.%02X%02X%02X"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 225
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildNalUnit([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 238
    sget-object v0, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    .line 239
    .local v1, "nalUnit":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    sget-object v0, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    return-object v1
.end method

.method private static findNalStartCode([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 285
    array-length v0, p0

    sget-object v1, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 286
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 287
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    return v1

    .line 286
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static getAacAudioObjectType(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I
    .locals 2
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 320
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 321
    .local v0, "audioObjectType":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    goto :goto_0

    .line 321
    :cond_0
    nop

    .line 324
    :goto_0
    return v0
.end method

.method private static getAacSamplingFrequency(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I
    .locals 2
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 336
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 337
    .local v0, "frequencyIndex":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 338
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    goto :goto_1

    .line 340
    :cond_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 341
    sget-object v1, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v1, v1, v0

    .line 343
    .local v1, "samplingFrequency":I
    :goto_1
    return v1
.end method

.method private static isNalStartCode([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 302
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 303
    return v2

    .line 305
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    sget-object v1, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 306
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_1

    .line 307
    return v2

    .line 305
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "j":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static parseAacAudioSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;Z)Landroid/util/Pair;
    .locals 7
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "forceReadToEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableBitArray;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 115
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->getAacAudioObjectType(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I

    move-result v0

    .line 116
    .local v0, "audioObjectType":I
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I

    move-result v1

    .line 117
    .local v1, "sampleRate":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 118
    .local v3, "channelConfiguration":I
    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I

    move-result v1

    .line 125
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->getAacAudioObjectType(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)I

    move-result v0

    .line 126
    const/16 v4, 0x16

    if-ne v0, v4, :cond_2

    .line 128
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    goto :goto_1

    .line 126
    :cond_2
    nop

    .line 132
    :goto_1
    if-eqz p1, :cond_5

    .line 133
    const/16 v2, 0x11

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 149
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v4, 0x2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsupported audio object type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_3
    :pswitch_0
    invoke-static {p0, v0, v3}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseGaSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;II)V

    .line 147
    nop

    .line 151
    packed-switch v0, :pswitch_data_3

    :pswitch_1
    goto :goto_2

    .line 158
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 159
    .local v4, "epConfig":I
    if-eq v4, v2, :cond_4

    const/4 v2, 0x3

    if-eq v4, v2, :cond_4

    goto :goto_2

    .line 160
    :cond_4
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v5, 0x21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unsupported epConfig: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v4    # "epConfig":I
    :cond_5
    nop

    .line 166
    :goto_2
    sget-object v2, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v2, v2, v3

    .line 167
    .local v2, "channelCount":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 2
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 100
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseGaSpecificConfig(Landroidx/media2/exoplayer/external/util/ParsableBitArray;II)V
    .locals 6
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .param p1, "audioObjectType"    # I
    .param p2, "channelConfiguration"    # I

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 349
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 350
    .local v1, "dependsOnCoreDecoder":Z
    if-eqz v1, :cond_0

    .line 351
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 350
    :cond_0
    nop

    .line 353
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 354
    .local v2, "extensionFlag":Z
    if-eqz p2, :cond_7

    .line 357
    const/4 v3, 0x6

    const/16 v4, 0x14

    const/4 v5, 0x3

    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 358
    :cond_2
    :goto_1
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 360
    :goto_2
    if-eqz v2, :cond_6

    .line 361
    const/16 v3, 0x16

    if-ne p1, v3, :cond_3

    .line 362
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 361
    :cond_3
    nop

    .line 364
    :goto_3
    const/16 v3, 0x11

    if-eq p1, v3, :cond_5

    const/16 v3, 0x13

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_5

    const/16 v3, 0x17

    if-ne p1, v3, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_5

    .line 368
    :cond_5
    :goto_4
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 370
    :goto_5
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 360
    :cond_6
    nop

    .line 372
    :goto_6
    return-void

    .line 355
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static splitNalUnits([B)[[B
    .locals 9
    .param p0, "data"    # [B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "starts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 263
    .local v2, "nalUnitIndex":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v3, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    add-int/2addr v3, v2

    invoke-static {p0, v3}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v2

    .line 265
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 266
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[B

    .line 267
    .local v3, "split":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 268
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 269
    .local v5, "startIndex":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_1
    array-length v6, p0

    .line 270
    .local v6, "endIndex":I
    :goto_2
    sub-int v7, v6, v5

    new-array v7, v7, [B

    .line 271
    .local v7, "nal":[B
    array-length v8, v7

    invoke-static {p0, v5, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    aput-object v7, v3, v4

    .line 267
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    .end local v7    # "nal":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    .end local v4    # "i":I
    :cond_2
    return-object v3

    .line 265
    .end local v3    # "split":[[B
    :cond_3
    goto :goto_0
.end method
