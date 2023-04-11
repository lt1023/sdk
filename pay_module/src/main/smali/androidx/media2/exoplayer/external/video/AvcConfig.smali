.class public final Landroidx/media2/exoplayer/external/video/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "pixelWidthAspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF)V"
        }
    .end annotation

    .line 88
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 90
    iput p2, p0, Landroidx/media2/exoplayer/external/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 91
    iput p3, p0, Landroidx/media2/exoplayer/external/video/AvcConfig;->width:I

    .line 92
    iput p4, p0, Landroidx/media2/exoplayer/external/video/AvcConfig;->height:I

    .line 93
    iput p5, p0, Landroidx/media2/exoplayer/external/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 94
    return-void
.end method

.method private static buildNalUnitForChild(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)[B
    .locals 3
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 97
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 98
    .local v0, "length":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 99
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 100
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/AvcConfig;
    .locals 14
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 55
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 56
    .local v0, "nalUnitLengthFieldLength":I
    if-eq v0, v1, :cond_3

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v8, v2, 0x1f

    .line 61
    .local v8, "numSequenceParameterSets":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 62
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/AvcConfig;->buildNalUnitForChild(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    move v9, v2

    .line 65
    .local v9, "numPictureParameterSets":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 66
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/AvcConfig;->buildNalUnitForChild(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v2    # "j":I
    :cond_1
    const/4 v2, -0x1

    .line 70
    .local v2, "width":I
    const/4 v3, -0x1

    .line 71
    .local v3, "height":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    .local v4, "pixelWidthAspectRatio":F
    if-lez v8, :cond_2

    .line 73
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 74
    .local v6, "sps":[B
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v7, v6

    invoke-static {v5, v0, v7}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    move-result-object v5

    .line 76
    .local v5, "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    iget v7, v5, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->width:I

    move v2, v7

    .line 77
    iget v7, v5, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->height:I

    move v3, v7

    .line 78
    iget v7, v5, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    move v4, v7

    move v10, v2

    move v11, v3

    move v12, v4

    goto :goto_2

    .line 72
    .end local v5    # "spsData":Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    .end local v6    # "sps":[B
    :cond_2
    move v10, v2

    move v11, v3

    move v12, v4

    .line 80
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "pixelWidthAspectRatio":F
    .local v10, "width":I
    .local v11, "height":I
    .local v12, "pixelWidthAspectRatio":F
    :goto_2
    new-instance v13, Landroidx/media2/exoplayer/external/video/AvcConfig;

    move-object v2, v13

    move-object v3, v1

    move v4, v0

    move v5, v10

    move v6, v11

    move v7, v12

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/video/AvcConfig;-><init>(Ljava/util/List;IIIF)V

    return-object v13

    .line 57
    .end local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v8    # "numSequenceParameterSets":I
    .end local v9    # "numPictureParameterSets":I
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "pixelWidthAspectRatio":F
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "nalUnitLengthFieldLength":I
    .restart local p0    # "data":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Error parsing AVC config"

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    return-void
.end method
