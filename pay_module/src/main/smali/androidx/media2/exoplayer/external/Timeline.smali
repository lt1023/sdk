.class public abstract Landroidx/media2/exoplayer/external/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/Timeline$Period;,
        Landroidx/media2/exoplayer/external/Timeline$Window;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media2/exoplayer/external/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 519
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 637
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public getLastWindowIndex(Z)I
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 625
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method public final getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I
    .locals 3
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z

    .line 697
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 698
    .local v0, "windowIndex":I
    invoke-virtual {p0, v0, p3}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Window;->lastPeriodIndex:I

    if-ne v1, p1, :cond_1

    .line 699
    invoke-virtual {p0, v0, p4, p5}, Landroidx/media2/exoplayer/external/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    .line 700
    .local v1, "nextWindowIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 701
    return v2

    .line 703
    :cond_0
    invoke-virtual {p0, v1, p3}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v2

    iget v2, v2, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    return v2

    .line 705
    .end local v1    # "nextWindowIndex":I
    :cond_1
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 577
    packed-switch p2, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 584
    :pswitch_0
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 585
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 584
    :goto_0
    return v0

    .line 582
    :pswitch_1
    return p1

    .line 579
    :pswitch_2
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 580
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 579
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 1
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 796
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;
.end method

.method public getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;
    .locals 2
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 784
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;
    .locals 8
    .param p1, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/Timeline$Window;",
            "Landroidx/media2/exoplayer/external/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 731
    nop

    .line 732
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 731
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public final getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJJ)Landroid/util/Pair;
    .locals 15
    .param p1, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .param p6, "defaultPositionProjectionUs"    # J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/Timeline$Window;",
            "Landroidx/media2/exoplayer/external/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 757
    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    move/from16 v9, p3

    invoke-static {v9, v1, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 758
    const/4 v3, 0x0

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p1

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 759
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    .line 761
    .end local p4    # "windowPositionUs":J
    .local v2, "windowPositionUs":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 762
    const/4 v0, 0x0

    return-object v0

    .line 761
    :cond_0
    goto :goto_0

    .line 759
    .end local v2    # "windowPositionUs":J
    .restart local p4    # "windowPositionUs":J
    :cond_1
    move-wide/from16 v2, p4

    .line 765
    .end local p4    # "windowPositionUs":J
    .restart local v2    # "windowPositionUs":J
    :goto_0
    iget v4, v7, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    .line 766
    .local v4, "periodIndex":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v10

    add-long/2addr v10, v2

    .line 767
    .local v10, "periodPositionUs":J
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v8, v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    .line 768
    .local v12, "periodDurationUs":J
    :goto_1
    cmp-long v14, v12, v0

    if-eqz v14, :cond_2

    cmp-long v14, v10, v12

    if-ltz v14, :cond_2

    iget v14, v7, Landroidx/media2/exoplayer/external/Timeline$Window;->lastPeriodIndex:I

    if-ge v4, v14, :cond_2

    .line 770
    sub-long/2addr v10, v12

    .line 771
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v8, v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    goto :goto_1

    .line 768
    :cond_2
    nop

    .line 773
    iget-object v0, v8, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 602
    packed-switch p2, :pswitch_data_0

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 609
    :pswitch_0
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 610
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 609
    :goto_0
    return v0

    .line 607
    :pswitch_1
    return p1

    .line 604
    :pswitch_2
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    .line 605
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 604
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getUidOfPeriod(I)Ljava/lang/Object;
.end method

.method public final getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;Z)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public final getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;Z)Landroidx/media2/exoplayer/external/Timeline$Window;
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p3, "setTag"    # Z

    .line 662
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public final isEmpty()Z
    .locals 1

    .line 558
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLastPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)Z
    .locals 2
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media2/exoplayer/external/Timeline$Period;
    .param p3, "window"    # Landroidx/media2/exoplayer/external/Timeline$Window;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z

    .line 721
    invoke-virtual/range {p0 .. p5}, Landroidx/media2/exoplayer/external/Timeline;->getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
