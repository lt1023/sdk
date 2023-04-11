.class final Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;
.super Landroidx/media2/exoplayer/external/source/DefaultMediaSourceEventListener;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final eventListener:Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;

.field private final eventSourceId:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;I)V
    .locals 1
    .param p1, "eventListener"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;
    .param p2, "eventSourceId"    # I

    .line 355
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/DefaultMediaSourceEventListener;-><init>()V

    .line 356
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;->eventListener:Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;

    .line 357
    iput p2, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;->eventSourceId:I

    .line 358
    return-void
.end method


# virtual methods
.method public onLoadError(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 368
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;->eventListener:Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;->eventSourceId:I

    invoke-interface {v0, v1, p5}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    .line 369
    return-void
.end method
