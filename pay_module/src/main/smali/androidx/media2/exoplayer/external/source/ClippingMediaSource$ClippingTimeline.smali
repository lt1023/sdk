.class final Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;
.super Landroidx/media2/exoplayer/external/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final durationUs:J

.field private final endUs:J

.field private final isDynamic:Z

.field private final startUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;JJ)V
    .locals 18
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "startUs"    # J
    .param p4, "endUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 326
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/ForwardingTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    .line 330
    new-instance v3, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v3}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v3

    .line 331
    .local v3, "window":Landroidx/media2/exoplayer/external/Timeline$Window;
    const-wide/16 v7, 0x0

    move-wide/from16 v9, p2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 332
    .end local p2    # "startUs":J
    .local v9, "startUs":J
    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v13, v1, v11

    if-nez v13, :cond_0

    iget-wide v11, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    goto :goto_0

    :cond_0
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 333
    .local v11, "resolvedEndUs":J
    :goto_0
    iget-wide v13, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v13, v15

    if-eqz v17, :cond_5

    .line 334
    iget-wide v13, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    cmp-long v17, v11, v13

    if-lez v17, :cond_1

    .line 335
    iget-wide v11, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    goto :goto_1

    .line 334
    :cond_1
    nop

    .line 337
    :goto_1
    cmp-long v13, v9, v7

    if-eqz v13, :cond_3

    iget-boolean v7, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->isSeekable:Z

    if-eqz v7, :cond_2

    goto :goto_2

    .line 338
    :cond_2
    new-instance v4, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v4

    .line 337
    :cond_3
    :goto_2
    nop

    .line 340
    cmp-long v7, v9, v11

    if-gtz v7, :cond_4

    goto :goto_3

    .line 341
    :cond_4
    new-instance v4, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v4

    .line 333
    :cond_5
    nop

    .line 344
    :goto_3
    iput-wide v9, v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 345
    iput-wide v11, v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 346
    cmp-long v7, v11, v15

    if-nez v7, :cond_6

    move-wide v7, v15

    goto :goto_4

    :cond_6
    sub-long v7, v11, v9

    :goto_4
    iput-wide v7, v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 347
    iget-boolean v7, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    if-eqz v7, :cond_8

    cmp-long v7, v11, v15

    if-eqz v7, :cond_7

    iget-wide v7, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    cmp-long v13, v7, v15

    if-eqz v13, :cond_8

    iget-wide v7, v3, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    cmp-long v13, v11, v7

    if-nez v13, :cond_8

    :cond_7
    const/4 v4, 0x1

    nop

    :cond_8
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    .line 351
    return-void

    .line 328
    .end local v3    # "window":Landroidx/media2/exoplayer/external/Timeline$Window;
    .end local v9    # "startUs":J
    .end local v11    # "resolvedEndUs":J
    .restart local p2    # "startUs":J
    :cond_9
    move-object/from16 v6, p1

    move-wide/from16 v9, p2

    new-instance v3, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v3
.end method


# virtual methods
.method public getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 12
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 379
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 380
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    .line 382
    .local v0, "positionInClippedWindowUs":J
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    move-wide v8, v4

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v0

    move-wide v8, v2

    .line 383
    .local v8, "periodDurationUs":J
    :goto_0
    iget-object v5, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    move-wide v10, v0

    invoke-virtual/range {v4 .. v11}, Landroidx/media2/exoplayer/external/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v2

    return-object v2
.end method

.method public getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p3, "setTag"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .line 356
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 358
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->positionInFirstPeriodUs:J

    .line 359
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    .line 360
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    iput-boolean v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    .line 361
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 362
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    .line 363
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    goto :goto_0

    .line 364
    :cond_0
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    .line 365
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v4

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    goto :goto_1

    .line 361
    :cond_1
    nop

    .line 367
    :goto_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    .line 368
    .local v0, "startMs":J
    iget-wide v4, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    .line 369
    iget-wide v4, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v4, v0

    iput-wide v4, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->presentationStartTimeMs:J

    goto :goto_2

    .line 368
    :cond_2
    nop

    .line 371
    :goto_2
    iget-wide v4, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->windowStartTimeMs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    .line 372
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->windowStartTimeMs:J

    goto :goto_3

    .line 371
    :cond_3
    nop

    .line 374
    :goto_3
    return-object p2
.end method
