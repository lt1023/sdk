.class public abstract Landroidx/media2/exoplayer/external/source/DefaultMediaSourceEventListener;
.super Ljava/lang/Object;
.source "DefaultMediaSourceEventListener.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 97
    return-void
.end method

.method public onLoadCanceled(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 69
    return-void
.end method

.method public onLoadCompleted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 60
    return-void
.end method

.method public onLoadError(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 80
    return-void
.end method

.method public onLoadStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventInfo"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 51
    return-void
.end method

.method public onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 37
    return-void
.end method

.method public onMediaPeriodReleased(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 42
    return-void
.end method

.method public onReadingStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 85
    return-void
.end method

.method public onUpstreamDiscarded(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 91
    return-void
.end method
