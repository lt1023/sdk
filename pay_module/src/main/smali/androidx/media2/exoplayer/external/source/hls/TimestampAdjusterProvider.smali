.class public final Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;
.super Ljava/lang/Object;
.source "TimestampAdjusterProvider.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final timestampAdjusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    .line 38
    return-void
.end method


# virtual methods
.method public getAdjuster(I)Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .locals 4
    .param p1, "discontinuitySequence"    # I

    .line 48
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 49
    .local v0, "adjuster":Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    if-nez v0, :cond_0

    .line 50
    new-instance v1, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    move-object v0, v1

    .line 51
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    nop

    .line 53
    :goto_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 61
    return-void
.end method
