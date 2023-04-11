.class public final Landroidx/media2/session/HeartRating;
.super Ljava/lang/Object;
.source "HeartRating.java"

# interfaces
.implements Landroidx/media2/common/Rating;


# instance fields
.field mHasHeart:Z

.field mIsRated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "hasHeart"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 65
    instance-of v0, p1, Landroidx/media2/session/HeartRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/HeartRating;

    .line 69
    .local v0, "other":Landroidx/media2/session/HeartRating;
    iget-boolean v2, p0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    iget-boolean v3, v0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    iget-boolean v3, v0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hasHeart()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeartRating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/media2/session/HeartRating;->mIsRated:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasHeart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/media2/session/HeartRating;->mHasHeart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "unrated"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
