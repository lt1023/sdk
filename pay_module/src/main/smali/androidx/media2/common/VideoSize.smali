.class public final Landroidx/media2/common/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field mHeight:I

.field mWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2, "height"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-ltz p1, :cond_1

    .line 57
    if-ltz p2, :cond_0

    .line 60
    iput p1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    .line 61
    iput p2, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    .line 62
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 96
    return v1

    .line 98
    :cond_1
    instance-of v2, p1, Landroidx/media2/common/VideoSize;

    if-eqz v2, :cond_3

    .line 99
    move-object v2, p1

    check-cast v2, Landroidx/media2/common/VideoSize;

    .line 100
    .local v2, "other":Landroidx/media2/common/VideoSize;
    iget v3, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    iget v4, v2, Landroidx/media2/common/VideoSize;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    iget v4, v2, Landroidx/media2/common/VideoSize;->mHeight:I

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0

    .line 102
    .end local v2    # "other":Landroidx/media2/common/VideoSize;
    :cond_3
    return v0
.end method

.method public getHeight()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 77
    iget v0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 69
    iget v0, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 118
    iget v0, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    iget v1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media2/common/VideoSize;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/common/VideoSize;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
