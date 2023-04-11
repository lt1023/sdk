.class public final Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;
.super Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.source "RandomTrackSelection.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 2
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 78
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IJ)V
    .locals 1
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "seed"    # J

    .line 89
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILjava/util/Random;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILjava/util/Random;)V
    .locals 1
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "random"    # Ljava/util/Random;

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 100
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 101
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 102
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 135
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 140
    const/4 v0, 0x3

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .locals 6
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

    .line 112
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 113
    .local v0, "nowMs":J
    const/4 v2, 0x0

    .line 114
    .local v2, "nonBlacklistedFormatCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->length:I

    if-ge v3, v4, :cond_1

    .line 115
    invoke-virtual {p0, v3, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    :cond_0
    nop

    .line 114
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 121
    iget v3, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->length:I

    if-eq v2, v3, :cond_5

    .line 123
    const/4 v2, 0x0

    .line 124
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->length:I

    if-ge v3, v4, :cond_4

    .line 125
    invoke-virtual {p0, v3, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "nonBlacklistedFormatCount":I
    .local v5, "nonBlacklistedFormatCount":I
    if-ne v4, v2, :cond_2

    .line 126
    iput v3, p0, Landroidx/media2/exoplayer/external/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 127
    return-void

    .line 125
    :cond_2
    move v2, v5

    nop

    .line 124
    .end local v5    # "nonBlacklistedFormatCount":I
    .restart local v2    # "nonBlacklistedFormatCount":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    goto :goto_3

    .line 121
    .end local v3    # "i":I
    :cond_5
    nop

    .line 131
    :goto_3
    return-void
.end method
