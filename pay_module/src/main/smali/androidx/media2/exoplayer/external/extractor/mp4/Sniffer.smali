.class final Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6
    .param p0, "brand"    # I

    .line 196
    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    const v2, 0x336770

    if-ne v0, v2, :cond_0

    .line 197
    return v1

    .line 199
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    .line 200
    .local v5, "compatibleBrand":I
    if-ne v5, p0, :cond_1

    .line 201
    return v1

    .line 200
    :cond_1
    nop

    .line 199
    .end local v5    # "compatibleBrand":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_2
    return v3
.end method

.method public static sniffFragmented(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z
    .locals 23
    .param p0, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p1, "fragmented"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    .line 99
    .local v1, "inputLength":J
    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    move-wide v3, v1

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    nop

    .line 100
    nop

    :goto_1
    long-to-int v4, v3

    .line 102
    .local v4, "bytesToSearch":I
    nop

    new-instance v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v7, 0x40

    invoke-direct {v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 103
    .local v3, "buffer":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    nop

    const/4 v7, 0x0

    .line 104
    .local v7, "bytesSearched":I
    nop

    const/4 v8, 0x0

    .line 105
    .local v8, "foundGoodFileType":Z
    nop

    const/4 v9, 0x0

    .line 106
    .local v9, "isFragmented":Z
    :goto_2
    nop

    const/4 v11, 0x0

    if-ge v7, v4, :cond_13

    .line 108
    nop

    const/16 v12, 0x8

    .line 109
    .local v12, "headerSize":I
    nop

    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 110
    nop

    iget-object v13, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v13, v11, v12}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    nop

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 112
    .local v13, "atomSize":J
    nop

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 113
    .local v15, "atomType":I
    nop

    const-wide/16 v16, 0x1

    const/16 v10, 0x8

    cmp-long v19, v13, v16

    if-nez v19, :cond_2

    .line 115
    nop

    const/16 v12, 0x10

    .line 116
    nop

    iget-object v11, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v11, v10, v10}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 117
    nop

    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 118
    nop

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v13

    goto :goto_3

    .line 119
    :cond_2
    nop

    const-wide/16 v19, 0x0

    cmp-long v11, v13, v19

    if-nez v11, :cond_4

    .line 121
    nop

    invoke-interface/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v19

    .line 122
    .local v19, "fileEndPosition":J
    nop

    cmp-long v11, v19, v5

    if-eqz v11, :cond_3

    .line 123
    nop

    invoke-interface/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v21

    sub-long v21, v19, v21

    int-to-long v10, v12

    add-long v13, v21, v10

    goto :goto_3

    .line 122
    :cond_3
    nop

    goto :goto_3

    .line 119
    .end local v19    # "fileEndPosition":J
    :cond_4
    nop

    .line 127
    :goto_3
    nop

    cmp-long v10, v1, v5

    if-eqz v10, :cond_5

    nop

    int-to-long v10, v7

    add-long/2addr v10, v13

    cmp-long v19, v10, v1

    if-lez v19, :cond_5

    .line 129
    nop

    const/4 v10, 0x0

    return v10

    .line 127
    :cond_5
    const/4 v10, 0x0

    nop

    .line 131
    nop

    int-to-long v5, v12

    cmp-long v11, v13, v5

    if-gez v11, :cond_6

    .line 133
    nop

    return v10

    .line 135
    :cond_6
    nop

    add-int/2addr v7, v12

    .line 137
    nop

    const v5, 0x6d6f6f76

    if-ne v15, v5, :cond_8

    .line 140
    nop

    long-to-int v5, v13

    add-int/2addr v4, v5

    .line 141
    nop

    const-wide/16 v5, -0x1

    cmp-long v10, v1, v5

    if-eqz v10, :cond_7

    nop

    int-to-long v10, v4

    cmp-long v16, v10, v1

    if-lez v16, :cond_7

    .line 143
    nop

    long-to-int v4, v1

    goto/16 :goto_2

    .line 141
    :cond_7
    nop

    goto/16 :goto_2

    .line 149
    :cond_8
    const-wide/16 v5, -0x1

    nop

    const v10, 0x6d6f6f66

    if-eq v15, v10, :cond_12

    nop

    const v10, 0x6d766578

    if-ne v15, v10, :cond_9

    nop

    const/4 v10, 0x0

    goto/16 :goto_8

    .line 155
    :cond_9
    nop

    int-to-long v10, v7

    add-long/2addr v10, v13

    int-to-long v5, v12

    sub-long/2addr v10, v5

    int-to-long v5, v4

    cmp-long v21, v10, v5

    if-ltz v21, :cond_a

    .line 157
    nop

    const/4 v10, 0x0

    goto :goto_9

    .line 160
    :cond_a
    nop

    int-to-long v5, v12

    sub-long v5, v13, v5

    long-to-int v6, v5

    .line 161
    .local v6, "atomDataSize":I
    nop

    add-int/2addr v7, v6

    .line 162
    nop

    const v5, 0x66747970

    if-ne v15, v5, :cond_11

    .line 164
    nop

    const/16 v5, 0x8

    if-ge v6, v5, :cond_b

    .line 165
    nop

    const/4 v5, 0x0

    return v5

    .line 167
    :cond_b
    const/4 v5, 0x0

    nop

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 168
    nop

    iget-object v10, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v10, v5, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 169
    nop

    div-int/lit8 v5, v6, 0x4

    .line 170
    .local v5, "brandsCount":I
    nop

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    nop

    if-ge v10, v5, :cond_e

    .line 171
    nop

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    .line 173
    nop

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_5

    .line 174
    :cond_c
    nop

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 175
    nop

    const/4 v8, 0x1

    .line 176
    nop

    goto :goto_6

    .line 174
    :cond_d
    nop

    .line 170
    :goto_5
    nop

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    nop

    .line 179
    .end local v10    # "i":I
    :goto_6
    nop

    if-nez v8, :cond_f

    .line 181
    nop

    const/4 v10, 0x0

    return v10

    .line 179
    :cond_f
    nop

    .line 183
    .end local v5    # "brandsCount":I
    :cond_10
    nop

    goto :goto_7

    :cond_11
    nop

    if-eqz v6, :cond_10

    .line 185
    nop

    invoke-interface {v0, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 187
    .end local v6    # "atomDataSize":I
    .end local v12    # "headerSize":I
    .end local v13    # "atomSize":J
    .end local v15    # "atomType":I
    :goto_7
    nop

    const-wide/16 v5, -0x1

    goto/16 :goto_2

    .line 149
    .restart local v12    # "headerSize":I
    .restart local v13    # "atomSize":J
    .restart local v15    # "atomType":I
    :cond_12
    const/4 v10, 0x0

    nop

    .line 151
    :goto_8
    nop

    const/4 v9, 0x1

    .line 152
    nop

    goto :goto_9

    .line 106
    .end local v12    # "headerSize":I
    .end local v13    # "atomSize":J
    .end local v15    # "atomType":I
    :cond_13
    const/4 v10, 0x0

    nop

    .line 188
    :goto_9
    nop

    if-eqz v8, :cond_14

    nop

    move/from16 v5, p1

    if-ne v5, v9, :cond_15

    nop

    const/16 v18, 0x1

    goto :goto_a

    :cond_14
    move/from16 v5, p1

    :cond_15
    nop

    nop

    const/16 v18, 0x0

    :goto_a
    nop

    return v18
.end method

.method public static sniffUnfragmented(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
