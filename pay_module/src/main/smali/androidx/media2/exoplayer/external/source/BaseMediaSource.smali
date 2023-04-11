.class public abstract Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private looper:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private manifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final sourceInfoListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Landroidx/media2/exoplayer/external/Timeline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 51
    return-void
.end method


# virtual methods
.method public final addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 129
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 130
    return-void
.end method

.method protected final createEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaTimeOffsetMs"    # J

    .line 124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected final createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 4
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method protected final createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 2
    .param p1, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "mediaTimeOffsetMs"    # J

    .line 108
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 109
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/MediaSource$$CC;->getTag$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prepareSource(Landroidx/media2/exoplayer/external/ExoPlayer;ZLandroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/MediaSource$$CC;->prepareSource$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/ExoPlayer;ZLandroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    return-void
.end method

.method public final prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
    .param p2, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 142
    .local v0, "looper":Landroid/os/Looper;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 143
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 145
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 146
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    goto :goto_2

    .line 147
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    if-eqz v1, :cond_3

    .line 148
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->manifest:Ljava/lang/Object;

    invoke-interface {p1, p0, v1, v2}, Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;->onSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    goto :goto_2

    .line 147
    :cond_3
    nop

    .line 150
    :goto_2
    return-void
.end method

.method protected abstract prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .param p1    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 78
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->manifest:Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

    .line 80
    .local v1, "listener":Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
    invoke-interface {v1, p0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;->onSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 81
    .end local v1    # "listener":Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public final releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 157
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 158
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->manifest:Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->releaseSourceInternal()V

    goto :goto_0

    .line 155
    :cond_0
    nop

    .line 161
    :goto_0
    return-void
.end method

.method protected abstract releaseSourceInternal()V
.end method

.method public final removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/BaseMediaSource;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 135
    return-void
.end method
