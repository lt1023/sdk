.class public final Landroidx/media2/exoplayer/external/video/spherical/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;,
        Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;,
        Landroidx/media2/exoplayer/external/video/spherical/Projection$DrawMode;
    }
.end annotation


# static fields
.field public static final DRAW_MODE_TRIANGLES:I = 0x0

.field public static final DRAW_MODE_TRIANGLES_FAN:I = 0x2

.field public static final DRAW_MODE_TRIANGLES_STRIP:I = 0x1

.field public static final POSITION_COORDS_PER_VERTEX:I = 0x3

.field public static final TEXTURE_COORDS_PER_VERTEX:I = 0x2


# instance fields
.field public final leftMesh:Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

.field public final rightMesh:Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;I)V
    .locals 0
    .param p1, "mesh"    # Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;
    .param p2, "stereoMode"    # I

    .line 178
    invoke-direct {p0, p1, p1, p2}, Landroidx/media2/exoplayer/external/video/spherical/Projection;-><init>(Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;I)V
    .locals 1
    .param p1, "leftMesh"    # Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;
    .param p2, "rightMesh"    # Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;
    .param p3, "stereoMode"    # I

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/spherical/Projection;->leftMesh:Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    .line 191
    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/spherical/Projection;->rightMesh:Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    .line 192
    iput p3, p0, Landroidx/media2/exoplayer/external/video/spherical/Projection;->stereoMode:I

    .line 193
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/spherical/Projection;->singleMesh:Z

    .line 194
    return-void
.end method

