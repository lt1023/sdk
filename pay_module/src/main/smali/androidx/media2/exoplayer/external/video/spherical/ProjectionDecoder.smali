.class public final Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAX_COORDINATE_COUNT:I = 0x2710

.field private static final MAX_TRIANGLE_INDICES:I = 0x1f400

.field private static final MAX_VERTEX_COUNT:I = 0x7d00

.field private static final TYPE_DFL8:I = 0x64666c38

.field private static final TYPE_MESH:I = 0x6d657368

.field private static final TYPE_MSHP:I = 0x6d736870

.field private static final TYPE_PROJ:I = 0x70726f6a

.field private static final TYPE_RAW:I = 0x72617720

.field private static final TYPE_YTMP:I = 0x79746d70


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Landroidx/media2/exoplayer/external/video/spherical/Projection;
    .locals 5
    .param p0, "projectionData"    # [B
    .param p1, "stereoMode"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 71
    .local v0, "input":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/4 v1, 0x0

    .line 73
    .local v1, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;>;"
    :try_start_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->isProj(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->parseProj(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->parseMshp(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v2

    .line 76
    goto :goto_1

    .line 74
    :catch_0
    move-exception v2

    .line 77
    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 78
    return-object v2

    .line 80
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 87
    return-object v2

    .line 84
    :pswitch_0
    new-instance v2, Landroidx/media2/exoplayer/external/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, v4, p1}, Landroidx/media2/exoplayer/external/video/spherical/Projection;-><init>(Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;I)V

    return-object v2

    .line 82
    :pswitch_1
    new-instance v2, Landroidx/media2/exoplayer/external/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, p1}, Landroidx/media2/exoplayer/external/video/spherical/Projection;-><init>(Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeZigZag(I)I
    .locals 2
    .param p0, "n"    # I

    .line 242
    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static isProj(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .locals 3
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 94
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 95
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 96
    .local v0, "type":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 97
    const v2, 0x70726f6a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private static parseMesh(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;
    .locals 28
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 172
    .local v0, "coordinateCount":I
    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_0

    .line 173
    return-object v1

    .line 175
    :cond_0
    new-array v2, v0, [F

    .line 176
    .local v2, "coordinates":[F
    const/4 v3, 0x0

    .local v3, "coordinate":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v3    # "coordinate":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 181
    .local v3, "vertexCount":I
    const/16 v4, 0x7d00

    if-le v3, v4, :cond_2

    .line 182
    return-object v1

    .line 185
    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 186
    .local v6, "log2":D
    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 188
    .local v8, "coordinateCountSizeBits":I
    new-instance v9, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    move-object/from16 v10, p0

    iget-object v11, v10, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v9, v11}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    .line 189
    .local v9, "bitInput":Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/16 v12, 0x8

    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v9, v11}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 190
    mul-int/lit8 v11, v3, 0x5

    new-array v11, v11, [F

    .line 191
    .local v11, "vertices":[F
    const/4 v13, 0x5

    new-array v14, v13, [I

    .line 192
    .local v14, "coordinateIndices":[I
    const/4 v15, 0x0

    .line 193
    .local v15, "vertexIndex":I
    const/16 v16, 0x0

    move/from16 v27, v16

    move/from16 v16, v15

    move/from16 v15, v27

    .local v15, "vertex":I
    .local v16, "vertexIndex":I
    :goto_1
    if-ge v15, v3, :cond_6

    .line 194
    const/16 v17, 0x0

    move/from16 v4, v17

    .local v4, "i":I
    :goto_2
    if-ge v4, v13, :cond_5

    .line 195
    aget v5, v14, v4

    .line 196
    invoke-virtual {v9, v8}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v17

    add-int v5, v5, v17

    .line 197
    .local v5, "coordinateIndex":I
    if-ge v5, v0, :cond_4

    if-gez v5, :cond_3

    goto :goto_3

    .line 200
    :cond_3
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "vertexIndex":I
    .local v17, "vertexIndex":I
    aget v20, v2, v5

    aput v20, v11, v16

    .line 201
    aput v5, v14, v4

    .line 194
    .end local v5    # "coordinateIndex":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v16, v17

    goto :goto_2

    .line 197
    .end local v17    # "vertexIndex":I
    .restart local v5    # "coordinateIndex":I
    .restart local v16    # "vertexIndex":I
    :cond_4
    :goto_3
    nop

    .line 198
    return-object v1

    .line 194
    .end local v5    # "coordinateIndex":I
    :cond_5
    nop

    .line 193
    .end local v4    # "i":I
    add-int/lit8 v15, v15, 0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    goto :goto_1

    .line 206
    .end local v15    # "vertex":I
    :cond_6
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, -0x8

    invoke-virtual {v9, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 208
    const/16 v4, 0x20

    invoke-virtual {v9, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 209
    .local v5, "subMeshCount":I
    new-array v13, v5, [Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;

    .line 210
    .local v13, "subMeshes":[Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    if-ge v15, v5, :cond_b

    .line 211
    invoke-virtual {v9, v12}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 212
    .local v1, "textureId":I
    move/from16 v20, v0

    .end local v0    # "coordinateCount":I
    .local v20, "coordinateCount":I
    invoke-virtual {v9, v12}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 213
    .local v0, "drawMode":I
    invoke-virtual {v9, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 214
    .local v12, "triangleIndexCount":I
    const v4, 0x1f400

    if-le v12, v4, :cond_7

    .line 215
    const/4 v4, 0x0

    return-object v4

    .line 217
    :cond_7
    move/from16 v21, v5

    .end local v5    # "subMeshCount":I
    .local v21, "subMeshCount":I
    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 218
    .local v4, "vertexCountSizeBits":I
    const/4 v5, 0x0

    .line 219
    .local v5, "index":I
    move-object/from16 v22, v2

    .end local v2    # "coordinates":[F
    .local v22, "coordinates":[F
    mul-int/lit8 v2, v12, 0x3

    new-array v2, v2, [F

    .line 220
    .local v2, "triangleVertices":[F
    move/from16 v23, v5

    .end local v5    # "index":I
    .local v23, "index":I
    mul-int/lit8 v5, v12, 0x2

    new-array v5, v5, [F

    .line 221
    .local v5, "textureCoords":[F
    const/16 v24, 0x0

    move-wide/from16 v25, v6

    move/from16 v6, v24

    .local v6, "counter":I
    .local v25, "log2":D
    :goto_5
    if-ge v6, v12, :cond_a

    .line 222
    invoke-virtual {v9, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    invoke-static {v7}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v7

    add-int v7, v23, v7

    .line 223
    .end local v23    # "index":I
    .local v7, "index":I
    if-ltz v7, :cond_9

    if-lt v7, v3, :cond_8

    goto :goto_6

    .line 226
    :cond_8
    mul-int/lit8 v23, v6, 0x3

    mul-int/lit8 v24, v7, 0x5

    aget v24, v11, v24

    aput v24, v2, v23

    .line 227
    mul-int/lit8 v23, v6, 0x3

    add-int/lit8 v23, v23, 0x1

    mul-int/lit8 v24, v7, 0x5

    add-int/lit8 v24, v24, 0x1

    aget v24, v11, v24

    aput v24, v2, v23

    .line 228
    mul-int/lit8 v23, v6, 0x3

    add-int/lit8 v23, v23, 0x2

    mul-int/lit8 v24, v7, 0x5

    add-int/lit8 v24, v24, 0x2

    aget v24, v11, v24

    aput v24, v2, v23

    .line 229
    mul-int/lit8 v23, v6, 0x2

    mul-int/lit8 v24, v7, 0x5

    add-int/lit8 v24, v24, 0x3

    aget v24, v11, v24

    aput v24, v5, v23

    .line 230
    mul-int/lit8 v23, v6, 0x2

    add-int/lit8 v23, v23, 0x1

    mul-int/lit8 v24, v7, 0x5

    add-int/lit8 v24, v24, 0x4

    aget v24, v11, v24

    aput v24, v5, v23

    .line 221
    add-int/lit8 v6, v6, 0x1

    move/from16 v23, v7

    goto :goto_5

    .line 223
    :cond_9
    :goto_6
    nop

    .line 224
    const/16 v17, 0x0

    return-object v17

    .line 221
    .end local v7    # "index":I
    .restart local v23    # "index":I
    :cond_a
    const/16 v17, 0x0

    .line 232
    .end local v6    # "counter":I
    new-instance v6, Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;

    invoke-direct {v6, v1, v2, v5, v0}, Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v6, v13, v15

    .line 210
    .end local v0    # "drawMode":I
    .end local v1    # "textureId":I
    .end local v2    # "triangleVertices":[F
    .end local v4    # "vertexCountSizeBits":I
    .end local v5    # "textureCoords":[F
    .end local v12    # "triangleIndexCount":I
    .end local v23    # "index":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v17

    move/from16 v0, v20

    move/from16 v5, v21

    move-object/from16 v2, v22

    move-wide/from16 v6, v25

    const/16 v4, 0x20

    const/16 v12, 0x8

    goto/16 :goto_4

    .end local v20    # "coordinateCount":I
    .end local v21    # "subMeshCount":I
    .end local v22    # "coordinates":[F
    .end local v25    # "log2":D
    .local v0, "coordinateCount":I
    .local v2, "coordinates":[F
    .local v5, "subMeshCount":I
    .local v6, "log2":D
    :cond_b
    move/from16 v20, v0

    move-object/from16 v22, v2

    move/from16 v21, v5

    move-wide/from16 v25, v6

    .line 234
    .end local v0    # "coordinateCount":I
    .end local v2    # "coordinates":[F
    .end local v5    # "subMeshCount":I
    .end local v6    # "log2":D
    .end local v15    # "i":I
    .restart local v20    # "coordinateCount":I
    .restart local v21    # "subMeshCount":I
    .restart local v22    # "coordinates":[F
    .restart local v25    # "log2":D
    new-instance v0, Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    invoke-direct {v0, v13}, Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;-><init>([Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;)V

    return-object v0
.end method

.method private static parseMshp(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 123
    .local v0, "version":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    return-object v1

    .line 126
    :cond_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 127
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 128
    .local v2, "encoding":I
    const v3, 0x64666c38

    if-ne v2, v3, :cond_2

    .line 129
    new-instance v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    .line 130
    .local v3, "output":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 132
    .local v4, "inflater":Ljava/util/zip/Inflater;
    :try_start_0
    invoke-static {p0, v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->inflate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 133
    nop

    .line 136
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 133
    return-object v1

    .line 136
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 137
    nop

    .line 138
    move-object p0, v3

    .end local v3    # "output":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    goto :goto_0

    .line 136
    .restart local v3    # "output":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .restart local v4    # "inflater":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    throw v1

    .line 139
    .end local v3    # "output":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    :cond_2
    const v3, 0x72617720

    if-eq v2, v3, :cond_3

    .line 140
    return-object v1

    .line 139
    :cond_3
    :goto_0
    nop

    .line 142
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->parseRawMshpData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static parseProj(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 101
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 102
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 103
    .local v0, "position":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 104
    .local v1, "limit":I
    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 105
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v0

    .line 106
    .local v3, "childEnd":I
    if-le v3, v0, :cond_3

    if-le v3, v1, :cond_0

    goto :goto_2

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 111
    .local v2, "childAtomType":I
    const v4, 0x79746d70

    if-eq v2, v4, :cond_2

    const v4, 0x6d736870

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    move v0, v3

    .line 116
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 117
    .end local v2    # "childAtomType":I
    .end local v3    # "childEnd":I
    goto :goto_0

    .line 111
    .restart local v2    # "childAtomType":I
    .restart local v3    # "childEnd":I
    :cond_2
    :goto_1
    nop

    .line 112
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 113
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->parseMshp(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 106
    .end local v2    # "childAtomType":I
    :cond_3
    :goto_2
    nop

    .line 107
    return-object v2

    .line 118
    .end local v3    # "childEnd":I
    :cond_4
    return-object v2
.end method

.method private static parseRawMshpData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "input"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 149
    .local v1, "position":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    .line 150
    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 151
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v1

    .line 152
    .local v3, "childEnd":I
    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    if-le v3, v2, :cond_0

    goto :goto_2

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 156
    .local v5, "childAtomType":I
    const v6, 0x6d657368

    if-ne v5, v6, :cond_2

    .line 157
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/spherical/ProjectionDecoder;->parseMesh(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    move-result-object v6

    .line 158
    .local v6, "mesh":Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;
    if-nez v6, :cond_1

    .line 159
    return-object v4

    .line 161
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v6    # "mesh":Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;
    :cond_2
    nop

    .line 163
    :goto_1
    move v1, v3

    .line 164
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 165
    .end local v3    # "childEnd":I
    .end local v5    # "childAtomType":I
    goto :goto_0

    .line 152
    .restart local v3    # "childEnd":I
    :cond_3
    :goto_2
    nop

    .line 153
    return-object v4

    .line 166
    .end local v3    # "childEnd":I
    :cond_4
    return-object v0
.end method
