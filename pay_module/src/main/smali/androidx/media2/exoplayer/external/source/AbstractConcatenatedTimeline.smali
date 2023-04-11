.class abstract Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;
.super Landroidx/media2/exoplayer/external/Timeline;
.source "AbstractConcatenatedTimeline.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final childCount:I

.field private final isAtomic:Z

.field private final shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;


# direct methods
.method public constructor <init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;)V
    .locals 1
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 80
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/Timeline;-><init>()V

    .line 81
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->isAtomic:Z

    .line 82
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 83
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLength()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->childCount:I

    .line 84
    return-void
.end method

.method public static getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "concatenatedUid"    # Ljava/lang/Object;

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public static getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "concatenatedUid"    # Ljava/lang/Object;

    .line 47
    move-object v0, p0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public static getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "childTimelineUid"    # Ljava/lang/Object;
    .param p1, "childPeriodUid"    # Ljava/lang/Object;

    .line 69
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getNextChildIndex(IZ)I
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .line 316
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getNextIndex(I)I

    move-result v0

    goto :goto_0

    .line 317
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 316
    :goto_0
    return v0
.end method

.method private getPreviousChildIndex(IZ)I
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "shuffleModeEnabled"    # Z

    .line 321
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result v0

    goto :goto_0

    .line 322
    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 321
    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method public getFirstWindowIndex(Z)I
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 178
    iget v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v0, :cond_1

    .line 182
    const/4 p1, 0x0

    goto :goto_0

    .line 181
    :cond_1
    nop

    .line 185
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getFirstIndex()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 186
    .local v0, "firstChildIndex":I
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v0

    .line 188
    if-ne v0, v1, :cond_3

    .line 190
    return v1

    .line 188
    :cond_3
    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 194
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    return v1
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 5
    .param p1, "uid"    # Ljava/lang/Object;

    .line 241
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 242
    return v1

    .line 244
    :cond_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "childUid":Ljava/lang/Object;
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 246
    .local v2, "periodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v3

    .line 247
    .local v3, "childIndex":I
    if-ne v3, v1, :cond_1

    .line 248
    return v1

    .line 250
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    .line 251
    .local v4, "periodIndexInChild":I
    if-ne v4, v1, :cond_2

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    add-int/2addr v1, v4

    .line 251
    :goto_0
    return v1
.end method

.method public getLastWindowIndex(Z)I
    .locals 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 158
    return v1

    .line 160
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v0, :cond_1

    .line 161
    const/4 p1, 0x0

    goto :goto_0

    .line 160
    :cond_1
    nop

    .line 164
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    .line 165
    .local v0, "lastChildIndex":I
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    .line 167
    if-ne v0, v1, :cond_3

    .line 169
    return v1

    .line 167
    :cond_3
    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 173
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/Timeline;->getLastWindowIndex(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 172
    return v1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 89
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 92
    const/4 p3, 0x0

    goto :goto_1

    .line 89
    :cond_1
    nop

    .line 95
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 96
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 97
    .local v2, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 99
    if-ne p2, v1, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p2

    .line 97
    :goto_2
    invoke-virtual {v3, v4, v5, p3}, Landroidx/media2/exoplayer/external/Timeline;->getNextWindowIndex(IIZ)I

    move-result v3

    .line 101
    .local v3, "nextWindowIndexInChild":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 102
    add-int v1, v2, v3

    return v1

    .line 105
    :cond_3
    invoke-direct {p0, v0, p3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v5

    .line 106
    .local v5, "nextChildIndex":I
    :goto_3
    if-eq v5, v4, :cond_4

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    invoke-direct {p0, v5, p3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v5

    goto :goto_3

    .line 106
    :cond_4
    nop

    .line 109
    if-eq v5, v4, :cond_5

    .line 110
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 111
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 110
    return v1

    .line 114
    :cond_5
    if-ne p2, v1, :cond_6

    .line 115
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    return v1

    .line 117
    :cond_6
    return v4
.end method

.method public final getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 5
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 225
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 226
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 227
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 228
    .local v2, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    invoke-virtual {v3, v4, p2, p3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 230
    iget v3, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    add-int/2addr v3, v1

    iput v3, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 231
    if-eqz p3, :cond_0

    .line 232
    nop

    .line 234
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 233
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_0
    nop

    .line 236
    :goto_0
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 5
    .param p1, "uid"    # Ljava/lang/Object;
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 213
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "childUid":Ljava/lang/Object;
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, "periodUid":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v2

    .line 216
    .local v2, "childIndex":I
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    .line 217
    .local v3, "firstWindowIndexInChild":I
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 218
    iget v4, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    add-int/2addr v4, v3

    iput v4, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 219
    iput-object p1, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    .line 220
    return-object p2
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 123
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 126
    const/4 p3, 0x0

    goto :goto_1

    .line 123
    :cond_1
    nop

    .line 129
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 130
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 131
    .local v2, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v3

    sub-int v4, p1, v2

    .line 133
    if-ne p2, v1, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p2

    .line 131
    :goto_2
    invoke-virtual {v3, v4, v5, p3}, Landroidx/media2/exoplayer/external/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v3

    .line 135
    .local v3, "previousWindowIndexInChild":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 136
    add-int v1, v2, v3

    return v1

    .line 139
    :cond_3
    invoke-direct {p0, v0, p3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v5

    .line 140
    .local v5, "previousChildIndex":I
    :goto_3
    if-eq v5, v4, :cond_5

    .line 141
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    invoke-direct {p0, v5, p3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v5

    goto :goto_3

    .line 141
    :cond_4
    goto :goto_4

    .line 140
    :cond_5
    nop

    .line 144
    :goto_4
    if-eq v5, v4, :cond_6

    .line 145
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 146
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroidx/media2/exoplayer/external/Timeline;->getLastWindowIndex(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 145
    return v1

    .line 149
    :cond_6
    if-ne p2, v1, :cond_7

    .line 150
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result v1

    return v1

    .line 152
    :cond_7
    return v4
.end method

.method protected abstract getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 4
    .param p1, "periodIndex"    # I

    .line 257
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 258
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    .line 259
    .local v1, "firstPeriodIndexInChild":I
    nop

    .line 260
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 261
    .local v2, "periodUidInChild":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;
    .locals 9
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p3, "setTag"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .line 200
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 201
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 202
    .local v1, "firstWindowIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 203
    .local v2, "firstPeriodIndexInChild":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v3

    sub-int v4, p1, v1

    .line 204
    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 206
    iget v3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v3, v2

    iput v3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    .line 207
    iget v3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v3, v2

    iput v3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->lastPeriodIndex:I

    .line 208
    return-object p2
.end method
