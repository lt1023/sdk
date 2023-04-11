.class public Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
.super Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyTimeline;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<",
        "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x0

.field private static final MSG_MOVE:I = 0x2

.field private static final MSG_ON_COMPLETION:I = 0x5

.field private static final MSG_REMOVE:I = 0x1

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x3

.field private static final MSG_UPDATE_TIMELINE:I = 0x4


# instance fields
.field private final isAtomic:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/MediaPeriod;",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private nextTimelineUpdateOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOnCompletionActions:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private periodCount:I

.field private playbackThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

.field private timelineUpdateScheduled:Z

.field private final useLazyPreparation:Z

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;

.field private windowCount:I


# direct methods
.method public varargs constructor <init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 1
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .param p3, "mediaSources"    # [Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(ZZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 118
    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 3
    .param p1, "isAtomic"    # Z
    .param p2, "useLazyPreparation"    # Z
    .param p3, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .param p4, "mediaSources"    # [Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 135
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;-><init>()V

    .line 136
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 137
    .local v2, "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v2    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 140
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 146
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->isAtomic:Z

    .line 147
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    .line 148
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 149
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 150
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 2
    .param p1, "isAtomic"    # Z
    .param p2, "mediaSources"    # [Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 105
    new-instance v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 106
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSources"    # [Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(Z[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 96
    return-void
.end method

