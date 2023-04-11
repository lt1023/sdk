.class public final Landroidx/media2/exoplayer/external/source/ClippingMediaSource;
.super Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.source "ClippingMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;,
        Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final allowDynamicClippingUpdates:Z

.field private clippingError:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private clippingTimeline:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final enableInitialDiscontinuity:Z

.field private final endUs:J

.field private manifest:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private periodEndUs:J

.field private periodStartUs:J

.field private final relativeToDefaultPosition:Z

.field private final startUs:J

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;J)V
    .locals 9
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "durationUs"    # J

    .line 135
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;JJZZZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;JJ)V
    .locals 9
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "startPositionUs"    # J
    .param p4, "endPositionUs"    # J

    .line 116
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;JJZZZ)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;JJZZZ)V
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "startPositionUs"    # J
    .param p4, "endPositionUs"    # J
    .param p6, "enableInitialDiscontinuity"    # Z
    .param p7, "allowDynamicClippingUpdates"    # Z
    .param p8, "relativeToDefaultPosition"    # Z

    .line 183
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;-><init>()V

    .line 184
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 185
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaSource;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 186
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->startUs:J

    .line 187
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->endUs:J

    .line 188
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    .line 189
    iput-boolean p7, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    .line 190
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 193
    return-void
.end method

.method private refreshClippedTimeline(Landroidx/media2/exoplayer/external/Timeline;)V
    .locals 16
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 256
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    const/4 v2, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 257
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v10

    .line 258
    .local v10, "windowPositionInPeriodUs":J
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingTimeline:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v4, v10

    .line 279
    .local v4, "windowStartUs":J
    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    .line 280
    goto :goto_0

    .line 281
    :cond_1
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v2, v10

    :goto_0
    move-wide v14, v2

    move-wide v12, v4

    goto :goto_5

    .line 258
    .end local v4    # "windowStartUs":J
    :cond_2
    :goto_1
    nop

    .line 259
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->startUs:J

    .line 260
    .restart local v4    # "windowStartUs":J
    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->endUs:J

    .line 261
    .local v6, "windowEndUs":J
    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v12

    .line 263
    .local v12, "windowDefaultPositionUs":J
    add-long/2addr v4, v12

    .line 264
    add-long/2addr v6, v12

    goto :goto_2

    .line 261
    .end local v12    # "windowDefaultPositionUs":J
    :cond_3
    nop

    .line 266
    :goto_2
    add-long v12, v10, v4

    iput-wide v12, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodStartUs:J

    .line 267
    nop

    .line 268
    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v12, v2

    if-nez v0, :cond_4

    .line 269
    goto :goto_3

    .line 270
    :cond_4
    add-long v2, v10, v6

    :goto_3
    iput-wide v2, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodEndUs:J

    .line 271
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 272
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_5

    .line 273
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v3, v12, v13, v14, v15}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 275
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_5
    move-wide v12, v4

    move-wide v14, v6

    .line 284
    .end local v4    # "windowStartUs":J
    .end local v6    # "windowEndUs":J
    .local v12, "windowStartUs":J
    .local v14, "windowEndUs":J
    :goto_5
    :try_start_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    move-wide v5, v12

    move-wide v7, v14

    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;JJ)V

    iput-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingTimeline:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    nop

    .line 289
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingTimeline:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;

    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->manifest:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 290
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
    iput-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingError:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    .line 287
    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 8
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 217
    new-instance v7, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 219
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/MediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->periodEndUs:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/source/MediaPeriod;ZJJ)V

    .line 223
    .local v0, "mediaPeriod":Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v0
.end method

.method protected bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J
    .locals 9
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "mediaTimeMs"    # J

    .line 294
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 295
    return-wide v0

    .line 297
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->startUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    .line 298
    .local v0, "startMs":J
    const-wide/16 v2, 0x0

    sub-long v4, p2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 299
    .local v2, "clippedTimeMs":J
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 300
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 299
    :cond_1
    nop

    .line 302
    :goto_0
    return-wide v2
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingError:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 212
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 213
    return-void

    .line 210
    :cond_0
    throw v0
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Void;
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p3, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p4, "manifest"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 246
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingError:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->manifest:Ljava/lang/Object;

    .line 250
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 251
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 2
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 205
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 229
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 231
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingTimeline:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media2/exoplayer/external/Timeline;)V

    goto :goto_0

    .line 231
    :cond_0
    nop

    .line 234
    :goto_0
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 1

    .line 238
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingError:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    .line 240
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->clippingTimeline:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;

    .line 241
    return-void
.end method
