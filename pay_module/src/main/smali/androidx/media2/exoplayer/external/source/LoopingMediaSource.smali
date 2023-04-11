.class public final Landroidx/media2/exoplayer/external/source/LoopingMediaSource;
.super Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.source "LoopingMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;,
        Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private final childSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private final loopCount:I

.field private final mediaPeriodToChildMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/MediaPeriod;",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 1
    .param p1, "childSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 56
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;I)V
    .locals 1
    .param p1, "childSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "loopCount"    # I

    .line 65
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;-><init>()V

    .line 66
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 67
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 68
    iput p2, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->loopCount:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    .line 71
    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 4
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 87
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/MediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "childPeriodUid":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 92
    .local v1, "childMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 94
    invoke-interface {v2, v1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/MediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v2

    .line 95
    .local v2, "mediaPeriod":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v2
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 2
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 121
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    goto :goto_0

    .line 123
    :cond_0
    move-object v0, p2

    .line 121
    :goto_0
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p3, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p4, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    iget v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v1, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;

    invoke-direct {v1, p3, v0}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$LoopingTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;I)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    invoke-direct {v1, p3}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;)V

    :goto_0
    move-object v0, v1

    .line 115
    .local v0, "loopingTimeline":Landroidx/media2/exoplayer/external/Timeline;
    invoke-virtual {p0, v0, p4}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 2
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 83
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/MediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 103
    .local v0, "childMediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_0
    nop

    .line 106
    :goto_0
    return-void
.end method
