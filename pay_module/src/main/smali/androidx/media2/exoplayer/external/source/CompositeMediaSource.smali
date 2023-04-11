.class public abstract Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "CompositeMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;,
        Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/media2/exoplayer/external/source/BaseMediaSource;"
    }
.end annotation


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private eventHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 47
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    .line 49
    return-void
.end method


# virtual methods
.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 0
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            ")",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 145
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    return-object p2
.end method

.method protected getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mediaTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 157
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    return-wide p2
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0
    .param p2, "windowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 130
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    return p2
.end method

.method final synthetic lambda$prepareChildSource$0$CompositeMediaSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "source"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p3, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p4, "manifest"    # Ljava/lang/Object;

    .line 103
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    .line 62
    .local v1, "childSource":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 63
    .end local v1    # "childSource":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method protected abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            "Landroidx/media2/exoplayer/external/Timeline;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected final prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 4
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 101
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 102
    new-instance v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$$Lambda$0;

    invoke-direct {v0, p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 104
    .local v0, "sourceListener":Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
    new-instance v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;-><init>(Landroidx/media2/exoplayer/external/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 105
    .local v1, "eventListener":Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    new-instance v3, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-direct {v3, p2, v0, v1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-interface {p2, v2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 107
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    invoke-interface {p2, v0, v2}, Landroidx/media2/exoplayer/external/source/MediaSource;->prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 108
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 1
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 54
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method protected final releaseChildSource(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    .line 117
    .local v0, "removedChild":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->listener:Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/source/MediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    .line 118
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 119
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 69
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    .line 70
    .local v1, "childSource":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->listener:Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/source/MediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    .line 71
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 72
    .end local v1    # "childSource":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 74
    return-void
.end method
