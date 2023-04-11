.class public final Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    .line 43
    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 47
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 51
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 55
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 59
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_5
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .locals 10
    .param p0, "header"    # I

    .line 69
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_0

    .line 70
    return v2

    .line 73
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    .line 74
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 75
    return v2

    .line 78
    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    .line 79
    .local v4, "layer":I
    if-nez v4, :cond_2

    .line 80
    return v2

    .line 83
    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 84
    .local v5, "bitrateIndex":I
    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_5

    .line 89
    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    .line 90
    .local v6, "samplingRateIndex":I
    if-ne v6, v1, :cond_4

    .line 91
    return v2

    .line 94
    :cond_4
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    .line 95
    .local v2, "samplingRate":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 97
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 98
    :cond_5
    if-nez v0, :cond_6

    .line 100
    div-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 98
    :cond_6
    nop

    .line 104
    :goto_0
    ushr-int/lit8 v8, p0, 0x9

    and-int/2addr v8, v3

    .line 105
    .local v8, "padding":I
    if-ne v4, v1, :cond_8

    .line 107
    if-ne v0, v1, :cond_7

    sget-object v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v1, v1, v3

    goto :goto_1

    :cond_7
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v1, v1, v3

    .line 108
    .local v1, "bitrate":I
    :goto_1
    mul-int/lit8 v3, v1, 0xc

    div-int/2addr v3, v2

    add-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x4

    return v3

    .line 111
    .end local v1    # "bitrate":I
    :cond_8
    if-ne v0, v1, :cond_a

    .line 112
    if-ne v4, v7, :cond_9

    sget-object v7, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    goto :goto_2

    :cond_9
    sget-object v7, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    :goto_2
    goto :goto_3

    .line 115
    :cond_a
    sget-object v7, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    .line 119
    .local v7, "bitrate":I
    :goto_3
    if-ne v0, v1, :cond_b

    .line 121
    mul-int/lit16 v1, v7, 0x90

    div-int/2addr v1, v2

    add-int/2addr v1, v8

    return v1

    .line 124
    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v1, 0x48

    goto :goto_4

    :cond_c
    const/16 v1, 0x90

    :goto_4
    mul-int v1, v1, v7

    div-int/2addr v1, v2

    add-int/2addr v1, v8

    return v1

    .line 84
    .end local v2    # "samplingRate":I
    .end local v6    # "samplingRateIndex":I
    .end local v7    # "bitrate":I
    .end local v8    # "padding":I
    :cond_d
    :goto_5
    nop

    .line 86
    return v2
.end method

