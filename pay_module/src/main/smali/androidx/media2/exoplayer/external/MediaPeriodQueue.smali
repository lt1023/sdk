.class final Landroidx/media2/exoplayer/external/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64


# instance fields
.field private length:I

.field private loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private timeline:Landroidx/media2/exoplayer/external/Timeline;

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 65
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 66
    sget-object v0, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 67
    return-void
.end method

.method private areDurationsCompatible(JJ)Z
    .locals 3
    .param p1, "previousDurationUs"    # J
    .param p3, "newDurationUs"    # J

    .line 484
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canKeepMediaPeriodHolder(Landroidx/media2/exoplayer/external/MediaPeriodInfo;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Z
    .locals 5
    .param p1, "oldInfo"    # Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .param p2, "newInfo"    # Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 477
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getFirstMediaPeriodInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 6
    .param p1, "playbackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 533
    iget-object v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getFollowingMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodHolder;J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 29
    .param p1, "mediaPeriodHolder"    # Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .param p2, "rendererPositionUs"    # J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 552
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 556
    .local v10, "mediaPeriodInfo":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    nop

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-wide v2, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    sub-long v11, v0, p2

    .line 558
    .local v11, "bufferedDurationUs":J
    iget-boolean v0, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 559
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v6, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    .line 560
    .local v6, "currentPeriodIndex":I
    iget-object v13, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v15, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v7, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    iget-boolean v14, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 561
    move/from16 v18, v14

    move v14, v6

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Landroidx/media2/exoplayer/external/Timeline;->getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I

    move-result v7

    .line 563
    .local v7, "nextPeriodIndex":I
    if-ne v7, v4, :cond_0

    .line 565
    return-object v5

    .line 569
    :cond_0
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 570
    invoke-virtual {v0, v7, v4, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v4, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 571
    .local v4, "nextWindowIndex":I
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    .line 572
    .local v0, "nextPeriodUid":Ljava/lang/Object;
    iget-object v1, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 573
    .local v14, "windowSequenceNumber":J
    iget-object v1, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v13, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v1, v4, v13}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    if-ne v1, v7, :cond_3

    .line 577
    iget-object v13, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v5, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 583
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    .line 578
    move-wide v2, v14

    .end local v14    # "windowSequenceNumber":J
    .local v2, "windowSequenceNumber":J
    move-object v14, v1

    move-object v15, v5

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v20}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    .line 584
    .local v1, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 585
    const/4 v5, 0x0

    return-object v5

    .line 587
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 588
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 589
    .local v13, "startPositionUs":J
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v5

    .line 590
    .local v5, "nextMediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    if-eqz v5, :cond_2

    iget-object v15, v5, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 591
    iget-object v15, v5, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v15, v15, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, v15, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v16, v0

    goto :goto_0

    .line 590
    :cond_2
    nop

    .line 593
    move-object/from16 v16, v0

    move-object v15, v1

    .end local v0    # "nextPeriodUid":Ljava/lang/Object;
    .end local v1    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .local v15, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .local v16, "nextPeriodUid":Ljava/lang/Object;
    iget-wide v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v17, 0x1

    move-wide/from16 v19, v2

    .end local v2    # "windowSequenceNumber":J
    .local v19, "windowSequenceNumber":J
    add-long v2, v0, v17

    iput-wide v2, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    move-wide v2, v0

    .line 595
    .end local v5    # "nextMediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v15    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    .end local v19    # "windowSequenceNumber":J
    .restart local v2    # "windowSequenceNumber":J
    :goto_0
    move-wide/from16 v19, v2

    goto :goto_1

    .line 596
    .end local v2    # "windowSequenceNumber":J
    .end local v13    # "startPositionUs":J
    .end local v16    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v0    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v14    # "windowSequenceNumber":J
    :cond_3
    move-wide/from16 v19, v14

    .end local v14    # "windowSequenceNumber":J
    .restart local v19    # "windowSequenceNumber":J
    const-wide/16 v1, 0x0

    move-object/from16 v16, v0

    move-wide v13, v1

    .line 598
    .end local v0    # "nextPeriodUid":Ljava/lang/Object;
    .restart local v13    # "startPositionUs":J
    .restart local v16    # "nextPeriodUid":Ljava/lang/Object;
    :goto_1
    nop

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v13

    move v15, v4

    .end local v4    # "nextWindowIndex":I
    .local v15, "nextWindowIndex":I
    move-wide/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v17

    .line 600
    .local v17, "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    move-object/from16 v1, v17

    move-wide v4, v13

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 604
    .end local v6    # "currentPeriodIndex":I
    .end local v7    # "nextPeriodIndex":I
    .end local v13    # "startPositionUs":J
    .end local v15    # "nextWindowIndex":I
    .end local v16    # "nextPeriodUid":Ljava/lang/Object;
    .end local v17    # "periodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .end local v19    # "windowSequenceNumber":J
    :cond_4
    iget-object v13, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 605
    .local v13, "currentPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v5, v6}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 606
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 607
    iget v14, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 608
    .local v14, "adGroupIndex":I
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v14}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v15

    .line 609
    .local v15, "adCountInCurrentAdGroup":I
    if-ne v15, v4, :cond_5

    .line 610
    const/4 v0, 0x0

    return-object v0

    .line 612
    :cond_5
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v4, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 613
    invoke-virtual {v0, v14, v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v6

    .line 614
    .local v6, "nextAdIndexInAdGroup":I
    if-ge v6, v15, :cond_7

    .line 616
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v14, v6}, Landroidx/media2/exoplayer/external/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 617
    move/from16 v18, v6

    const/4 v5, 0x0

    goto :goto_2

    .line 618
    :cond_6
    iget-object v1, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v2, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move v2, v14

    move v3, v6

    move/from16 v18, v6

    .end local v6    # "nextAdIndexInAdGroup":I
    .local v18, "nextAdIndexInAdGroup":I
    move-wide/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v5

    .line 616
    :goto_2
    return-object v5

    .line 630
    .end local v18    # "nextAdIndexInAdGroup":I
    .restart local v6    # "nextAdIndexInAdGroup":I
    :cond_7
    move/from16 v18, v6

    .end local v6    # "nextAdIndexInAdGroup":I
    .restart local v18    # "nextAdIndexInAdGroup":I
    iget-wide v4, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    .line 631
    .local v4, "startPositionUs":J
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupCount()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_9

    .line 632
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v7, v6, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 638
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v27

    .line 633
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v23, v6

    move/from16 v24, v7

    invoke-virtual/range {v21 .. v28}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 639
    .local v0, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    if-nez v0, :cond_8

    .line 640
    const/4 v1, 0x0

    return-object v1

    .line 642
    :cond_8
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v6, v1

    goto :goto_3

    .line 631
    .end local v0    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Long;>;"
    :cond_9
    nop

    .line 644
    move-wide v6, v4

    .end local v4    # "startPositionUs":J
    .local v6, "startPositionUs":J
    :goto_3
    iget-object v1, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 649
    .end local v6    # "startPositionUs":J
    .end local v14    # "adGroupIndex":I
    .end local v15    # "adCountInCurrentAdGroup":I
    .end local v18    # "nextAdIndexInAdGroup":I
    :cond_a
    const/4 v1, 0x0

    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-wide v2, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v14

    .line 650
    .local v14, "nextAdGroupIndex":I
    if-ne v14, v4, :cond_b

    .line 652
    iget-object v1, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v2, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v4, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 657
    :cond_b
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v14}, Landroidx/media2/exoplayer/external/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v15

    .line 658
    .local v15, "adIndexInAdGroup":I
    iget-object v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v14, v15}, Landroidx/media2/exoplayer/external/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 659
    goto :goto_4

    .line 660
    :cond_c
    iget-object v1, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v10, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v6, v13, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move v2, v14

    move v3, v15

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v5

    move-object v1, v5

    .line 658
    :goto_4
    return-object v1
