.class public final Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3

.field private static final START_USER_DATA:I = 0xb2


# instance fields
.field private final csdBuffer:Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private frameDurationUs:J

.field private hasOutputFormat:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleHasPicture:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startedFirstSample:Z

.field private totalBytesWritten:J

.field private final userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final userDataReader:Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;)V
    .locals 3
    .param p1, "userDataReader"    # Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataReader:Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->csdBuffer:Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0xb2

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataParsable:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 90
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataParsable:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 92
    :goto_0
    return-void
.end method

.method private static parseCsdBuffer(Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;
    .locals 23
    .param p0, "csdBuffer"    # Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;
    .param p1, "formatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 226
    .local v1, "csdData":[B
    const/4 v2, 0x4

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    .line 227
    .local v3, "firstByte":I
    const/4 v4, 0x5

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    .line 228
    .local v5, "secondByte":I
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    .line 229
    .local v6, "thirdByte":I
    shl-int/lit8 v7, v3, 0x4

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    .line 230
    .local v7, "width":I
    and-int/lit8 v8, v5, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v6

    .line 232
    .local v8, "height":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 233
    .local v9, "pixelWidthHeightRatio":F
    const/16 v21, 0x7

    aget-byte v10, v1, v21

    and-int/lit16 v10, v10, 0xf0

    shr-int/lit8 v2, v10, 0x4

    .line 234
    .local v2, "aspectRatioCode":I
    packed-switch v2, :pswitch_data_0

    move/from16 v22, v9

    goto :goto_0

    .line 242
    :pswitch_0
    mul-int/lit8 v10, v8, 0x79

    int-to-float v10, v10

    mul-int/lit8 v11, v7, 0x64

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 243
    .end local v9    # "pixelWidthHeightRatio":F
    .local v10, "pixelWidthHeightRatio":F
    move/from16 v22, v10

    goto :goto_0

    .line 239
    .end local v10    # "pixelWidthHeightRatio":F
    .restart local v9    # "pixelWidthHeightRatio":F
    :pswitch_1
    mul-int/lit8 v10, v8, 0x10

    int-to-float v10, v10

    mul-int/lit8 v11, v7, 0x9

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 240
    .end local v9    # "pixelWidthHeightRatio":F
    .restart local v10    # "pixelWidthHeightRatio":F
    move/from16 v22, v10

    goto :goto_0

    .line 236
    .end local v10    # "pixelWidthHeightRatio":F
    .restart local v9    # "pixelWidthHeightRatio":F
    :pswitch_2
    mul-int/lit8 v10, v8, 0x4

    int-to-float v10, v10

    mul-int/lit8 v11, v7, 0x3

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 237
    .end local v9    # "pixelWidthHeightRatio":F
    .restart local v10    # "pixelWidthHeightRatio":F
    move/from16 v22, v10

    .line 249
    .end local v10    # "pixelWidthHeightRatio":F
    .local v22, "pixelWidthHeightRatio":F
    :goto_0
    const-string/jumbo v10, "video/mpeg2"

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    .line 251
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, -0x1

    const/16 v20, 0x0

    .line 249
    move-object/from16 v9, p1

    move v14, v7

    move v15, v8

    move/from16 v19, v22

    invoke-static/range {v9 .. v20}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 253
    .local v9, "format":Landroidx/media2/exoplayer/external/Format;
    const-wide/16 v10, 0x0

    .line 254
    .local v10, "frameDurationUs":J
    aget-byte v12, v1, v21

    and-int/lit8 v12, v12, 0xf

    add-int/lit8 v12, v12, -0x1

    .line 255
    .local v12, "frameRateCodeMinusOne":I
    if-ltz v12, :cond_1

    sget-object v13, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v14, v13

    if-ge v12, v14, :cond_1

    .line 256
    aget-wide v14, v13, v12

    .line 257
    .local v14, "frameRate":D
    iget v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    .line 258
    .local v13, "sequenceExtensionPosition":I
    add-int/lit8 v16, v13, 0x9

    aget-byte v16, v1, v16

    and-int/lit8 v16, v16, 0x60

    shr-int/lit8 v4, v16, 0x5

    .line 259
    .local v4, "frameRateExtensionN":I
    add-int/lit8 v16, v13, 0x9

    aget-byte v16, v1, v16

    and-int/lit8 v0, v16, 0x1f

    .line 260
    .local v0, "frameRateExtensionD":I
    if-eq v4, v0, :cond_0

    .line 261
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "csdData":[B
    .end local v2    # "aspectRatioCode":I
    .local v16, "csdData":[B
    .local v17, "aspectRatioCode":I
    int-to-double v1, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double v1, v1, v18

    move/from16 v18, v3

    .end local v3    # "firstByte":I
    .local v18, "firstByte":I
    add-int/lit8 v3, v0, 0x1

    move/from16 v19, v4

    .end local v4    # "frameRateExtensionN":I
    .local v19, "frameRateExtensionN":I
    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    mul-double v14, v14, v1

    goto :goto_1

    .line 260
    .end local v16    # "csdData":[B
    .end local v17    # "aspectRatioCode":I
    .end local v18    # "firstByte":I
    .end local v19    # "frameRateExtensionN":I
    .restart local v1    # "csdData":[B
    .restart local v2    # "aspectRatioCode":I
    .restart local v3    # "firstByte":I
    .restart local v4    # "frameRateExtensionN":I
    :cond_0
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    .line 263
    .end local v1    # "csdData":[B
    .end local v2    # "aspectRatioCode":I
    .end local v3    # "firstByte":I
    .end local v4    # "frameRateExtensionN":I
    .restart local v16    # "csdData":[B
    .restart local v17    # "aspectRatioCode":I
    .restart local v18    # "firstByte":I
    .restart local v19    # "frameRateExtensionN":I
    :goto_1
    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v14

    double-to-long v10, v1

    goto :goto_2

    .line 255
    .end local v0    # "frameRateExtensionD":I
    .end local v13    # "sequenceExtensionPosition":I
    .end local v14    # "frameRate":D
    .end local v16    # "csdData":[B
    .end local v17    # "aspectRatioCode":I
    .end local v18    # "firstByte":I
    .end local v19    # "frameRateExtensionN":I
    .restart local v1    # "csdData":[B
    .restart local v2    # "aspectRatioCode":I
    .restart local v3    # "firstByte":I
    :cond_1
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    .line 266
    .end local v1    # "csdData":[B
    .end local v2    # "aspectRatioCode":I
    .end local v3    # "firstByte":I
    .restart local v16    # "csdData":[B
    .restart local v17    # "aspectRatioCode":I
    .restart local v18    # "firstByte":I
    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 124
    .local v2, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v3

    .line 125
    .local v3, "limit":I
    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 128
    .local v4, "dataArray":[B
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 129
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    invoke-interface {v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 132
    :goto_0
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v5}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v5

    .line 134
    .local v5, "startCodeOffset":I
    if-ne v5, v3, :cond_2

    .line 136
    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v6, :cond_0

    .line 137
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->csdBuffer:Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v6, v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    goto :goto_1

    .line 136
    :cond_0
    nop

    .line 139
    :goto_1
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataReader:Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    if-eqz v6, :cond_1

    .line 140
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v6, v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_2

    .line 139
    :cond_1
    nop

    .line 142
    :goto_2
    return-void

    .line 146
    :cond_2
    iget-object v6, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 149
    .local v6, "startCodeValue":I
    sub-int v7, v5, v2

    .line 151
    .local v7, "lengthToStartCode":I
    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x1

    if-nez v8, :cond_6

    .line 152
    if-lez v7, :cond_3

    .line 153
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->csdBuffer:Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v8, v4, v2, v5}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    goto :goto_3

    .line 152
    :cond_3
    nop

    .line 157
    :goto_3
    if-gez v7, :cond_4

    neg-int v8, v7

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 158
    .local v8, "bytesAlreadyPassed":I
    :goto_4
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->csdBuffer:Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v11, v6, v8}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 160
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->csdBuffer:Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->parseCsdBuffer(Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v11

    .line 161
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media2/exoplayer/external/Format;Ljava/lang/Long;>;"
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v12, v13}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 162
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->frameDurationUs:J

    .line 163
    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->hasOutputFormat:Z

    goto :goto_5

    .line 158
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media2/exoplayer/external/Format;Ljava/lang/Long;>;"
    :cond_5
    goto :goto_5

    .line 151
    .end local v8    # "bytesAlreadyPassed":I
    :cond_6
    nop

    .line 166
    :goto_5
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataReader:Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    if-eqz v8, :cond_a

    .line 167
    const/4 v8, 0x0

    .line 168
    .restart local v8    # "bytesAlreadyPassed":I
    if-lez v7, :cond_7

    .line 169
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v4, v2, v5}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_6

    .line 171
    :cond_7
    neg-int v8, v7

    .line 174
    :goto_6
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v8}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 175
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v12, v12, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v11

    .line 176
    .local v11, "unescapedLength":I
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataParsable:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v13, v13, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v12, v13, v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 177
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataReader:Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataParsable:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v12, v13, v14, v15}, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_7

    .line 174
    .end local v11    # "unescapedLength":I
    :cond_8
    nop

    .line 180
    :goto_7
    const/16 v11, 0xb2

    if-ne v6, v11, :cond_9

    iget-object v11, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v12, v5, 0x2

    aget-byte v11, v11, v12

    if-ne v11, v10, :cond_9

    .line 181
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v6}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_8

    .line 180
    :cond_9
    goto :goto_8

    .line 166
    .end local v8    # "bytesAlreadyPassed":I
    :cond_a
    nop

    .line 184
    :goto_8
    if-eqz v6, :cond_d

    const/16 v8, 0xb3

    if-ne v6, v8, :cond_b

    goto :goto_a

    .line 202
    :cond_b
    const/16 v8, 0xb8

    if-ne v6, v8, :cond_c

    .line 203
    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    goto/16 :goto_f

    .line 202
    :cond_c
    :goto_9
    goto :goto_f

    .line 184
    :cond_d
    :goto_a
    nop

    .line 185
    sub-int v8, v3, v5

    .line 186
    .local v8, "bytesWrittenPastStartCode":I
    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v11, :cond_e

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v11, :cond_e

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v11, :cond_e

    .line 188
    iget-boolean v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 189
    .local v14, "flags":I
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v11, v9

    long-to-int v9, v11

    sub-int/2addr v9, v8

    .line 190
    .local v9, "size":I
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleTimeUs:J

    const/16 v17, 0x0

    move v15, v9

    move/from16 v16, v8

    invoke-interface/range {v11 .. v17}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    goto :goto_b

    .line 186
    .end local v9    # "size":I
    .end local v14    # "flags":I
    :cond_e
    nop

    .line 192
    :goto_b
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v9, :cond_10

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v9, :cond_f

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_e

    .line 194
    :cond_10
    :goto_c
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v11, v8

    sub-long/2addr v9, v11

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->samplePosition:J

    .line 195
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->pesTimeUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v9, v11

    if-eqz v13, :cond_11

    goto :goto_d

    .line 196
    :cond_11
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v9, :cond_12

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v9, v13

    goto :goto_d

    :cond_12
    const-wide/16 v9, 0x0

    :goto_d
    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 197
    const/4 v9, 0x0

    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 198
    iput-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->pesTimeUs:J

    .line 199
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 201
    :goto_e
    if-nez v6, :cond_13

    const/4 v9, 0x1

    nop

    :cond_13
    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->sampleHasPicture:Z

    .end local v8    # "bytesWrittenPastStartCode":I
    goto :goto_9

    .line 206
    :goto_f
    add-int/lit8 v2, v5, 0x3

    .line 207
    .end local v5    # "startCodeOffset":I
    .end local v6    # "startCodeValue":I
    .end local v7    # "lengthToStartCode":I
    goto/16 :goto_0
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 108
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 110
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataReader:Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_0

    .line 110
    :cond_0
    nop

    .line 113
    :goto_0
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 213
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 118
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->pesTimeUs:J

    .line 119
    return-void
.end method

.method public seek()V
    .locals 2

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->csdBuffer:Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userDataReader:Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->userData:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    .line 98
    :cond_0
    nop

    .line 101
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 103
    return-void
.end method