.method public static populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z
    .locals 20
    .param p0, "headerData"    # I
    .param p1, "header"    # Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    .line 137
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 138
    return v2

    .line 141
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    .line 142
    .local v0, "version":I
    const/4 v11, 0x1

    if-ne v0, v11, :cond_1

    .line 143
    return v2

    .line 146
    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/lit8 v12, v3, 0x3

    .line 147
    .local v12, "layer":I
    if-nez v12, :cond_2

    .line 148
    return v2

    .line 151
    :cond_2
    ushr-int/lit8 v3, p0, 0xc

    const/16 v4, 0xf

    and-int/lit8 v13, v3, 0xf

    .line 152
    .local v13, "bitrateIndex":I
    if-eqz v13, :cond_e

    if-ne v13, v4, :cond_3

    goto/16 :goto_7

    .line 157
    :cond_3
    ushr-int/lit8 v3, p0, 0xa

    and-int/lit8 v14, v3, 0x3

    .line 158
    .local v14, "samplingRateIndex":I
    if-ne v14, v1, :cond_4

    .line 159
    return v2

    .line 162
    :cond_4
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v14

    .line 163
    .local v2, "sampleRate":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 165
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 166
    :cond_5
    if-nez v0, :cond_6

    .line 168
    div-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 166
    :cond_6
    nop

    .line 171
    :goto_0
    ushr-int/lit8 v4, p0, 0x9

    and-int/lit8 v15, v4, 0x1

    .line 175
    .local v15, "padding":I
    if-ne v12, v1, :cond_8

    .line 177
    if-ne v0, v1, :cond_7

    sget-object v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v5, v13, -0x1

    aget v4, v4, v5

    goto :goto_1

    :cond_7
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v5, v13, -0x1

    aget v4, v4, v5

    .line 178
    .local v4, "bitrate":I
    :goto_1
    mul-int/lit8 v5, v4, 0xc

    div-int/2addr v5, v2

    add-int/2addr v5, v15

    mul-int/lit8 v5, v5, 0x4

    .line 179
    .local v5, "frameSize":I
    const/16 v6, 0x180

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_5

    .line 182
    .end local v4    # "bitrate":I
    .end local v5    # "frameSize":I
    :cond_8
    if-ne v0, v1, :cond_a

    .line 184
    if-ne v12, v3, :cond_9

    sget-object v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v5, v13, -0x1

    aget v4, v4, v5

    goto :goto_2

    :cond_9
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v5, v13, -0x1

    aget v4, v4, v5

    .line 185
    .restart local v4    # "bitrate":I
    :goto_2
    const/16 v5, 0x480

    .line 186
    .local v5, "samplesPerFrame":I
    mul-int/lit16 v6, v4, 0x90

    div-int/2addr v6, v2

    add-int/2addr v6, v15

    move/from16 v17, v5

    move/from16 v16, v6

    goto :goto_5

    .line 189
    .end local v4    # "bitrate":I
    .end local v5    # "samplesPerFrame":I
    :cond_a
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v5, v13, -0x1

    aget v4, v4, v5

    .line 190
    .restart local v4    # "bitrate":I
    if-ne v12, v11, :cond_b

    const/16 v5, 0x240

    goto :goto_3

    :cond_b
    const/16 v5, 0x480

    .line 191
    .restart local v5    # "samplesPerFrame":I
    :goto_3
    if-ne v12, v11, :cond_c

    const/16 v6, 0x48

    goto :goto_4

    :cond_c
    const/16 v6, 0x90

    :goto_4
    mul-int v6, v6, v4

    div-int/2addr v6, v2

    add-int/2addr v6, v15

    move/from16 v17, v5

    move/from16 v16, v6

    .line 198
    .end local v5    # "samplesPerFrame":I
    .local v16, "frameSize":I
    .local v17, "samplesPerFrame":I
    :goto_5
    mul-int/lit8 v5, v16, 0x8

    mul-int v5, v5, v2

    div-int v18, v5, v17

    .line 199
    .end local v4    # "bitrate":I
    .local v18, "bitrate":I
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v5, v12, 0x3

    aget-object v19, v4, v5

    .line 200
    .local v19, "mimeType":Ljava/lang/String;
    shr-int/lit8 v4, p0, 0x6

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_d

    const/4 v8, 0x1

    goto :goto_6

    :cond_d
    const/4 v8, 0x2

    .line 201
    .local v8, "channels":I
    :goto_6
    move-object/from16 v3, p1

    move v4, v0

    move-object/from16 v5, v19

    move/from16 v6, v16

    move v7, v2

    move/from16 v9, v18

    move/from16 v10, v17

    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    .line 202
    return v11

    .line 152
    .end local v2    # "sampleRate":I
    .end local v8    # "channels":I
    .end local v14    # "samplingRateIndex":I
    .end local v15    # "padding":I
    .end local v16    # "frameSize":I
    .end local v17    # "samplesPerFrame":I
    .end local v18    # "bitrate":I
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_e
    :goto_7
    nop

    .line 154
    return v2
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "frameSize"    # I
    .param p4, "sampleRate"    # I
    .param p5, "channels"    # I
    .param p6, "bitrate"    # I
    .param p7, "samplesPerFrame"    # I

    .line 228
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->version:I

    .line 229
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 230
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    .line 231
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    .line 232
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    .line 233
    iput p6, p0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->bitrate:I

    .line 234
    iput p7, p0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 235
    return-void
.end method
