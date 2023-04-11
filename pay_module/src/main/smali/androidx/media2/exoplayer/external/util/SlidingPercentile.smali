.class public Landroidx/media2/exoplayer/external/util/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$$Lambda$0;->$instance:Ljava/util/Comparator;

    sput-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 45
    sget-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$$Lambda$1;->$instance:Ljava/util/Comparator;

    sput-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxWeight"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->maxWeight:I

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    .line 72
    return-void
.end method

.method private ensureSortedByIndex()V
    .locals 3

    .line 140
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    iput v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    goto :goto_0

    .line 140
    :cond_0
    nop

    .line 144
    :goto_0
    return-void
.end method

.method private ensureSortedByValue()V
    .locals 2

    .line 150
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    goto :goto_0

    .line 150
    :cond_0
    nop

    .line 154
    :goto_0
    return-void
.end method

.method static final synthetic lambda$static$0$SlidingPercentile(Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;)I
    .locals 2
    .param p0, "a"    # Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    .param p1, "b"    # Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 44
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->index:I

    iget v1, p1, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static final synthetic lambda$static$1$SlidingPercentile(Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;)I
    .locals 2
    .param p0, "a"    # Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    .param p1, "b"    # Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 46
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    iget v1, p1, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addSample(IF)V
    .locals 6
    .param p1, "weight"    # I
    .param p2, "value"    # F

    .line 89
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->ensureSortedByIndex()V

    .line 91
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    aget-object v0, v1, v0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;-><init>(Landroidx/media2/exoplayer/external/util/SlidingPercentile$1;)V

    :goto_0
    nop

    .line 93
    .local v0, "newSample":Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    iget v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->nextSampleIndex:I

    iput v1, v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->index:I

    .line 94
    iput p1, v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    .line 95
    iput p2, v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    .line 96
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    .line 99
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    iget v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->maxWeight:I

    if-le v1, v2, :cond_3

    .line 100
    sub-int/2addr v1, v2

    .line 101
    .local v1, "excessWeight":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 102
    .local v2, "oldestSample":Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    iget v4, v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    if-gt v4, v1, :cond_2

    .line 103
    iget v4, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    iget v5, v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    .line 104
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    iget v3, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 106
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    aput-object v2, v4, v3

    goto :goto_2

    .line 105
    :cond_1
    goto :goto_2

    .line 109
    :cond_2
    iget v3, v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    .line 110
    iget v3, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    .line 112
    .end local v1    # "excessWeight":I
    .end local v2    # "oldestSample":Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    :goto_2
    goto :goto_1

    .line 113
    :cond_3
    return-void
.end method

.method public getPercentile(F)F
    .locals 5
    .param p1, "percentile"    # F

    .line 122
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->ensureSortedByValue()V

    .line 123
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 124
    .local v0, "desiredWeight":F
    const/4 v1, 0x0

    .line 125
    .local v1, "accumulatedWeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 126
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 127
    .local v3, "currentSample":Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    iget v4, v3, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    add-int/2addr v1, v4

    .line 128
    int-to-float v4, v1

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_0

    .line 129
    iget v4, v3, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    return v4

    .line 128
    :cond_0
    nop

    .line 125
    .end local v3    # "currentSample":Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    iget v2, v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    :goto_1
    return v2
.end method

.method public reset()V
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->nextSampleIndex:I

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    .line 80
    return-void
.end method
