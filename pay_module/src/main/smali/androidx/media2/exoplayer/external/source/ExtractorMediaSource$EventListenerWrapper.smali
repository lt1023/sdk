.class final Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListenerWrapper;
.super Landroidx/media2/exoplayer/external/source/DefaultMediaSourceEventListener;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final eventListener:Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;)V
    .locals 1
    .param p1, "eventListener"    # Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;

    .line 385
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/DefaultMediaSourceEventListener;-><init>()V

    .line 386
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;

    .line 387
    return-void
.end method


# virtual methods
.method public onLoadError(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 397
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;

    invoke-interface {v0, p5}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$EventListener;->onLoadError(Ljava/io/IOException;)V

    .line 398
    return-void
.end method