.end method

.method private getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 9
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "contentPositionUs"    # J
    .param p4, "startPositionUs"    # J

    .line 671
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 672
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v2, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline$Period;->isAdAvailable(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    return-object v0

    .line 676
    :cond_0
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v7, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v8}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 683
    :cond_1
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v1, p0

    move-wide v3, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 20
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "contentPositionUs"    # J
    .param p6, "windowSequenceNumber"    # J

    .line 693
    move-object/from16 v0, p0

    new-instance v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 695
    .local v1, "id":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 697
    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v2

    iget v3, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 698
    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    .line 700
    .local v2, "durationUs":J
    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    move/from16 v6, p3

    if-ne v6, v4, :cond_0

    .line 701
    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v7

    move-wide v10, v7

    goto :goto_0

    .line 702
    :cond_0
    const-wide/16 v7, 0x0

    move-wide v10, v7

    :goto_0
    nop

    .line 703
    .local v10, "startPositionUs":J
    new-instance v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v4

    move-object v9, v1

    move-wide/from16 v12, p4

    move-wide/from16 v16, v2

    invoke-direct/range {v8 .. v19}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v4
.end method

.method private getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 23
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "startPositionUs"    # J
    .param p4, "windowSequenceNumber"    # J

    .line 715
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    move-wide/from16 v14, p2

    invoke-virtual {v1, v14, v15}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v1

    .line 716
    .local v1, "nextAdGroupIndex":I
    new-instance v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object/from16 v13, p1

    move-wide/from16 v8, p4

    invoke-direct {v2, v13, v8, v9, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    move-object v12, v2

    .line 717
    .local v12, "id":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    invoke-direct {v0, v12}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v6

    .line 718
    .local v6, "isLastInPeriod":Z
    invoke-direct {v0, v12, v6}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInTimeline(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Z)Z

    move-result v16

    .line 720
    .local v16, "isLastInTimeline":Z
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 721
    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v4

    goto :goto_0

    .line 722
    :cond_0
    move-wide v4, v2

    :goto_0
    move-wide/from16 v17, v4

    .line 724
    .local v17, "endPositionUs":J
    cmp-long v4, v17, v2

    if-eqz v4, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v17, v2

    if-nez v4, :cond_1

    goto :goto_1

    .line 726
    :cond_1
    move-wide/from16 v10, v17

    goto :goto_2

    .line 724
    :cond_2
    :goto_1
    nop

    .line 725
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/Timeline$Period;->durationUs:J

    move-wide v10, v2

    .line 726
    :goto_2
    nop

    .line 727
    .local v10, "durationUs":J
    new-instance v19, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v2, v19

    move-object v3, v12

    move-wide/from16 v4, p2

    move/from16 v22, v6

    .end local v6    # "isLastInPeriod":Z
    .local v22, "isLastInPeriod":Z
    move-wide/from16 v6, v20

    move-wide/from16 v8, v17

    move-object/from16 v20, v12

    .end local v12    # "id":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .local v20, "id":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    move/from16 v12, v22

    move/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v19
.end method

.method private isLastInPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z
    .locals 2
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 738
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLastInTimeline(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Z)Z
    .locals 8
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "isLastMediaPeriodInPeriod"    # Z

    .line 742
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 743
    .local v0, "periodIndex":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 744
    .local v1, "windowIndex":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v2, v1, v3}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v6, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 745
    move v3, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/media2/exoplayer/external/Timeline;->isLastPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 744
    :cond_1
    nop

    .line 745
    :goto_0
    const/4 v2, 0x0

    .line 744
    :goto_1
    return v2
