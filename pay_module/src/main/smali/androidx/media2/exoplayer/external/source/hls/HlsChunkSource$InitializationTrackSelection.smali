.class final Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 1
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I

    .line 541
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    .line 543
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 569
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 579
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .locals 4
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .param p8, "mediaChunkIterators"    # [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 552
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 553
    .local v0, "nowMs":J
    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    return-void

    .line 557
    :cond_0
    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->length:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 558
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 559
    iput v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    .line 560
    return-void

    .line 557
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 564
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    return-void
.end method
