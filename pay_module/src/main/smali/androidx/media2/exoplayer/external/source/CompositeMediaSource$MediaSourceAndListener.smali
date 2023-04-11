.class final Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final eventListener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

.field public final listener:Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

.field public final mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V
    .locals 0
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
    .param p3, "eventListener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 171
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->listener:Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

    .line 172
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    .line 173
    return-void
.end method
