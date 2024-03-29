.class final Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XingSeeker"


# instance fields
.field private final dataEndPosition:J

.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJ)V
    .locals 9
    .param p1, "dataStartPosition"    # J
    .param p3, "xingFrameSize"    # I
    .param p4, "durationUs"    # J

    .line 102
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    .line 108
    return-void
.end method

.method private constructor <init>(JIJJ[J)V
    .locals 3
    .param p1, "dataStartPosition"    # J
    .param p3, "xingFrameSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "dataSize"    # J
    .param p8, "tableOfContents"    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    .line 117
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    .line 118
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    .line 119
    iput-object p8, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 120
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    .line 121
    const-wide/16 v0, -0x1

    cmp-long v2, p6, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p1, p6

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataEndPosition:J

    .line 122
    return-void
.end method

.method public static create(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;
    .locals 22
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;
    .param p5, "frame"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    move-wide/from16 v0, p0

    move-object/from16 v11, p4

    iget v12, v11, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 56
    .local v12, "samplesPerFrame":I
    iget v13, v11, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    .line 58
    .local v13, "sampleRate":I
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 60
    .local v14, "flags":I
    and-int/lit8 v2, v14, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    move v15, v2

    .local v15, "frameCount":I
    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 64
    :cond_0
    int-to-long v3, v15

    int-to-long v5, v12

    const-wide/32 v7, 0xf4240

    mul-long v5, v5, v7

    int-to-long v7, v13

    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .line 66
    .local v16, "durationUs":J
    and-int/lit8 v2, v14, 0x6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 68
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;

    iget v5, v11, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    move-object v2, v8

    move-wide/from16 v3, p2

    move-wide/from16 v6, v16

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;-><init>(JIJ)V

    return-object v8

    .line 71
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    int-to-long v8, v2

    .line 72
    .local v8, "dataSize":J
    const/16 v2, 0x64

    new-array v10, v2, [J

    .line 73
    .local v10, "tableOfContents":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 74
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v10, v3

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "i":I
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    add-long v2, p2, v8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 82
    const-string v2, "XingSeeker"

    add-long v3, p2, v8

    const/16 v5, 0x43

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "XING data size mismatch: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_3
    nop

    .line 84
    :goto_1
    new-instance v18, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;

    iget v5, v11, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    move-object/from16 v2, v18

    move-wide/from16 v3, p2

    move-wide/from16 v6, v16

    move-wide/from16 v19, v8

    .end local v8    # "dataSize":J
    .local v19, "dataSize":J
    move-object/from16 v21, v10

    .end local v10    # "tableOfContents":[J
    .local v21, "tableOfContents":[J
    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    return-object v18

    .line 60
    .end local v15    # "frameCount":I
    .end local v16    # "durationUs":J
    .end local v19    # "dataSize":J
    .end local v21    # "tableOfContents":[J
    :cond_4
    :goto_2
    nop

    .line 62
    const/4 v2, 0x0

    return-object v2
.end method

.method private getTimeUsForTableIndex(I)J
    .locals 4
    .param p1, "tableIndex"    # I

    .line 193
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    .line 183
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 178
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 17
    .param p1, "timeUs"    # J

    .line 131
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    const-wide/16 v3, 0x0

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v1

    .line 134
    :cond_0
    const-wide/16 v9, 0x0

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    move-wide/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    .line 135
    .end local p1    # "timeUs":J
    .local v1, "timeUs":J
    long-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v7

    .line 137
    .local v3, "percent":D
    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    cmpg-double v11, v3, v7

    if-gtz v11, :cond_1

    .line 138
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 139
    :cond_1
    cmpl-double v7, v3, v5

    if-ltz v7, :cond_2

    .line 140
    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    goto :goto_1

    .line 142
    :cond_2
    double-to-int v5, v3

    .line 143
    .local v5, "prevTableIndex":I
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 144
    .local v6, "tableOfContents":[J
    aget-wide v7, v6, v5

    long-to-double v7, v7

    .line 145
    .local v7, "prevScaledPosition":D
    const/16 v11, 0x63

    if-ne v5, v11, :cond_3

    move-wide v11, v9

    goto :goto_0

    :cond_3
    add-int/lit8 v11, v5, 0x1

    aget-wide v11, v6, v11

    long-to-double v11, v11

    .line 147
    .local v11, "nextScaledPosition":D
    :goto_0
    int-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v13, v3, v13

    .line 148
    .local v13, "interpolateFraction":D
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v15, v11, v7

    mul-double v15, v15, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v5, v7, v15

    .line 151
    .end local v6    # "tableOfContents":[J
    .end local v7    # "prevScaledPosition":D
    .end local v11    # "nextScaledPosition":D
    .end local v13    # "interpolateFraction":D
    .local v5, "scaledPosition":D
    :goto_1
    div-double v7, v5, v9

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    .line 153
    .local v7, "positionOffset":J
    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v11, v9

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v13, 0x1

    sub-long v13, v9, v13

    move-wide v9, v7

    invoke-static/range {v9 .. v14}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v7

    .line 154
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance v10, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v11, v7

    invoke-direct {v10, v1, v2, v11, v12}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v9, v10}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v9
.end method

.method public getTimeUs(J)J
    .locals 20
    .param p1, "position"    # J

    .line 159
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    sub-long v1, p1, v1

    .line 160
    .local v1, "positionOffset":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    move-wide v15, v1

    goto :goto_2

    .line 163
    :cond_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 164
    .local v3, "tableOfContents":[J
    long-to-double v4, v1

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 165
    .local v4, "scaledPosition":D
    double-to-long v6, v4

    const/4 v8, 0x1

    invoke-static {v3, v6, v7, v8, v8}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v6

    .line 166
    .local v6, "prevTableIndex":I
    invoke-direct {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v7

    .line 167
    .local v7, "prevTimeUs":J
    aget-wide v9, v3, v6

    .line 168
    .local v9, "prevScaledPosition":J
    add-int/lit8 v11, v6, 0x1

    invoke-direct {v0, v11}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v11

    .line 169
    .local v11, "nextTimeUs":J
    const/16 v13, 0x63

    if-ne v6, v13, :cond_1

    const-wide/16 v13, 0x100

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v3, v13

    .line 171
    .local v13, "nextScaledPosition":J
    :goto_0
    cmp-long v15, v9, v13

    if-nez v15, :cond_2

    const-wide/16 v15, 0x0

    move-object/from16 v17, v3

    move-wide/from16 v18, v1

    move-wide v0, v15

    move-wide/from16 v15, v18

    goto :goto_1

    .line 172
    :cond_2
    move-wide v15, v1

    .end local v1    # "positionOffset":J
    .local v15, "positionOffset":J
    long-to-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v4, v0

    move-object/from16 v17, v3

    .end local v3    # "tableOfContents":[J
    .local v17, "tableOfContents":[J
    sub-long v2, v13, v9

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    :goto_1
    nop

    .line 173
    .local v0, "interpolateFraction":D
    sub-long v2, v11, v7

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v2, v7

    return-wide v2

    .line 160
    .end local v0    # "interpolateFraction":D
    .end local v4    # "scaledPosition":D
    .end local v6    # "prevTableIndex":I
    .end local v7    # "prevTimeUs":J
    .end local v9    # "prevScaledPosition":J
    .end local v11    # "nextTimeUs":J
    .end local v13    # "nextScaledPosition":J
    .end local v15    # "positionOffset":J
    .end local v17    # "tableOfContents":[J
    .restart local v1    # "positionOffset":J
    :cond_3
    move-wide v15, v1

    .line 161
    .end local v1    # "positionOffset":J
    .restart local v15    # "positionOffset":J
    :goto_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
