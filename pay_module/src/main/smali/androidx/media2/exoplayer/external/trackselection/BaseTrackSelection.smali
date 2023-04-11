.class public abstract Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/TrackSelection;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;
    }
.end annotation


# instance fields
.field private final blacklistUntilTimes:[J

.field private final formats:[Landroidx/media2/exoplayer/external/Format;

.field protected final group:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field private hashCode:I

.field protected final length:I

.field protected final tracks:[I


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 3
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 73
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 74
    array-length v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    .line 76
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget v2, p2, v0

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;-><init>(Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$1;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 82
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    .line 83
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v2

    aput v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    .end local v0    # "i":I
    :cond_2
    new-array v0, v1, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    .line 87
    return-void
.end method


# virtual methods
.method public final blacklist(IJ)Z
    .locals 15
    .param p1, "index"    # I
    .param p2, "blacklistDurationMs"    # J

    .line 162
    move-object v0, p0

    move/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 163
    .local v8, "nowMs":J
    invoke-virtual {p0, v1, v8, v9}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    .line 164
    .local v2, "canBlacklist":Z
    const/4 v3, 0x0

    move v10, v2

    .end local v2    # "canBlacklist":Z
    .local v3, "i":I
    .local v10, "canBlacklist":Z
    :goto_0
    iget v2, v0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-ge v3, v2, :cond_1

    if-nez v10, :cond_1

    .line 165
    if-eq v3, v1, :cond_0

    invoke-virtual {p0, v3, v8, v9}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v10, v4

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v3    # "i":I
    :cond_1
    if-nez v10, :cond_2

    .line 168
    return v4

    .line 170
    :cond_2
    iget-object v12, v0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v13, v12, v1

    const-wide v6, 0x7fffffffffffffffL

    .line 173
    move-wide v2, v8

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroidx/media2/exoplayer/external/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v2

    .line 171
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v12, v1

    .line 174
    return v11
.end method

.method public disable()V
    .locals 0

    .line 97
    return-void
.end method

.method public enable()V
    .locals 0

    .line 92
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 202
    return v0

    .line 204
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;

    .line 208
    .local v2, "other":Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v4, v2, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    .end local v2    # "other":Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
    :cond_3
    :goto_1
    nop

    .line 205
    return v1
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 1
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 157
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFormat(I)Landroidx/media2/exoplayer/external/Format;
    .locals 1
    .param p1, "index"    # I

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 1
    .param p1, "index"    # I

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getSelectedFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .locals 2

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 191
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->hashCode:I

    goto :goto_0

    .line 191
    :cond_0
    nop

    .line 194
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->hashCode:I

    return v0
.end method

.method public final indexOf(I)I
    .locals 2
    .param p1, "indexInTrackGroup"    # I

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 134
    return v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final indexOf(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 124
    return v0

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected final isBlacklisted(IJ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "nowMs"    # J

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final length()I
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    array-length v0, v0

    return v0
.end method

.method public onDiscontinuity()V
    .locals 0

    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$$CC;->onDiscontinuity$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0
    .param p1, "playbackSpeed"    # F

    .line 153
    return-void
.end method

.method public updateSelectedTrack(JJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$$CC;->updateSelectedTrack$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;JJJ)V

    return-void
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$$CC;->updateSelectedTrack$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V

    return-void
.end method