.end method

.method private resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 9
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "positionUs"    # J
    .param p4, "windowSequenceNumber"    # J

    .line 417
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 418
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v0

    .line 419
    .local v0, "adGroupIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 420
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v1, p2, p3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v1

    .line 421
    .local v1, "nextAdGroupIndex":I
    new-instance v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-direct {v2, p1, p4, p5, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object v2

    .line 423
    .end local v1    # "nextAdGroupIndex":I
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v7

    .line 424
    .local v7, "adIndexInAdGroup":I
    new-instance v8, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v1, v8

    move-object v2, p1

    move v3, v0

    move v4, v7

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object v8
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J
    .locals 7
    .param p1, "periodUid"    # Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 438
    .local v0, "windowIndex":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 439
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 440
    .local v1, "oldFrontPeriodIndex":I
    if-eq v1, v2, :cond_1

    .line 441
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v3, v1, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 442
    .local v3, "oldFrontWindowIndex":I
    if-ne v3, v0, :cond_0

    .line 444
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide v4

    .line 442
    :cond_0
    goto :goto_0

    .line 440
    .end local v3    # "oldFrontWindowIndex":I
    :cond_1
    goto :goto_0

    .line 438
    .end local v1    # "oldFrontPeriodIndex":I
    :cond_2
    nop

    .line 448
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 449
    .local v1, "mediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_1
    if-eqz v1, :cond_4

    .line 450
    iget-object v3, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    iget-object v2, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v2

    .line 454
    :cond_3
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    goto :goto_1

    .line 456
    :cond_4
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 457
    :goto_2
    if-eqz v1, :cond_7

    .line 458
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 459
    .local v3, "indexOfHolderInTimeline":I
    if-eq v3, v2, :cond_6

    .line 460
    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v4, v3, v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 461
    .local v4, "holderWindowIndex":I
    if-ne v4, v0, :cond_5

    .line 463
    iget-object v2, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v5

    .line 461
    :cond_5
    goto :goto_3

    .line 459
    .end local v4    # "holderWindowIndex":I
    :cond_6
    nop

    .line 466
    :goto_3
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 467
    .end local v3    # "indexOfHolderInTimeline":I
    goto :goto_2

    .line 469
    :cond_7
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    return-wide v2
.end method

.method private updateForPlaybackModeChange()Z
    .locals 9

    .line 493
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 494
    .local v0, "lastValidPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 495
    return v1

    .line 497
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 499
    .local v2, "currentPeriodIndex":I
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v7, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 500
    move v4, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/Timeline;->getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I

    move-result v3

    .line 502
    .local v3, "nextPeriodIndex":I
    :goto_1
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v4, :cond_1

    .line 504
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1

    .line 502
    :cond_1
    nop

    .line 507
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v4

    .line 508
    .local v4, "nextMediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    if-nez v4, :cond_2

    .line 509
    goto :goto_2

    .line 511
    :cond_2
    iget-object v5, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v6, v4, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    .line 512
    .local v5, "nextPeriodHolderPeriodIndex":I
    if-eq v5, v3, :cond_3

    .line 513
    goto :goto_2

    .line 515
    :cond_3
    move-object v0, v4

    .line 516
    move v2, v3

    .line 517
    .end local v3    # "nextPeriodIndex":I
    .end local v4    # "nextMediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .end local v5    # "nextPeriodHolderPeriodIndex":I
    goto :goto_0

    .line 508
    .restart local v3    # "nextPeriodIndex":I
    .restart local v4    # "nextMediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :cond_4
    nop

    .line 520
    .end local v3    # "nextPeriodIndex":I
    .end local v4    # "nextMediaPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result v3

    .line 523
    .local v3, "readingPeriodRemoved":Z
    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 526
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    nop

    :cond_6
    :goto_3
    return v1
.end method


# virtual methods
.method public advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .locals 2

    .line 229
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_2

    .line 230
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-ne v0, v1, :cond_0

    .line 231
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    goto :goto_0

    .line 230
    :cond_0
    nop

    .line 233
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->release()V

    .line 234
    iget v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    .line 235
    iget v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    if-nez v0, :cond_1

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 237
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    goto :goto_1

    .line 235
    :cond_1
    nop

    .line 240
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    goto :goto_2

    .line 242
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 243
    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 245
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 218
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public clear(Z)V
    .locals 4
    .param p1, "keepFrontPeriodUid"    # Z

    .line 280
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 281
    .local v0, "front":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 282
    if-eqz p1, :cond_0

    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 283
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 284
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->release()V

    .line 285
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    goto :goto_1

    .line 286
    :cond_1
    if-nez p1, :cond_2

    .line 287
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    goto :goto_1

    .line 286
    :cond_2
    nop

    .line 289
    :goto_1
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 290
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 291
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 292
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    .line 293
    return-void
.end method

.method public enqueueNextMediaPeriod([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 10
    .param p1, "rendererCapabilities"    # [Landroidx/media2/exoplayer/external/RendererCapabilities;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p4, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p5, "info"    # Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 152
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 153
    iget-wide v0, p5, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    move-wide v4, v0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    move-wide v4, v0

    :goto_0
    nop

    .line 155
    .local v4, "rendererPositionOffsetUs":J
    new-instance v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;-><init>([Landroidx/media2/exoplayer/external/RendererCapabilities;JLandroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)V

    .line 163
    .local v0, "newPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 165
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->setNext(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    goto :goto_1

    .line 163
    :cond_1
    nop

    .line 167
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 168
    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 169
    iget v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    .line 170
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    return-object v1
.end method

.method public getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    :goto_0
    return-object v0
.end method

.method public getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextMediaPeriodInfo(JLandroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 1
    .param p1, "rendererPositionUs"    # J
    .param p3, "playbackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 130
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFirstMediaPeriodInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodHolder;J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0
.end method

.method public getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .locals 18
    .param p1, "info"    # Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v14, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 369
    .local v14, "id":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    invoke-direct {v0, v14}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v15

    .line 370
    .local v15, "isLastInPeriod":Z
    invoke-direct {v0, v14, v15}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInTimeline(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Z)Z

    move-result v16

    .line 371
    .local v16, "isLastInTimeline":Z
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 373
    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v3, v14, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v14, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    move-wide v10, v2

    goto :goto_1

    .line 375
    :cond_0
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-wide v2, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    move-wide v10, v2

    goto :goto_1

    .line 375
    :cond_2
    :goto_0
    nop

    .line 376
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    move-wide v10, v2

    .line 377
    :goto_1
    nop

    .line 378
    .local v10, "durationUs":J
    new-instance v17, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v8, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    move-object/from16 v2, v17

    move-object v3, v14

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v17
.end method

.method public hasPlayingPeriod()Z
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading(Landroidx/media2/exoplayer/external/source/MediaPeriod;)Z
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "rendererPositionUs"    # J

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->reevaluateBuffer(J)V

    goto :goto_0

    .line 106
    :cond_0
    nop

    .line 109
    :goto_0
    return-void
.end method

.method public removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z
    .locals 3
    .param p1, "mediaPeriodHolder"    # Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 257
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "removedReading":Z
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 260
    :goto_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 261
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    .line 262
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-ne p1, v2, :cond_1

    .line 263
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 264
    const/4 v1, 0x1

    goto :goto_2

    .line 262
    :cond_1
    nop

    .line 266
    :goto_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->release()V

    .line 267
    iget v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    goto :goto_1

    .line 269
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->setNext(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    .line 270
    return v1
.end method

.method public resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .locals 8
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "positionUs"    # J

    .line 398
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J

    move-result-wide v6

    .line 399
    .local v6, "windowSequenceNumber":J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v0

    return-object v0
.end method

.method public setTimeline(Landroidx/media2/exoplayer/external/Timeline;)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 75
    return-void
.end method

.method public shouldLoadNextMediaPeriod()Z
    .locals 5

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 115
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 113
    :cond_1
    nop

    .line 115
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 113
    :cond_2
    nop

    .line 115
    :goto_1
    const/4 v0, 0x1

    .line 113
    :goto_2
    return v0
.end method

.method public updateQueuedPeriods(JJ)Z
    .locals 11
    .param p1, "rendererPositionUs"    # J
    .param p3, "maxRendererReadPositionUs"    # J

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "previousPeriodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 313
    .local v1, "periodHolder":Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 314
    iget-object v3, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 318
    .local v3, "oldPeriodInfo":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v4

    goto :goto_1

    .line 324
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodHolder;J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v4

    .line 325
    .local v4, "newPeriodInfo":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    if-nez v4, :cond_1

    .line 327
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    .line 329
    :cond_1
    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->canKeepMediaPeriodHolder(Landroidx/media2/exoplayer/external/MediaPeriodInfo;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 331
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    .line 329
    :cond_2
    nop

    .line 336
    :goto_1
    iget-wide v5, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    invoke-virtual {v4, v5, v6}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->copyWithContentPositionUs(J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v5

    iput-object v5, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 338
    iget-wide v5, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    invoke-direct {p0, v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v5

    if-nez v5, :cond_7

    .line 342
    iget-wide v5, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 343
    const-wide v5, 0x7fffffffffffffffL

    goto :goto_2

    .line 344
    :cond_3
    iget-wide v5, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    invoke-virtual {v1, v5, v6}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v5

    :goto_2
    nop

    .line 345
    .local v5, "newDurationInRendererTime":J
    iget-object v7, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    const/4 v8, 0x0

    if-ne v1, v7, :cond_5

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v7, p3, v9

    if-eqz v7, :cond_4

    cmp-long v7, p3, v5

    if-ltz v7, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 349
    .local v7, "isReadingAndReadBeyondNewDuration":Z
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result v9

    .line 350
    .local v9, "readingPeriodRemoved":Z
    if-nez v9, :cond_6

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 353
    .end local v5    # "newDurationInRendererTime":J
    .end local v7    # "isReadingAndReadBeyondNewDuration":Z
    .end local v9    # "readingPeriodRemoved":Z
    :cond_7
    move-object v0, v1

    .line 354
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 355
    .end local v3    # "oldPeriodInfo":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .end local v4    # "newPeriodInfo":Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    goto :goto_0

    .line 356
    :cond_8
    return v2
.end method

.method public updateRepeatMode(I)Z
    .locals 1
    .param p1, "repeatMode"    # I

    .line 82
    iput p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    .line 83
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result v0

    return v0
.end method

.method public updateShuffleModeEnabled(Z)Z
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 91
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 92
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result v0

    return v0
.end method
