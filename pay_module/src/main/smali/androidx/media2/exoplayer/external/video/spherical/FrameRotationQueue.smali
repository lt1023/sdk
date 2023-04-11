.class public final Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;
.super Ljava/lang/Object;
.source "FrameRotationQueue.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final recenterMatrix:[F

.field private recenterMatrixComputed:Z

.field private final rotationMatrix:[F

.field private final rotations:Landroidx/media2/exoplayer/external/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/TimedValueQueue<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 44
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 45
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotations:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    .line 46
    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .locals 6
    .param p0, "recenterMatrix"    # [F
    .param p1, "rotationMatrix"    # [F

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 106
    const/16 v1, 0xa

    aget v2, p1, v1

    aget v3, p1, v1

    mul-float v2, v2, v3

    const/16 v3, 0x8

    aget v4, p1, v3

    aget v5, p1, v3

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    .line 108
    .local v2, "normRowSqr":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 109
    .local v4, "normRow":F
    aget v5, p1, v1

    div-float/2addr v5, v4

    aput v5, p0, v0

    .line 110
    aget v0, p1, v3

    div-float/2addr v0, v4

    const/4 v5, 0x2

    aput v0, p0, v5

    .line 111
    aget v0, p1, v3

    neg-float v0, v0

    div-float/2addr v0, v4

    aput v0, p0, v3

    .line 112
    aget v0, p1, v1

    div-float/2addr v0, v4

    aput v0, p0, v1

    .line 113
    return-void
.end method

.method private static getRotationMatrixFromAngleAxis([F[F)V
    .locals 13
    .param p0, "matrix"    # [F
    .param p1, "angleAxis"    # [F

    .line 119
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 120
    .local v1, "x":F
    const/4 v2, 0x1

    aget v2, p1, v2

    neg-float v2, v2

    .line 121
    .local v2, "y":F
    const/4 v3, 0x2

    aget v3, p1, v3

    neg-float v3, v3

    .line 122
    .local v3, "z":F
    invoke-static {v1, v2, v3}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v4

    .line 123
    .local v4, "angleRad":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 124
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 125
    .local v0, "angleDeg":F
    const/4 v8, 0x0

    div-float v10, v1, v4

    div-float v11, v2, v4

    div-float v12, v3, v4

    move-object v7, p0

    move v9, v0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 126
    .end local v0    # "angleDeg":F
    goto :goto_0

    .line 127
    :cond_0
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 129
    :goto_0
    return-void
.end method


# virtual methods
.method public pollRotationMatrix([FJ)Z
    .locals 10
    .param p1, "matrix"    # [F
    .param p2, "timestampUs"    # J

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotations:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 76
    .local v0, "rotation":[F
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x0

    return v1

    .line 80
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->getRotationMatrixFromAngleAxis([F[F)V

    .line 81
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 83
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    goto :goto_0

    .line 81
    :cond_1
    nop

    .line 85
    :goto_0
    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 86
    return v2
.end method

.method public reset()V
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotations:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 63
    return-void
.end method

.method public setRotation(J[F)V
    .locals 1
    .param p1, "timestampUs"    # J
    .param p3, "angleAxis"    # [F

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/spherical/FrameRotationQueue;->rotations:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 57
    return-void
.end method
