.class public final Landroidx/media2/session/StarRating;
.super Ljava/lang/Object;
.source "StarRating.java"

# interfaces
.implements Landroidx/media2/common/Rating;


# static fields
.field private static final RATING_NOT_RATED:F = -1.0f


# instance fields
.field mMaxStars:I

.field mStarRating:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxStars"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-lez p1, :cond_0

    .line 54
    iput p1, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    .line 55
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    .line 56
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxStars should be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "maxStars"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2, "starRating"    # F

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-lez p1, :cond_1

    .line 71
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    int-to-float v0, p1

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 74
    iput p1, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    .line 75
    iput p2, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    .line 76
    return-void

    .line 71
    :cond_0
    nop

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "starRating is out of range [0, maxStars]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxStars should be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p1, Landroidx/media2/session/StarRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    return v1

    .line 93
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/StarRating;

    .line 94
    .local v0, "other":Landroidx/media2/session/StarRating;
    iget v2, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    iget v3, v0, Landroidx/media2/session/StarRating;->mMaxStars:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    iget v3, v0, Landroidx/media2/session/StarRating;->mStarRating:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getMaxStars()I
    .locals 1

    .line 109
    iget v0, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .line 118
    iget v0, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .locals 2

    .line 80
    iget v0, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StarRating: maxStars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Landroidx/media2/session/StarRating;->isRated()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", starRating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ", unrated"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method
