.class public final Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

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
        Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field endUs:J

.field public final mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

.field private pendingInitialDiscontinuityPositionUs:J

.field private sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

.field startUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaPeriod;ZJJ)V
    .locals 2
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .param p2, "enableInitialDiscontinuity"    # Z
    .param p3, "startUs"    # J
    .param p5, "endUs"    # J

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 72
    if-eqz p2, :cond_0

    move-wide v0, p3

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 73
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    .line 74
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    .line 75
    return-void
.end method

.method private clipSeekParameters(JLandroidx/media2/exoplayer/external/SeekParameters;)Landroidx/media2/exoplayer/external/SeekParameters;
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 237
    iget-wide v0, p3, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, p1, v2

    .line 238
    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 240
    .local v0, "toleranceBeforeUs":J
    iget-wide v2, p3, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    .line 244
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    :goto_0
    move-wide v6, v4

    .line 241
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 245
    .local v2, "toleranceAfterUs":J
    iget-wide v4, p3, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    iget-wide v4, p3, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 247
    return-object p3

    .line 245
    :cond_1
    nop

    .line 249
    new-instance v4, Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    return-object v4
.end method

.method private static shouldKeepInitialDiscontinuity(J[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)Z
    .locals 6
    .param p0, "startUs"    # J
    .param p2, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 264
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_3

    .line 265
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 266
    .local v3, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-eqz v3, :cond_1

    .line 267
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectedFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 268
    .local v4, "selectedFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v5, v4, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_0
    goto :goto_1

    .line 266
    .end local v4    # "selectedFormat":Landroidx/media2/exoplayer/external/Format;
    :cond_1
    nop

    .line 265
    .end local v3    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 264
    :cond_3
    nop

    .line 274
    :goto_2
    return v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    .line 145
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 197
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 199
    return-wide v0

    .line 201
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->clipSeekParameters(JLandroidx/media2/exoplayer/external/SeekParameters;)Landroidx/media2/exoplayer/external/SeekParameters;

    move-result-object v0

    .line 202
    .local v0, "clippedSeekParameters":Landroidx/media2/exoplayer/external/SeekParameters;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v1, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .line 172
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    .line 173
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    return-wide v0

    .line 173
    :cond_1
    :goto_0
    nop

    .line 175
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 7

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    .line 208
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    return-wide v0

    .line 208
    :cond_1
    :goto_0
    nop

    .line 210
    return-wide v2
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/MediaPeriod$$CC;->getStreamKeys$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method isPendingInitialDiscontinuity()Z
    .locals 5

    .line 233
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 98
    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "source"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 229
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 230
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .locals 0

    .line 40
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 224
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 225
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 91
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p0, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    .line 93
    return-void
.end method

.method public readDiscontinuity()J
    .locals 9

    .line 154
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 155
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 156
    .local v3, "initialDiscontinuityUs":J
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 158
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    .line 159
    .local v5, "childDiscontinuityUs":J
    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    move-wide v0, v5

    goto :goto_0

    :cond_0
    move-wide v0, v3

    :goto_0
    return-wide v0

    .line 161
    .end local v3    # "initialDiscontinuityUs":J
    .end local v5    # "childDiscontinuityUs":J
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    .line 162
    .local v3, "discontinuityUs":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 163
    return-wide v1

    .line 165
    :cond_2
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 166
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v6, v3, v0

    if-gtz v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    nop

    :cond_5
    :goto_2
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 167
    return-wide v3
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 150
    return-void
.end method

.method public seekToUs(J)J
    .locals 8
    .param p1, "positionUs"    # J

    .line 182
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 184
    .local v4, "sampleStream":Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;
    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    goto :goto_1

    .line 184
    :cond_0
    nop

    .line 183
    .end local v4    # "sampleStream":Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    .line 189
    .local v0, "seekUs":J
    cmp-long v3, v0, p1

    if-eqz v3, :cond_3

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 192
    return-wide v0
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .locals 9
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 112
    array-length v0, p3

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 113
    array-length v0, p3

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 114
    .local v0, "childStreams":[Landroidx/media2/exoplayer/external/source/SampleStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1

    .line 115
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, p3, v1

    check-cast v3, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v3, v2, v1

    .line 116
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    iget-object v8, v2, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    nop

    :cond_0
    aput-object v8, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 119
    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J

    move-result-wide v1

    .line 121
    .local v1, "enablePositionUs":J
    nop

    .line 124
    nop

    .line 122
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    cmp-long v5, p5, v3

    if-nez v5, :cond_3

    .line 124
    invoke-static {v3, v4, p1}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->shouldKeepInitialDiscontinuity(J[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    move-wide v3, v1

    goto :goto_2

    .line 124
    :cond_2
    goto :goto_1

    .line 122
    :cond_3
    nop

    .line 126
    :goto_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 127
    cmp-long v3, v1, p5

    if-eqz v3, :cond_5

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 131
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v4, p3

    if-ge v3, v4, :cond_9

    .line 132
    aget-object v4, v0, v3

    if-nez v4, :cond_6

    .line 133
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v8, v4, v3

    goto :goto_7

    .line 134
    :cond_6
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v5, v4, v3

    if-eqz v5, :cond_8

    aget-object v4, v4, v3

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v5, v0, v3

    if-eq v4, v5, :cond_7

    goto :goto_6

    :cond_7
    goto :goto_7

    .line 135
    :cond_8
    :goto_6
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    new-instance v5, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v6, v0, v3

    invoke-direct {v5, p0, v6}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;Landroidx/media2/exoplayer/external/source/SampleStream;)V

    aput-object v5, v4, v3

    .line 137
    :goto_7
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v3

    aput-object v4, p3, v3

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 139
    .end local v3    # "i":I
    :cond_9
    return-wide v1
.end method

.method public updateClipping(JJ)V
    .locals 0
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .line 85
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->startUs:J

    .line 86
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->endUs:J

    .line 87
    return-void
.end method
