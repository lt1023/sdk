.class public final Landroidx/media2/exoplayer/external/video/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final initializationData:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "nalUnitLengthFieldLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 92
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 94
    iput p2, p0, Landroidx/media2/exoplayer/external/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 95
    return-void
.end method

.method public static parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/HevcConfig;
    .locals 14
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 49
    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 50
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 53
    .local v0, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 54
    .local v1, "numberOfArrays":I
    const/4 v2, 0x0

    .line 55
    .local v2, "csdLength":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 56
    .local v3, "csdStartPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_1

    .line 57
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 58
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 59
    .local v5, "numberOfNalUnits":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 61
    .local v7, "nalUnitLength":I
    add-int/lit8 v8, v7, 0x4

    add-int/2addr v2, v8

    .line 62
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    .end local v7    # "nalUnitLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 56
    .end local v5    # "numberOfNalUnits":I
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 68
    new-array v4, v2, [B

    .line 69
    .local v4, "buffer":[B
    const/4 v6, 0x0

    .line 70
    .local v6, "bufferPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v1, :cond_3

    .line 71
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 72
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 73
    .local v8, "numberOfNalUnits":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v8, :cond_2

    .line 74
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 75
    .local v10, "nalUnitLength":I
    sget-object v11, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v12, 0x0

    sget-object v13, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v13, v13

    invoke-static {v11, v12, v4, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    sget-object v11, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v6, v11

    .line 78
    iget-object v11, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 79
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    add-int/2addr v6, v10

    .line 81
    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 73
    .end local v10    # "nalUnitLength":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 70
    .end local v8    # "numberOfNalUnits":I
    .end local v9    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 85
    .end local v7    # "i":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 86
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    new-instance v7, Landroidx/media2/exoplayer/external/video/HevcConfig;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v7, v5, v8}, Landroidx/media2/exoplayer/external/video/HevcConfig;-><init>(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 87
    .end local v0    # "lengthSizeMinusOne":I
    .end local v1    # "numberOfArrays":I
    .end local v2    # "csdLength":I
    .end local v3    # "csdStartPosition":I
    .end local v4    # "buffer":[B
    .end local v5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v6    # "bufferPosition":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Error parsing HEVC config"

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    return-void
.end method
