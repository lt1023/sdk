.class final Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final childrenPendingPreparation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

.field private enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

.field public final periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media2/exoplayer/external/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;[Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 2
    .param p1, "compositeSequenceableLoaderFactory"    # Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;
    .param p2, "periods"    # [Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 54
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 57
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 58
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 59
    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 60
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 3
    .param p1, "positionUs"    # J

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 169
    .local v0, "childrenPendingPreparationSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 170
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v2, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->continueLoading(J)Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 174
    .end local v0    # "childrenPendingPreparationSize":I
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 155
    .local v3, "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    invoke-interface {v3, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    .line 154
    .end local v3    # "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 223
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    aget-object v0, v0, v2

    .line 224
    .local v0, "queryPeriod":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 206
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/MediaPeriod$$CC;->getStreamKeys$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 74
    .local v3, "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 73
    .end local v3    # "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "ignored"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 254
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 255
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .locals 0

    .line 37
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 12
    .param p1, "preparedPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 231
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 236
    .local v0, "totalTrackGroupCount":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .end local v0    # "totalTrackGroupCount":I
    .local v4, "totalTrackGroupCount":I
    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, v1, v0

    .line 237
    .local v5, "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v6

    iget v6, v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    add-int/2addr v4, v6

    .line 236
    .end local v5    # "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    new-array v0, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 240
    .local v0, "trackGroupArray":[Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v1, 0x0

    .line 241
    .local v1, "trackGroupIndex":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    .line 242
    .local v6, "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v7

    .line 243
    .local v7, "periodTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    iget v8, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 244
    .local v8, "periodTrackGroupCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v8, :cond_2

    .line 245
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "trackGroupIndex":I
    .local v10, "trackGroupIndex":I
    invoke-virtual {v7, v9}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v11

    aput-object v11, v0, v1

    .line 244
    add-int/lit8 v9, v9, 0x1

    move v1, v10

    goto :goto_2

    .line 241
    .end local v6    # "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .end local v7    # "periodTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .end local v8    # "periodTrackGroupCount":I
    .end local v9    # "j":I
    .end local v10    # "trackGroupIndex":I
    .restart local v1    # "trackGroupIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 248
    :cond_3
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 249
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 250
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .locals 4
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 64
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 67
    .local v3, "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    invoke-interface {v3, p0, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    .line 66
    .end local v3    # "period":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 10

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 187
    .local v2, "positionUs":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_1

    .line 188
    aget-object v4, v4, v0

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Child reported discontinuity."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_1
    nop

    .line 193
    .end local v0    # "i":I
    cmp-long v0, v2, v6

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 195
    .local v6, "enabledPeriod":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_3

    .line 196
    invoke-interface {v6, v2, v3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_2

    goto :goto_2

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected child seekToUs result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_3
    nop

    .line 194
    .end local v6    # "enabledPeriod":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    goto :goto_3

    .line 193
    :cond_5
    nop

    .line 201
    :goto_3
    return-wide v2
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 162
    return-void
.end method

.method public seekToUs(J)J
    .locals 4
    .param p1, "positionUs"    # J

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 213
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 214
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected child seekToUs result."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_1
    nop

    .line 218
    .end local v0    # "i":I
    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .locals 19
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 92
    .local v3, "streamChildIndices":[I
    array-length v4, v1

    new-array v4, v4, [I

    .line 93
    .local v4, "selectionChildIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 94
    aget-object v6, v2, v5

    const/4 v7, -0x1

    if-nez v6, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    .line 95
    :cond_0
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v8, v2, v5

    invoke-virtual {v6, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    aput v6, v3, v5

    .line 96
    aput v7, v4, v5

    .line 97
    aget-object v6, v1, v5

    if-eqz v6, :cond_3

    .line 98
    aget-object v6, v1, v5

    invoke-interface {v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    .line 99
    .local v6, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v10, v9

    if-ge v8, v10, :cond_2

    .line 100
    aget-object v9, v9, v8

    invoke-interface {v9}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v9

    if-eq v9, v7, :cond_1

    .line 101
    aput v8, v4, v5

    .line 102
    goto :goto_3

    .line 99
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 97
    .end local v6    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v8    # "j":I
    :cond_3
    nop

    .line 93
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v5    # "i":I
    :cond_4
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->clear()V

    .line 109
    array-length v5, v1

    new-array v5, v5, [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 110
    .local v5, "newStreams":[Landroidx/media2/exoplayer/external/source/SampleStream;
    array-length v6, v1

    new-array v6, v6, [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 111
    .local v6, "childStreams":[Landroidx/media2/exoplayer/external/source/SampleStream;
    array-length v7, v1

    new-array v14, v7, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 112
    .local v14, "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v7

    .line 113
    .local v15, "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/MediaPeriod;>;"
    const/4 v7, 0x0

    move-wide/from16 v16, p5

    move v12, v7

    .end local p5    # "positionUs":J
    .local v12, "i":I
    .local v16, "positionUs":J
    :goto_4
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    array-length v7, v7

    const/4 v13, 0x0

    if-ge v12, v7, :cond_f

    .line 114
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    array-length v8, v1

    if-ge v7, v8, :cond_7

    .line 115
    aget v8, v3, v7

    const/4 v9, 0x0

    if-ne v8, v12, :cond_5

    aget-object v8, v2, v7

    goto :goto_6

    :cond_5
    move-object v8, v9

    :goto_6
    aput-object v8, v6, v7

    .line 116
    aget v8, v4, v7

    if-ne v8, v12, :cond_6

    aget-object v9, v1, v7

    nop

    :cond_6
    aput-object v9, v14, v7

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 118
    .end local v7    # "j":I
    :cond_7
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    aget-object v7, v7, v12

    move-object v8, v14

    move-object/from16 v9, p2

    move-object v10, v6

    move-object/from16 v11, p4

    move-object/from16 v18, v14

    const/4 v2, 0x0

    move v14, v12

    .end local v12    # "i":I
    .local v14, "i":I
    .local v18, "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    move-wide/from16 v12, v16

    invoke-interface/range {v7 .. v13}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J

    move-result-wide v7

    .line 120
    .local v7, "selectPositionUs":J
    if-nez v14, :cond_8

    .line 121
    move-wide v9, v7

    move-wide/from16 v16, v9

    goto :goto_7

    .line 122
    :cond_8
    cmp-long v9, v7, v16

    if-nez v9, :cond_e

    .line 125
    :goto_7
    const/4 v9, 0x0

    .line 126
    .local v9, "periodEnabled":Z
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    array-length v11, v1

    if-ge v10, v11, :cond_c

    .line 127
    aget v11, v4, v10

    if-ne v11, v14, :cond_a

    .line 129
    aget-object v11, v6, v10

    invoke-static {v11}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 130
    .local v11, "childStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    aget-object v12, v6, v10

    aput-object v12, v5, v10

    .line 131
    const/4 v9, 0x1

    .line 132
    iget-object v12, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v11    # "childStream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :cond_9
    goto :goto_a

    :cond_a
    aget v11, v3, v10

    if-ne v11, v14, :cond_9

    .line 135
    aget-object v11, v6, v10

    if-nez v11, :cond_b

    const/4 v13, 0x1

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    :goto_9
    invoke-static {v13}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 126
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 138
    .end local v10    # "j":I
    :cond_c
    if-eqz v9, :cond_d

    .line 139
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->periods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    aget-object v2, v2, v14

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 138
    :cond_d
    nop

    .line 113
    .end local v7    # "selectPositionUs":J
    .end local v9    # "periodEnabled":Z
    :goto_b
    add-int/lit8 v12, v14, 0x1

    move-object/from16 v14, v18

    move-object/from16 v2, p3

    goto/16 :goto_4

    .line 123
    .restart local v7    # "selectPositionUs":J
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v9, "Children enabled at different positions."

    invoke-direct {v2, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v7    # "selectPositionUs":J
    .end local v18    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v12    # "i":I
    .local v14, "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :cond_f
    move-object/from16 v18, v14

    const/4 v2, 0x0

    move v14, v12

    .line 143
    .end local v12    # "i":I
    .end local v14    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v18    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    array-length v7, v5

    move-object/from16 v2, p3

    const/4 v8, 0x0

    invoke-static {v5, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iput-object v7, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 146
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 148
    invoke-interface {v7, v8}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    move-result-object v7

    iput-object v7, v0, Landroidx/media2/exoplayer/external/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 149
    return-wide v16
.end method
