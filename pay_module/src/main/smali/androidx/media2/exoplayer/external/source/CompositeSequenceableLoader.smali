.class public Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SequenceableLoader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field protected final loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .locals 0
    .param p1, "loaders"    # [Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 35
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 18
    .param p1, "positionUs"    # J

    .line 70
    move-wide/from16 v0, p1

    const/4 v2, 0x0

    .line 73
    .local v2, "madeProgress":Z
    :goto_0
    const/4 v3, 0x0

    .line 74
    .local v3, "madeProgressThisIteration":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v4

    .line 75
    .local v4, "nextLoadPositionUs":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 76
    move-object/from16 v8, p0

    goto :goto_5

    .line 78
    :cond_0
    move-object/from16 v8, p0

    iget-object v9, v8, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v3

    const/4 v3, 0x0

    .end local v3    # "madeProgressThisIteration":Z
    .local v12, "madeProgressThisIteration":Z
    :goto_1
    if-ge v3, v10, :cond_4

    aget-object v13, v9, v3

    .line 79
    .local v13, "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v14

    .line 80
    .local v14, "loaderNextLoadPositionUs":J
    cmp-long v16, v14, v6

    if-eqz v16, :cond_1

    cmp-long v16, v14, v0

    if-gtz v16, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    .line 83
    .local v16, "isLoaderBehind":Z
    :goto_2
    cmp-long v17, v14, v4

    if-eqz v17, :cond_3

    if-eqz v16, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_4

    .line 84
    :cond_3
    :goto_3
    invoke-interface {v13, v0, v1}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->continueLoading(J)Z

    move-result v17

    or-int v12, v12, v17

    .line 78
    .end local v13    # "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    .end local v14    # "loaderNextLoadPositionUs":J
    .end local v16    # "isLoaderBehind":Z
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :cond_4
    or-int/2addr v2, v12

    .line 88
    .end local v4    # "nextLoadPositionUs":J
    if-nez v12, :cond_5

    move v3, v12

    .line 89
    .end local v12    # "madeProgressThisIteration":Z
    .restart local v3    # "madeProgressThisIteration":Z
    :goto_5
    return v2

    .line 88
    .end local v3    # "madeProgressThisIteration":Z
    .restart local v12    # "madeProgressThisIteration":Z
    :cond_5
    goto :goto_0
.end method

.method public final getBufferedPositionUs()J
    .locals 11

    .line 39
    const-wide v0, 0x7fffffffffffffffL

    .line 40
    .local v0, "bufferedPositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    if-ge v4, v3, :cond_1

    aget-object v7, v2, v4

    .line 41
    .local v7, "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v8

    .line 42
    .local v8, "loaderBufferedPositionUs":J
    cmp-long v10, v8, v5

    if-eqz v10, :cond_0

    .line 43
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 42
    :cond_0
    nop

    .line 40
    .end local v7    # "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    .end local v8    # "loaderBufferedPositionUs":J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide v5, v0

    :goto_2
    return-wide v5
.end method

.method public final getNextLoadPositionUs()J
    .locals 11

    .line 51
    const-wide v0, 0x7fffffffffffffffL

    .line 52
    .local v0, "nextLoadPositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    if-ge v4, v3, :cond_1

    aget-object v7, v2, v4

    .line 53
    .local v7, "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v8

    .line 54
    .local v8, "loaderNextLoadPositionUs":J
    cmp-long v10, v8, v5

    if-eqz v10, :cond_0

    .line 55
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 54
    :cond_0
    nop

    .line 52
    .end local v7    # "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    .end local v8    # "loaderNextLoadPositionUs":J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide v5, v0

    :goto_2
    return-wide v5
.end method

.method public final reevaluateBuffer(J)V
    .locals 4
    .param p1, "positionUs"    # J

    .line 63
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 64
    .local v3, "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    invoke-interface {v3, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 63
    .end local v3    # "loader":Landroidx/media2/exoplayer/external/source/SequenceableLoader;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
