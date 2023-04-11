.class final Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final dataEndPosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 0
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "durationUs"    # J
    .param p5, "dataEndPosition"    # J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 108
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->positions:[J

    .line 109
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->durationUs:J

    .line 110
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 111
    return-void
.end method

.method public static create(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;
    .locals 23
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;
    .param p5, "frame"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 55
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 56
    .local v4, "numFrames":I
    const/4 v5, 0x0

    if-gtz v4, :cond_0

    .line 57
    return-object v5

    .line 59
    :cond_0
    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    .line 60
    .local v6, "sampleRate":I
    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    .line 61
    const/16 v11, 0x7d00

    if-lt v6, v11, :cond_1

    const/16 v11, 0x480

    goto :goto_0

    :cond_1
    const/16 v11, 0x240

    :goto_0
    int-to-long v11, v11

    mul-long v9, v9, v11

    int-to-long v11, v6

    .line 60
    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 62
    .local v7, "durationUs":J
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 63
    .local v9, "entryCount":I
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 64
    .local v10, "scale":I
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 65
    .local v11, "entrySize":I
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 67
    iget v12, v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    int-to-long v12, v12

    add-long v14, p2, v12

    .line 69
    .local v14, "minPosition":J
    new-array v12, v9, [J

    .line 70
    .local v12, "timesUs":[J
    new-array v13, v9, [J

    .line 71
    .local v13, "positions":[J
    const/16 v16, 0x0

    move-wide/from16 v2, p2

    move/from16 v5, v16

    .end local p2    # "position":J
    .local v2, "position":J
    .local v5, "index":I
    :goto_1
    if-ge v5, v9, :cond_2

    .line 72
    int-to-long v0, v5

    mul-long v0, v0, v7

    move/from16 v20, v6

    move-wide/from16 v21, v7

    .end local v6    # "sampleRate":I
    .end local v7    # "durationUs":J
    .local v20, "sampleRate":I
    .local v21, "durationUs":J
    int-to-long v6, v9

    div-long/2addr v0, v6

    aput-wide v0, v12, v5

    .line 75
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v13, v5

    .line 77
    packed-switch v11, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_0
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 89
    .local v0, "segmentSize":I
    goto :goto_2

    .line 85
    .end local v0    # "segmentSize":I
    :pswitch_1
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 86
    .restart local v0    # "segmentSize":I
    goto :goto_2

    .line 82
    .end local v0    # "segmentSize":I
    :pswitch_2
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 83
    .restart local v0    # "segmentSize":I
    goto :goto_2

    .line 79
    .end local v0    # "segmentSize":I
    :pswitch_3
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 80
    .restart local v0    # "segmentSize":I
    nop

    .line 93
    :goto_2
    mul-int v1, v0, v10

    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 71
    .end local v0    # "segmentSize":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v20

    move-wide/from16 v7, v21

    move-wide/from16 v0, p0

    goto :goto_1

    .end local v20    # "sampleRate":I
    .end local v21    # "durationUs":J
    .restart local v6    # "sampleRate":I
    .restart local v7    # "durationUs":J
    :cond_2
    move/from16 v20, v6

    move-wide/from16 v21, v7

    .line 95
    .end local v5    # "index":I
    .end local v6    # "sampleRate":I
    .end local v7    # "durationUs":J
    .restart local v20    # "sampleRate":I
    .restart local v21    # "durationUs":J
    const-wide/16 v0, -0x1

    move-wide/from16 v5, p0

    cmp-long v7, v5, v0

    if-eqz v7, :cond_3

    cmp-long v0, v5, v2

    if-eqz v0, :cond_3

    .line 96
    const-string v0, "VbriSeeker"

    const/16 v1, 0x43

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "VBRI data size mismatch: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 95
    :cond_3
    nop

    .line 98
    :goto_3
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;

    move-object v1, v13

    .end local v13    # "positions":[J
    .local v1, "positions":[J
    move-object v13, v0

    move-wide v7, v14

    .end local v14    # "minPosition":J
    .local v7, "minPosition":J
    move-object v14, v12

    move-object v15, v1

    move-wide/from16 v16, v21

    move-wide/from16 v18, v2

    invoke-direct/range {v13 .. v19}, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;-><init>([J[JJJ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    .line 142
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 137
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .locals 8
    .param p1, "timeUs"    # J

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 121
    .local v0, "tableIndex":I
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 122
    .local v2, "seekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length v4, v3

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v3, v4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->positions:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v3, v6

    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 126
    .local v1, "nextSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v3

    .line 122
    .end local v1    # "nextSeekPoint":Landroidx/media2/exoplayer/external/extractor/SeekPoint;
    :cond_1
    :goto_0
    nop

    .line 123
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v1
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method