.method public static createEquirectangular(FIIFFI)Landroidx/media2/exoplayer/external/video/spherical/Projection;
    .locals 26
    .param p0, "radius"    # F
    .param p1, "latitudes"    # I
    .param p2, "longitudes"    # I
    .param p3, "verticalFovDegrees"    # F
    .param p4, "horizontalFovDegrees"    # F
    .param p5, "stereoMode"    # I

    .line 89
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/4 v7, 0x1

    cmpl-float v8, v0, v5

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 90
    if-lt v1, v7, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 91
    if-lt v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 92
    cmpl-float v8, v3, v5

    if-lez v8, :cond_3

    const/high16 v8, 0x43340000    # 180.0f

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 93
    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 96
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 97
    .local v5, "verticalFovRads":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 98
    .local v8, "horizontalFovRads":F
    int-to-float v9, v1

    div-float v9, v5, v9

    .line 99
    .local v9, "quadHeightRads":F
    int-to-float v10, v2

    div-float v10, v8, v10

    .line 102
    .local v10, "quadWidthRads":F
    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v12

    mul-int v11, v11, v1

    .line 104
    .local v11, "vertexCount":I
    mul-int/lit8 v13, v11, 0x3

    new-array v13, v13, [F

    .line 105
    .local v13, "vertexData":[F
    mul-int/lit8 v14, v11, 0x2

    new-array v14, v14, [F

    .line 109
    .local v14, "textureData":[F
    const/4 v15, 0x0

    .line 110
    .local v15, "vOffset":I
    const/16 v16, 0x0

    .line 112
    .local v16, "tOffset":I
    const/16 v17, 0x0

    move/from16 v25, v16

    move/from16 v16, v15

    move/from16 v15, v17

    move/from16 v17, v25

    .local v15, "j":I
    .local v16, "vOffset":I
    .local v17, "tOffset":I
    :goto_5
    if-ge v15, v1, :cond_c

    .line 115
    int-to-float v6, v15

    mul-float v6, v6, v9

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v5, v18

    sub-float v6, v6, v19

    .line 116
    .local v6, "phiLow":F
    add-int/lit8 v7, v15, 0x1

    int-to-float v7, v7

    mul-float v7, v7, v9

    div-float v20, v5, v18

    sub-float v7, v7, v20

    .line 118
    .local v7, "phiHigh":F
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "i":I
    :goto_6
    add-int/lit8 v1, v2, 0x1

    if-ge v12, v1, :cond_b

    .line 119
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_7
    const/4 v3, 0x2

    if-ge v1, v3, :cond_a

    .line 121
    if-nez v1, :cond_5

    move v3, v6

    goto :goto_8

    :cond_5
    move v3, v7

    .line 122
    .local v3, "phi":F
    :goto_8
    int-to-float v4, v12

    mul-float v4, v4, v10

    const v20, 0x40490fdb    # (float)Math.PI

    add-float v4, v4, v20

    div-float v20, v8, v18

    sub-float v4, v4, v20

    .line 125
    .local v4, "theta":F
    add-int/lit8 v20, v16, 0x1

    move/from16 v21, v6

    move/from16 v22, v7

    .end local v6    # "phiLow":F
    .end local v7    # "phiHigh":F
    .end local v16    # "vOffset":I
    .local v20, "vOffset":I
    .local v21, "phiLow":F
    .local v22, "phiHigh":F
    float-to-double v6, v0

    move/from16 v23, v1

    .end local v1    # "k":I
    .local v23, "k":I
    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v6, v6, v1

    double-to-float v1, v6

    neg-float v1, v1

    aput v1, v13, v16

    .line 126
    add-int/lit8 v1, v20, 0x1

    .end local v20    # "vOffset":I
    .local v1, "vOffset":I
    float-to-double v6, v0

    move-object v2, v14

    move/from16 v24, v15

    .end local v14    # "textureData":[F
    .end local v15    # "j":I
    .local v2, "textureData":[F
    .local v24, "j":I
    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v14

    double-to-float v6, v6

    aput v6, v13, v20

    .line 127
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "vOffset":I
    .local v6, "vOffset":I
    float-to-double v14, v0

    move/from16 v16, v6

    .end local v6    # "vOffset":I
    .restart local v16    # "vOffset":I
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v14, v14, v6

    double-to-float v6, v14

    aput v6, v13, v1

    .line 129
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "tOffset":I
    .local v1, "tOffset":I
    int-to-float v6, v12

    mul-float v6, v6, v10

    div-float/2addr v6, v8

    aput v6, v2, v17

    .line 130
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "tOffset":I
    .local v6, "tOffset":I
    add-int v15, v24, v23

    int-to-float v7, v15

    mul-float v7, v7, v9

    div-float/2addr v7, v5

    aput v7, v2, v1

    .line 133
    if-nez v12, :cond_7

    if-eqz v23, :cond_6

    goto :goto_9

    :cond_6
    move/from16 v7, v23

    move/from16 v1, p2

    goto :goto_a

    :cond_7
    :goto_9
    move/from16 v1, p2

    if-ne v12, v1, :cond_9

    move/from16 v7, v23

    const/4 v14, 0x1

    .end local v23    # "k":I
    .local v7, "k":I
    if-ne v7, v14, :cond_8

    .line 134
    :goto_a
    add-int/lit8 v14, v16, -0x3

    const/4 v15, 0x3

    move/from16 v0, v16

    .end local v16    # "vOffset":I
    .local v0, "vOffset":I
    invoke-static {v13, v14, v13, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    add-int/lit8 v0, v0, 0x3

    .line 141
    add-int/lit8 v14, v6, -0x2

    const/4 v15, 0x2

    invoke-static {v2, v14, v2, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    add-int/lit8 v6, v6, 0x2

    move/from16 v16, v0

    move/from16 v17, v6

    goto :goto_c

    .line 133
    .end local v0    # "vOffset":I
    .restart local v16    # "vOffset":I
    :cond_8
    move/from16 v0, v16

    const/4 v15, 0x2

    .end local v16    # "vOffset":I
    .restart local v0    # "vOffset":I
    goto :goto_b

    .end local v0    # "vOffset":I
    .end local v7    # "k":I
    .restart local v16    # "vOffset":I
    .restart local v23    # "k":I
    :cond_9
    move/from16 v0, v16

    move/from16 v7, v23

    const/4 v15, 0x2

    .line 119
    .end local v3    # "phi":F
    .end local v4    # "theta":F
    .end local v16    # "vOffset":I
    .end local v23    # "k":I
    .restart local v0    # "vOffset":I
    .restart local v7    # "k":I
    :goto_b
    move/from16 v16, v0

    move/from16 v17, v6

    .end local v0    # "vOffset":I
    .end local v6    # "tOffset":I
    .restart local v16    # "vOffset":I
    .restart local v17    # "tOffset":I
    :goto_c
    add-int/lit8 v0, v7, 0x1

    move-object v14, v2

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v15, v24

    move/from16 v3, p3

    move/from16 v4, p4

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    goto/16 :goto_7

    .end local v2    # "textureData":[F
    .end local v21    # "phiLow":F
    .end local v22    # "phiHigh":F
    .end local v24    # "j":I
    .local v1, "k":I
    .local v6, "phiLow":F
    .local v7, "phiHigh":F
    .restart local v14    # "textureData":[F
    .restart local v15    # "j":I
    :cond_a
    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v24, v15

    const/4 v15, 0x2

    move v7, v1

    move v1, v2

    move-object v2, v14

    .line 118
    .end local v1    # "k":I
    .end local v6    # "phiLow":F
    .end local v7    # "phiHigh":F
    .end local v14    # "textureData":[F
    .end local v15    # "j":I
    .restart local v2    # "textureData":[F
    .restart local v21    # "phiLow":F
    .restart local v22    # "phiHigh":F
    .restart local v24    # "j":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v22

    move/from16 v15, v24

    move/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move v2, v1

    move/from16 v1, p1

    goto/16 :goto_6

    .end local v2    # "textureData":[F
    .end local v21    # "phiLow":F
    .end local v22    # "phiHigh":F
    .end local v24    # "j":I
    .restart local v6    # "phiLow":F
    .restart local v7    # "phiHigh":F
    .restart local v14    # "textureData":[F
    .restart local v15    # "j":I
    :cond_b
    move v1, v2

    move/from16 v21, v6

    move/from16 v22, v7

    move-object v2, v14

    move/from16 v24, v15

    const/4 v15, 0x2

    .line 112
    .end local v6    # "phiLow":F
    .end local v7    # "phiHigh":F
    .end local v12    # "i":I
    .end local v14    # "textureData":[F
    .end local v15    # "j":I
    .restart local v2    # "textureData":[F
    .restart local v24    # "j":I
    add-int/lit8 v0, v24, 0x1

    move v15, v0

    move/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v7, 0x1

    const/4 v12, 0x2

    move v2, v1

    move/from16 v1, p1

    goto/16 :goto_5

    .end local v2    # "textureData":[F
    .end local v24    # "j":I
    .restart local v14    # "textureData":[F
    .restart local v15    # "j":I
    :cond_c
    move v1, v2

    move-object v2, v14

    move/from16 v24, v15

    .line 154
    .end local v14    # "textureData":[F
    .end local v15    # "j":I
    .restart local v2    # "textureData":[F
    new-instance v0, Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v13, v2, v3}, Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    .line 156
    .local v0, "subMesh":Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;
    new-instance v6, Landroidx/media2/exoplayer/external/video/spherical/Projection;

    new-instance v7, Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;

    new-array v3, v3, [Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;

    aput-object v0, v3, v4

    invoke-direct {v7, v3}, Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;-><init>([Landroidx/media2/exoplayer/external/video/spherical/Projection$SubMesh;)V

    move/from16 v3, p5

    invoke-direct {v6, v7, v3}, Landroidx/media2/exoplayer/external/video/spherical/Projection;-><init>(Landroidx/media2/exoplayer/external/video/spherical/Projection$Mesh;I)V

    return-object v6
.end method

.method public static createEquirectangular(I)Landroidx/media2/exoplayer/external/video/spherical/Projection;
    .locals 6
    .param p0, "stereoMode"    # I

    .line 60
    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    move v5, p0

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/spherical/Projection;->createEquirectangular(FIIFFI)Landroidx/media2/exoplayer/external/video/spherical/Projection;

    move-result-object v0

    return-object v0
.end method
