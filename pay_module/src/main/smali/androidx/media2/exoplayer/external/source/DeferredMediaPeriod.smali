.class public final Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
.super Ljava/lang/Object;
.source "DeferredMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field private listener:Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private preparePositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p3, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p4, "preparePositionUs"    # J

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 77
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 78
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 79
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    .line 80
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    .line 81
    return-void
.end method

.method private getPreparePositionWithOverride(J)J
    .locals 5
    .param p1, "preparePositionUs"    # J

    .line 233
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 234
    goto :goto_0

    .line 235
    :cond_0
    move-wide v0, p1

    .line 233
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->continueLoading(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 4
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 117
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    .line 118
    .local v0, "preparePositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 119
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v2, p0, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    goto :goto_0

    .line 119
    :cond_0
    nop

    .line 122
    :goto_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    .line 183
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 192
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .locals 2

    .line 96
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

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

    .line 162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;

    if-eqz v1, :cond_2

    .line 153
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_1

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    .line 155
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;->onPrepareError(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    goto :goto_1

    .line 153
    :cond_1
    nop

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_2
    throw v0
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "source"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 222
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 223
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .locals 0

    .line 40
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 229
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 230
    return-void
.end method

.method public overridePreparePositionUs(J)V
    .locals 0
    .param p1, "preparePositionUs"    # J

    .line 106
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    .line 107
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .locals 3
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .param p2, "preparePositionUs"    # J

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 136
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 137
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 139
    :goto_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 213
    return-void
.end method

.method public releasePeriod()V
    .locals 2

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    goto :goto_0

    .line 128
    :cond_0
    nop

    .line 131
    :goto_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 2
    .param p1, "positionUs"    # J

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .locals 12
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 172
    move-object v0, p0

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    cmp-long v5, p5, v1

    if-nez v5, :cond_0

    .line 173
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    .line 174
    .end local p5    # "positionUs":J
    .local v1, "positionUs":J
    iput-wide v3, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    goto :goto_0

    .line 172
    .end local v1    # "positionUs":J
    .restart local p5    # "positionUs":J
    :cond_0
    nop

    .line 176
    move-wide/from16 v1, p5

    .end local p5    # "positionUs":J
    .restart local v1    # "positionUs":J
    :goto_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 177
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-wide v10, v1

    invoke-interface/range {v5 .. v11}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J

    move-result-wide v3

    .line 176
    return-wide v3
.end method

.method public setPrepareErrorListener(Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;

    .line 91
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;

    .line 92
    return-void
.end method
