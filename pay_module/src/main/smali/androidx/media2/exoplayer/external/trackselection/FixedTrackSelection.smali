.class public final Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;
.super Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.source "FixedTrackSelection.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final reason:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;I)V
    .locals 2
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "track"    # I

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "track"    # I
    .param p3, "reason"    # I
    .param p4, "data"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 93
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;->reason:I

    .line 94
    iput-object p4, p0, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    .line 95
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 114
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/FixedTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .locals 0
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

    .line 105
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    return-void
.end method
