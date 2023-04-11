.class public final Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

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
        Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private randomAccessIndicator:Z

.field private sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

.field private final sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

.field private final seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;ZZ)V
    .locals 3
    .param p1, "seiReader"    # Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;
    .param p2, "allowNonIdrKeyframes"    # Z
    .param p3, "detectAccessUnits"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    .line 85
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 86
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->detectAccessUnits:Z

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x80

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 89
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 90
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 91
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 92
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 19
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .line 187
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto/16 :goto_2

    .line 188
    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 189
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 190
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v3, 0x3

    if-nez v2, :cond_3

    .line 191
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v3, v5}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    move-result-object v15

    .line 196
    .local v15, "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v3, v5}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->parsePpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;

    move-result-object v3

    .line 197
    .local v3, "ppsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    const-string/jumbo v5, "video/avc"

    iget v6, v15, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v7, v15, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v8, v15, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 201
    invoke-static {v6, v7, v8}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v15, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->width:I

    iget v10, v15, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->height:I

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    iget v12, v15, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    const/16 v16, 0x0

    .line 198
    move/from16 v17, v12

    move-object v12, v2

    move-object/from16 v18, v14

    move/from16 v14, v17

    move-object/from16 v17, v2

    move-object v2, v15

    .end local v15    # "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    .local v2, "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    .local v17, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v15, v16

    invoke-static/range {v4 .. v15}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 197
    move-object/from16 v5, v18

    invoke-interface {v5, v4}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 214
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 215
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->putSps(Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;)V

    .line 216
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->putPps(Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;)V

    .line 217
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 218
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 219
    .end local v2    # "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    .end local v3    # "ppsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    .end local v17    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_2

    .line 191
    :cond_2
    goto :goto_2

    .line 220
    :cond_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    move-result-object v2

    .line 222
    .restart local v2    # "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->putSps(Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;)V

    .line 223
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .end local v2    # "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    goto :goto_1

    .line 224
    :cond_4
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->parsePpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;

    move-result-object v2

    .line 226
    .local v2, "ppsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->putPps(Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;)V

    .line 227
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_2

    .line 224
    .end local v2    # "ppsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    :cond_5
    :goto_1
    nop

    .line 230
    :goto_2
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v2

    .line 232
    .local v2, "unescapedLength":I
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v3, v4, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 233
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 234
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-wide/from16 v5, p5

    invoke-virtual {v3, v5, v6, v4}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_3

    .line 230
    .end local v2    # "unescapedLength":I
    :cond_6
    move-wide/from16 v5, p5

    .line 236
    :goto_3
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 237
    move-wide/from16 v8, p1

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->endNalUnit(JIZZ)Z

    move-result v2

    .line 238
    .local v2, "sampleIsKeyFrame":Z
    if-eqz v2, :cond_7

    .line 242
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->randomAccessIndicator:Z

    goto :goto_4

    .line 238
    :cond_7
    nop

    .line 244
    :goto_4
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 178
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 182
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    .line 184
    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 7
    .param p1, "position"    # J
    .param p3, "nalUnitType"    # I
    .param p4, "pesTimeUs"    # J

    .line 169
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 170
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 171
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 173
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 174
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    .line 175
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 122
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 123
    .local v0, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v9

    .line 124
    .local v9, "limit":I
    iget-object v10, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 127
    .local v10, "dataArray":[B
    iget-wide v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 128
    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, v8, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    move v11, v0

    .line 132
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_0
    iget-object v0, v7, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v10, v11, v9, v0}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    .line 134
    .local v12, "nalUnitOffset":I
    if-ne v12, v9, :cond_0

    .line 136
    invoke-direct {v7, v10, v11, v9}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->nalUnitData([BII)V

    .line 137
    return-void

    .line 141
    :cond_0
    invoke-static {v10, v12}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v13

    .line 145
    .local v13, "nalUnitType":I
    sub-int v14, v12, v11

    .line 146
    .local v14, "lengthToNalUnit":I
    if-lez v14, :cond_1

    .line 147
    invoke-direct {v7, v10, v11, v12}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->nalUnitData([BII)V

    goto :goto_1

    .line 146
    :cond_1
    nop

    .line 149
    :goto_1
    sub-int v15, v9, v12

    .line 150
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v0, v7, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v2, v15

    sub-long v16, v0, v2

    .line 154
    .local v16, "absolutePosition":J
    nop

    .line 155
    if-gez v14, :cond_2

    neg-int v0, v14

    move v4, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-wide v5, v7, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pesTimeUs:J

    .line 154
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move v3, v15

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    .line 157
    iget-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pesTimeUs:J

    move v3, v13

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    .line 159
    add-int/lit8 v11, v12, 0x3

    .line 160
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_0
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 108
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 110
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 112
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 166
    return-void
.end method

.method public packetStarted(JI)V
    .locals 2
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 116
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pesTimeUs:J

    .line 117
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 118
    return-void
.end method

.method public seek()V
    .locals 2

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 100
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 103
    return-void
.end method
