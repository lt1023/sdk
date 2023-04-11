.class final Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final childIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Landroidx/media2/exoplayer/external/Timeline;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;IILandroidx/media2/exoplayer/external/source/ShuffleOrder;Z)V
    .locals 7
    .param p2, "windowCount"    # I
    .param p3, "periodCount"    # I
    .param p4, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .param p5, "isAtomic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;II",
            "Landroidx/media2/exoplayer/external/source/ShuffleOrder;",
            "Z)V"
        }
    .end annotation

    .line 970
    .local p1, "mediaSourceHolders":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;>;"
    invoke-direct {p0, p5, p4}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;)V

    .line 971
    iput p2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    .line 972
    iput p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    .line 973
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 974
    .local v0, "childCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 975
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 976
    new-array v1, v0, [Landroidx/media2/exoplayer/external/Timeline;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media2/exoplayer/external/Timeline;

    .line 977
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 978
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 979
    const/4 v1, 0x0

    .line 980
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 981
    .local v3, "mediaSourceHolder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    aput-object v5, v4, v1

    .line 982
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    iget v5, v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    aput v5, v4, v1

    .line 983
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    iget v5, v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    aput v5, v4, v1

    .line 984
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 985
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    aget-object v5, v5, v1

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .end local v3    # "mediaSourceHolder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    move v1, v6

    goto :goto_0

    .line 987
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 2
    .param p1, "childUid"    # Ljava/lang/Object;

    .line 1001
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1002
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 3
    .param p1, "periodIndex"    # I

    .line 991
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 3
    .param p1, "windowIndex"    # I

    .line 996
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "childIndex"    # I

    .line 1022
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1012
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1017
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPeriodCount()I
    .locals 1

    .line 1032
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return v0
.end method

.method protected getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;
    .locals 1
    .param p1, "childIndex"    # I

    .line 1007
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media2/exoplayer/external/Timeline;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWindowCount()I
    .locals 1

    .line 1027
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    return v0
.end method
