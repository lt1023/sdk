.class public final Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnshuffledShuffleOrder"
.end annotation


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    .line 190
    return-void
.end method


# virtual methods
.method public cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .locals 2

    .line 229
    new-instance v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .locals 2
    .param p1, "insertionIndex"    # I
    .param p2, "insertionCount"    # I

    .line 219
    new-instance v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/2addr v1, p2

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public cloneAndRemove(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .locals 2
    .param p1, "indexFrom"    # I
    .param p2, "indexToExclusive"    # I

    .line 224
    new-instance v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    sub-int/2addr v1, p2

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public getFirstIndex()I
    .locals 1

    .line 214
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getLastIndex()I
    .locals 1

    .line 209
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 194
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    return v0
.end method

.method public getNextIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 199
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPreviousIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 204
    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    move v0, p1

    nop

    :cond_0
    return v0
.end method
