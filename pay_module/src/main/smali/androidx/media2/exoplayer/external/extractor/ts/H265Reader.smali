.class public final Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

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
        Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

.field private final seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;)V
    .locals 3
    .param p1, "seiReader"    # Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 83
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x80

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x21

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 85
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x22

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 86
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x27

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0x28

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 89
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .line 194
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 200
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto :goto_0

    .line 200
    :cond_1
    nop

    .line 205
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 207
    .local v0, "unescapedLength":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 210
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 211
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, p5, p6, v3}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_1

    .line 205
    .end local v0    # "unescapedLength":I
    :cond_2
    nop

    .line 213
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 215
    .restart local v0    # "unescapedLength":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 218
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 219
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, p5, p6, v2}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_2

    .line 213
    .end local v0    # "unescapedLength":I
    :cond_3
    nop

    .line 221
    :goto_2
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 182
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 189
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 191
    return-void
.end method

.method private static parseMediaFormat(Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;)Landroidx/media2/exoplayer/external/Format;
    .locals 31
    .param p0, "formatId"    # Ljava/lang/String;
    .param p1, "vps"    # Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;
    .param p2, "sps"    # Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;
    .param p3, "pps"    # Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 226
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 227
    .local v3, "csd":[B
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v5, v7

    iget v7, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    new-instance v4, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v7, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 233
    .local v4, "bitArray":Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 234
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 235
    .local v7, "maxSubLayersMinus1":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 238
    const/16 v8, 0x58

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 239
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 240
    const/4 v9, 0x0

    .line 241
    .local v9, "toSkip":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_2

    .line 242
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 243
    add-int/lit8 v9, v9, 0x59

    goto :goto_1

    .line 242
    :cond_0
    nop

    .line 245
    :goto_1
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 246
    add-int/lit8 v9, v9, 0x8

    goto :goto_2

    .line 245
    :cond_1
    nop

    .line 241
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 249
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v4, v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 250
    const/4 v10, 0x2

    if-lez v7, :cond_3

    .line 251
    rsub-int/lit8 v11, v7, 0x8

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v4, v11}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    goto :goto_3

    .line 250
    :cond_3
    nop

    .line 254
    :goto_3
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 255
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 256
    .local v11, "chromaFormatIdc":I
    if-ne v11, v5, :cond_4

    .line 257
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    goto :goto_4

    .line 256
    :cond_4
    nop

    .line 259
    :goto_4
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 260
    .local v5, "picWidthInLumaSamples":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 261
    .local v12, "picHeightInLumaSamples":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 262
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 263
    .local v13, "confWinLeftOffset":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    .line 264
    .local v14, "confWinRightOffset":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 265
    .local v15, "confWinTopOffset":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 267
    .local v16, "confWinBottomOffset":I
    const/4 v6, 0x1

    if-eq v11, v6, :cond_6

    if-ne v11, v10, :cond_5

    goto :goto_5

    :cond_5
    const/16 v18, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v18, 0x2

    .line 268
    .local v18, "subWidthC":I
    :goto_6
    if-ne v11, v6, :cond_7

    const/4 v6, 0x2

    nop

    .line 269
    .local v6, "subHeightC":I
    :cond_7
    add-int v19, v13, v14

    mul-int v19, v19, v18

    sub-int v5, v5, v19

    .line 270
    add-int v19, v15, v16

    mul-int v19, v19, v6

    sub-int v12, v12, v19

    goto :goto_7

    .line 261
    .end local v6    # "subHeightC":I
    .end local v13    # "confWinLeftOffset":I
    .end local v14    # "confWinRightOffset":I
    .end local v15    # "confWinTopOffset":I
    .end local v16    # "confWinBottomOffset":I
    .end local v18    # "subWidthC":I
    :cond_8
    nop

    .line 272
    :goto_7
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 273
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 274
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    .line 276
    .local v6, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v17, 0x0

    goto :goto_8

    :cond_9
    move/from16 v17, v7

    :goto_8
    move/from16 v13, v17

    .local v13, "i":I
    :goto_9
    if-gt v13, v7, :cond_a

    .line 277
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 278
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 279
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 276
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 281
    .end local v13    # "i":I
    :cond_a
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 282
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 283
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 284
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 285
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 286
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 288
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    .line 289
    .local v13, "scalingListEnabled":Z
    if-eqz v13, :cond_b

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 290
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V

    goto :goto_a

    .line 289
    :cond_b
    nop

    .line 292
    :goto_a
    invoke-virtual {v4, v10}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 293
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 295
    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 296
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 297
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 298
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    goto :goto_b

    .line 293
    :cond_c
    nop

    .line 301
    :goto_b
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->skipShortTermRefPicSets(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V

    .line 302
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 304
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_c
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 305
    add-int/lit8 v15, v6, 0x4

    .line 307
    .local v15, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v8, v15, 0x1

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 304
    .end local v15    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0x8

    goto :goto_c

    :cond_d
    goto :goto_d

    .line 302
    .end local v14    # "i":I
    :cond_e
    nop

    .line 310
    :goto_d
    invoke-virtual {v4, v10}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 311
    const/high16 v8, 0x3f800000    # 1.0f

    .line 312
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 313
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 314
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 315
    .local v10, "aspectRatioIdc":I
    const/16 v14, 0xff

    if-ne v10, v14, :cond_10

    .line 316
    const/16 v14, 0x10

    invoke-virtual {v4, v14}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .line 317
    .local v15, "sarWidth":I
    invoke-virtual {v4, v14}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    .line 318
    .local v14, "sarHeight":I
    if-eqz v15, :cond_f

    if-eqz v14, :cond_f

    .line 319
    int-to-float v0, v15

    int-to-float v1, v14

    div-float v8, v0, v1

    goto :goto_e

    .line 318
    :cond_f
    nop

    .line 321
    .end local v14    # "sarHeight":I
    .end local v15    # "sarWidth":I
    :goto_e
    goto :goto_f

    :cond_10
    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v0, v0

    if-ge v10, v0, :cond_11

    .line 322
    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v10

    move v8, v0

    goto :goto_f

    .line 324
    :cond_11
    const-string v0, "H265Reader"

    const/16 v1, 0x2e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 313
    .end local v10    # "aspectRatioIdc":I
    :cond_12
    goto :goto_f

    .line 312
    :cond_13
    nop

    .line 329
    :goto_f
    const-string/jumbo v20, "video/hevc"

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/high16 v26, -0x40800000    # -1.0f

    .line 331
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    const/16 v28, -0x1

    const/16 v30, 0x0

    .line 329
    move-object/from16 v19, p0

    move/from16 v24, v5

    move/from16 v25, v12

    move/from16 v29, v8

    invoke-static/range {v19 .. v30}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method private static skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V
    .locals 6
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    .line 338
    const/4 v0, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 339
    const/4 v2, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 340
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 342
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_4

    .line 344
    :cond_0
    const/16 v3, 0x40

    shl-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v1

    shl-int v5, v4, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 345
    .local v3, "coefNum":I
    if-le v0, v4, :cond_1

    .line 347
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    goto :goto_2

    .line 345
    :cond_1
    nop

    .line 349
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v3, :cond_2

    .line 350
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 349
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 339
    .end local v3    # "coefNum":I
    .end local v5    # "i":I
    :cond_2
    :goto_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    goto :goto_5

    :cond_3
    const/4 v3, 0x1

    :goto_5
    add-int/2addr v2, v3

    goto :goto_1

    .line 338
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V
    .locals 7
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    .line 362
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 363
    .local v0, "numShortTermRefPicSets":I
    const/4 v1, 0x0

    .line 369
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v2, 0x0

    .line 370
    .local v2, "previousNumDeltaPocs":I
    const/4 v3, 0x0

    .local v3, "stRpsIdx":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 371
    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    goto :goto_1

    .line 371
    :cond_0
    nop

    .line 374
    :goto_1
    if-eqz v1, :cond_3

    .line 375
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 376
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 377
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-gt v4, v2, :cond_2

    .line 378
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    goto :goto_3

    .line 378
    :cond_1
    nop

    .line 377
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    goto :goto_6

    .line 383
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 384
    .local v4, "numNegativePics":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 385
    .local v5, "numPositivePics":I
    add-int v2, v4, v5

    .line 386
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v4, :cond_4

    .line 387
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 388
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 386
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 390
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v5, :cond_5

    .line 391
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 392
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 390
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 370
    .end local v4    # "numNegativePics":I
    .end local v5    # "numPositivePics":I
    .end local v6    # "i":I
    :cond_5
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    .end local v3    # "stRpsIdx":I
    :cond_6
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .locals 8
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .line 170
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 174
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 175
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 179
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 18
    .param p1, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 120
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 122
    .local v0, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v9

    .line 123
    .local v9, "limit":I
    iget-object v10, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 126
    .local v10, "dataArray":[B
    iget-wide v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 127
    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, v8, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    move v11, v0

    .line 130
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 131
    iget-object v0, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v10, v11, v9, v0}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v12

    .line 133
    .local v12, "nalUnitOffset":I
    if-ne v12, v9, :cond_0

    .line 135
    invoke-direct {v7, v10, v11, v9}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 136
    return-void

    .line 140
    :cond_0
    invoke-static {v10, v12}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v13

    .line 144
    .local v13, "nalUnitType":I
    sub-int v14, v12, v11

    .line 145
    .local v14, "lengthToNalUnit":I
    if-lez v14, :cond_1

    .line 146
    invoke-direct {v7, v10, v11, v12}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->nalUnitData([BII)V

    goto :goto_2

    .line 145
    :cond_1
    nop

    .line 149
    :goto_2
    sub-int v15, v9, v12

    .line 150
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v0, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v2, v15

    sub-long v16, v0, v2

    .line 154
    .local v16, "absolutePosition":J
    nop

    .line 155
    if-gez v14, :cond_2

    neg-int v0, v14

    move v4, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_3
    iget-wide v5, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pesTimeUs:J

    .line 154
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move v3, v15

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 157
    iget-wide v5, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v13

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 159
    add-int/lit8 v11, v12, 0x3

    .line 160
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_1

    .line 130
    :cond_3
    nop

    .line 161
    .end local v9    # "limit":I
    .end local v10    # "dataArray":[B
    .end local v11    # "offset":I
    goto :goto_0

    .line 162
    :cond_4
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 108
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    .line 109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 110
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 167
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 115
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pesTimeUs:J

    .line 116
    return-void
.end method

.method public seek()V
    .locals 2

    .line 93
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->reset()V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 101
    return-void
.end method