.method private addMediaSourceInternal(ILandroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 4
    .param p1, "newIndex"    # I
    .param p2, "newMediaSourceHolder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 743
    if-lez p1, :cond_0

    .line 744
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 745
    .local v0, "previousHolder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 747
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 748
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 745
    invoke-virtual {p2, p1, v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(III)V

    .line 749
    .end local v0    # "previousHolder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    goto :goto_0

    .line 750
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(III)V

    .line 753
    :goto_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 756
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v0

    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 757
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v1

    .line 753
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->correctOffsets(IIII)V

    .line 758
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 759
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    if-nez v0, :cond_1

    .line 761
    iput-boolean v2, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    .line 762
    iget-object v0, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-virtual {p0, p2, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    goto :goto_1

    .line 760
    :cond_1
    nop

    .line 764
    :goto_1
    return-void
.end method

.method private addMediaSourcesInternal(ILjava/util/Collection;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 737
    .local p2, "mediaSourceHolders":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 738
    .local v1, "mediaSourceHolder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-direct {p0, p1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSourceInternal(ILandroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 739
    .end local v1    # "mediaSourceHolder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    move p1, v2

    goto :goto_0

    .line 740
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_0
    return-void
.end method

.method private addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "index"    # I
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 543
    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 544
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 545
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 546
    .local v3, "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v3    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    goto :goto_3

    .line 548
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    .local v2, "mediaSourceHolders":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 550
    .local v4, "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    new-instance v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-direct {v5, v4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v4    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    goto :goto_4

    .line 552
    :cond_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 553
    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 554
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v3

    .line 555
    .local v3, "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    new-instance v4, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    invoke-direct {v4, p1, v2, v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 556
    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 557
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v3    # "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_5

    .line 553
    :cond_5
    nop

    .line 558
    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 559
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 558
    :cond_6
    :goto_5
    nop

    .line 561
    :goto_6
    return-void
.end method

.method private correctOffsets(IIII)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "childIndexUpdate"    # I
    .param p3, "windowOffsetUpdate"    # I
    .param p4, "periodOffsetUpdate"    # I

    .line 864
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    .line 865
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    add-int/2addr v0, p4

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    .line 866
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 867
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v2, p2

    iput v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 868
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v2, p3

    iput v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 869
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/2addr v2, p4

    iput v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 633
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 637
    .local v0, "handlerAndRunnable":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 638
    return-object v0

    .line 633
    .end local v0    # "handlerAndRunnable":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    :cond_1
    :goto_0
    nop

    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized dispatchOnCompletionActions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;)V"
        }
    .end annotation

    .local p1, "onCompletionActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    monitor-enter p0

    .line 729
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 730
    .local v1, "pendingAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;->dispatch()V

    .line 731
    .end local v1    # "pendingAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_0

    .line 732
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    .line 728
    .end local p1    # "onCompletionActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private static getChildPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "holder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p1, "periodUid"    # Ljava/lang/Object;

    .line 890
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 891
    .local v0, "childUid":Ljava/lang/Object;
    invoke-static {}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$100()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$200(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "periodUid"    # Ljava/lang/Object;

    .line 885
    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "holder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p1, "childPeriodUid"    # Ljava/lang/Object;

    .line 895
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$200(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-static {}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$100()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 895
    :cond_0
    nop

    .line 898
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;
    .locals 1

    .line 724
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 645
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 688
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 684
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 685
    .local v0, "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V

    .line 686
    goto/16 :goto_2

    .line 681
    .end local v0    # "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    :pswitch_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    .line 682
    goto/16 :goto_2

    .line 675
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 677
    .local v0, "shuffleOrderMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Landroidx/media2/exoplayer/external/source/ShuffleOrder;>;"
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 678
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 679
    goto/16 :goto_2

    .line 668
    .end local v0    # "shuffleOrderMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Landroidx/media2/exoplayer/external/source/ShuffleOrder;>;"
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 669
    .local v0, "moveMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget v4, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    add-int/2addr v4, v1

    invoke-interface {v2, v3, v4}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 670
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 671
    iget v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->moveMediaSourceInternal(II)V

    .line 672
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 673
    goto :goto_2

    .line 654
    .end local v0    # "moveMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 655
    .local v0, "removeMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    iget v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 656
    .local v2, "fromIndex":I
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 657
    .local v3, "toIndex":I
    if-nez v2, :cond_0

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLength()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 658
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    goto :goto_0

    .line 657
    :cond_0
    nop

    .line 660
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v4, v2, v3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 662
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .local v4, "index":I
    :goto_1
    if-lt v4, v2, :cond_1

    .line 663
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSourceInternal(I)V

    .line 662
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 665
    .end local v4    # "index":I
    :cond_1
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 666
    goto :goto_2

    .line 647
    .end local v0    # "removeMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    .end local v2    # "fromIndex":I
    .end local v3    # "toIndex":I
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 648
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 649
    .local v0, "addMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;>;>;"
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 650
    iget v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 651
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 652
    nop

    .line 690
    .end local v0    # "addMessage":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;, "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData<Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;>;>;"
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeReleaseChildSource(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 1
    .param p1, "mediaSourceHolder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 876
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 878
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    goto :goto_0

    .line 878
    :cond_0
    goto :goto_0

    .line 876
    :cond_1
    nop

    .line 881
    :goto_0
    return-void
.end method

.method private moveMediaSourceInternal(II)V
    .locals 7
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .line 848
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 849
    .local v0, "startIndex":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 850
    .local v1, "endIndex":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 851
    .local v2, "windowOffset":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v3, v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 852
    .local v3, "periodOffset":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-interface {v4, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 853
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 854
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 855
    .local v5, "holder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    iput v2, v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 856
    iput v3, v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 857
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v6

    add-int/2addr v2, v6

    .line 858
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v6

    add-int/2addr v3, v6

    .line 853
    .end local v5    # "holder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 860
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method private movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 588
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 589
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 590
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 591
    if-eqz v0, :cond_3

    .line 592
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v1

    .line 593
    .local v1, "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    const/4 v2, 0x2

    new-instance v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 594
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_3

    .line 596
    :cond_3
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 597
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 596
    :cond_4
    :goto_3
    nop

    .line 599
    :goto_4
    return-void
.end method

.method private removeMediaSourceInternal(I)V
    .locals 5
    .param p1, "index"    # I

    .line 835
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 836
    .local v0, "holder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 838
    .local v1, "oldTimeline":Landroidx/media2/exoplayer/external/Timeline;
    nop

    .line 841
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    .line 842
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v3

    neg-int v3, v3

    .line 838
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4, v2, v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->correctOffsets(IIII)V

    .line 843
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 844
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 845
    return-void
.end method

.method private removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 569
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 570
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 571
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-static {v2, p1, p2}, Landroidx/media2/exoplayer/external/util/Util;->removeRange(Ljava/util/List;II)V

    .line 572
    if-eqz v0, :cond_3

    .line 573
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v2

    .line 574
    .local v2, "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    new-instance v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 575
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v2    # "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_2

    .line 577
    :cond_3
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 578
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 577
    :cond_4
    :goto_2
    nop

    .line 580
    :goto_3
    return-void
.end method

.method private scheduleTimelineUpdate()V
    .locals 1

    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 695
    return-void
.end method

.method private scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V
    .locals 2
    .param p1, "onCompletionAction"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 698
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    goto :goto_0

    .line 698
    :cond_0
    nop

    .line 702
    :goto_0
    if-eqz p1, :cond_1

    .line 703
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 702
    :cond_1
    nop

    .line 705
    :goto_1
    return-void
.end method

.method private setPublicShuffleOrder(Landroidx/media2/exoplayer/external/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 604
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 605
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 606
    .local v0, "playbackThreadHandler":Landroid/os/Handler;
    if-eqz v0, :cond_4

    .line 607
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    .line 608
    .local v2, "size":I
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLength()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 609
    nop

    .line 611
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v3

    .line 612
    invoke-interface {v3, v1, v2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object p1

    goto :goto_3

    .line 608
    :cond_3
    nop

    .line 614
    :goto_3
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object v3

    .line 615
    .local v3, "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    const/4 v4, 0x3

    new-instance v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    invoke-direct {v5, v1, p1, v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 616
    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 619
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 620
    .end local v2    # "size":I
    .end local v3    # "callbackAction":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    goto :goto_5

    .line 621
    :cond_4
    nop

    .line 622
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLength()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, p1

    :goto_4
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 623
    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 624
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 623
    :cond_6
    nop

    .line 627
    :goto_5
    return-void
.end method

.method private updateMediaSourceInternal(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/Timeline;)V
    .locals 16
    .param p1, "mediaSourceHolder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 767
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    if-eqz v1, :cond_a

    .line 770
    iget-object v9, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 771
    .local v9, "deferredTimeline":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    if-ne v2, v8, :cond_0

    .line 772
    return-void

    .line 774
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v2

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v3

    sub-int v10, v2, v3

    .line 775
    .local v10, "windowOffsetUpdate":I
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v2

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v3

    sub-int v11, v2, v3

    .line 776
    .local v11, "periodOffsetUpdate":I
    const/4 v2, 0x0

    const/4 v12, 0x1

    if-nez v10, :cond_2

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 777
    :cond_2
    :goto_0
    iget v3, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v2, v10, v11}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->correctOffsets(IIII)V

    .line 783
    :goto_1
    iget-boolean v3, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-eqz v3, :cond_3

    .line 784
    invoke-virtual {v9, v8}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->cloneWithUpdatedTimeline(Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    goto/16 :goto_6

    .line 785
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 786
    nop

    .line 787
    invoke-static {}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$100()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->createWithRealTimeline(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    goto/16 :goto_6

    .line 792
    :cond_4
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v12, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 794
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 795
    const/4 v3, 0x0

    goto :goto_3

    .line 796
    :cond_6
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    :goto_3
    move-object v13, v3

    .line 809
    .local v13, "deferredMediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v8, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 810
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    .line 811
    .local v2, "windowStartPositionUs":J
    if-eqz v13, :cond_8

    .line 812
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->getPreparePositionUs()J

    move-result-wide v4

    .line 813
    .local v4, "periodPreparePositionUs":J
    const-wide/16 v6, 0x0

    cmp-long v14, v4, v6

    if-eqz v14, :cond_7

    .line 814
    move-wide v2, v4

    move-wide v14, v2

    goto :goto_5

    .line 813
    :cond_7
    goto :goto_4

    .line 811
    .end local v4    # "periodPreparePositionUs":J
    :cond_8
    nop

    .line 817
    :goto_4
    move-wide v14, v2

    .end local v2    # "windowStartPositionUs":J
    .local v14, "windowStartPositionUs":J
    :goto_5
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    const/4 v5, 0x0

    .line 818
    move-object/from16 v2, p2

    move-wide v6, v14

    invoke-virtual/range {v2 .. v7}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 819
    .local v2, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 820
    .local v3, "periodUid":Ljava/lang/Object;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 821
    .local v4, "periodPositionUs":J
    invoke-static {v8, v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->createWithRealTimeline(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    move-result-object v6

    iput-object v6, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 822
    if-eqz v13, :cond_9

    .line 823
    invoke-virtual {v13, v4, v5}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->overridePreparePositionUs(J)V

    .line 824
    iget-object v6, v13, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v7, v13, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 826
    invoke-static {v1, v7}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getChildPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 825
    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v6

    .line 827
    .local v6, "idInSource":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    invoke-virtual {v13, v6}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    goto :goto_6

    .line 822
    .end local v6    # "idInSource":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    :cond_9
    nop

    .line 830
    .end local v2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v3    # "periodUid":Ljava/lang/Object;
    .end local v4    # "periodPositionUs":J
    .end local v13    # "deferredMediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    .end local v14    # "windowStartPositionUs":J
    :goto_6
    iput-boolean v12, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    .line 831
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V

    .line 832
    return-void

    .line 768
    .end local v9    # "deferredTimeline":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;
    .end local v10    # "windowOffsetUpdate":I
    .end local v11    # "periodOffsetUpdate":I
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private updateTimelineAndScheduleOnCompletionActions()V
    .locals 8

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 709
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 710
    .local v0, "onCompletionActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 711
    new-instance v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    iget v5, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->isAtomic:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;IILandroidx/media2/exoplayer/external/source/ShuffleOrder;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 715
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object v1

    .line 716
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 717
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 718
    return-void
.end method


# virtual methods
.method public final declared-synchronized addMediaSource(ILandroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;

    monitor-enter p0

    .line 183
    nop

    .line 185
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addMediaSource(ILandroidx/media2/exoplayer/external/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 202
    nop

    .line 203
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 201
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addMediaSource(Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSource(ILandroidx/media2/exoplayer/external/source/MediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 158
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addMediaSource(Landroidx/media2/exoplayer/external/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSource(ILandroidx/media2/exoplayer/external/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSource":Landroidx/media2/exoplayer/external/source/MediaSource;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addMediaSources(ILjava/util/Collection;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "index"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    monitor-enter p0

    .line 263
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 262
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addMediaSources(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .local p1, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 213
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 212
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized addMediaSources(Ljava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .local p1, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 231
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/exoplayer/external/source/MediaSource;>;"
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final bridge synthetic bridge$lambda$0$ConcatenatingMediaSource(Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 375
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 374
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clear(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 386
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getSize()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSourceRange(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 385
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 10
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 458
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, "mediaSourceHolderUid":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 460
    .local v1, "holder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 462
    new-instance v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    new-instance v4, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$1;)V

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;)V

    move-object v1, v3

    .line 463
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    goto :goto_0

    .line 460
    :cond_0
    nop

    .line 465
    :goto_0
    new-instance v9, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)V

    .line 467
    .local v3, "mediaPeriod":Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    if-nez v4, :cond_1

    .line 470
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    .line 471
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    goto :goto_1

    .line 472
    :cond_1
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getChildPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v2

    .line 474
    .local v2, "idInSource":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    goto :goto_1

    .line 472
    .end local v2    # "idInSource":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    :cond_2
    nop

    .line 476
    :goto_1
    return-object v3
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 6
    .param p1, "mediaSourceHolder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 520
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v3, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 522
    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 523
    .local v1, "periodUid":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v2

    return-object v2

    .line 517
    .end local v1    # "periodUid":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized getMediaSource(I)Landroidx/media2/exoplayer/external/source/MediaSource;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWindowIndexForChildWindowIndex(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;I)I
    .locals 1
    .param p1, "mediaSourceHolder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "windowIndex"    # I

    .line 532
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v0, p2

    return v0
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0

    .line 54
    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getWindowIndexForChildWindowIndex(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;I)I

    move-result p1

    return p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    return-void
.end method

.method public final declared-synchronized moveMediaSource(II)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    monitor-enter p0

    .line 352
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 351
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "currentIndex":I
    .end local p2    # "newIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized moveMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 370
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->movePublicMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 369
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "currentIndex":I
    .end local p2    # "newIndex":I
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final onChildSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mediaSourceHolder"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p3, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p4, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 511
    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->updateMediaSourceInternal(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/Timeline;)V

    .line 512
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 437
    :try_start_0
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 438
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$$Lambda$0;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    goto :goto_0

    .line 442
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 443
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 444
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :goto_0
    monitor-exit p0

    return-void

    .line 436
    .end local p1    # "mediaTransferListener":Landroidx/media2/exoplayer/external/upstream/TransferListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 481
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    .line 482
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 483
    .local v0, "holder":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->releasePeriod()V

    .line 484
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 486
    return-void
.end method

.method public final declared-synchronized releaseSourceInternal()V
    .locals 3

    monitor-enter p0

    .line 490
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 491
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 493
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    .line 495
    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    .line 496
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 498
    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 496
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    :cond_0
    nop

    .line 500
    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 501
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeMediaSource(I)V
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 279
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeMediaSource(ILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 299
    add-int/lit8 v0, p1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 298
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "index":I
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeMediaSourceRange(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    monitor-enter p0

    .line 317
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 316
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeMediaSourceRange(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 339
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setShuffleOrder(Landroidx/media2/exoplayer/external/source/ShuffleOrder;)V
    .locals 1
    .param p1, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    monitor-enter p0

    .line 410
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->setPublicShuffleOrder(Landroidx/media2/exoplayer/external/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 409
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "shuffleOrder":Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setShuffleOrder(Landroidx/media2/exoplayer/external/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onCompletionAction"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 423
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->setPublicShuffleOrder(Landroidx/media2/exoplayer/external/source/ShuffleOrder;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 422
    .end local p0    # "this":Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
    .end local p1    # "shuffleOrder":Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "onCompletionAction":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
