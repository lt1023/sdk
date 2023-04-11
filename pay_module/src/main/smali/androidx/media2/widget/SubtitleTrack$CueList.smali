.class Landroidx/media2/widget/SubtitleTrack$CueList;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/SubtitleTrack$CueList$EntryIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CueList"


# instance fields
.field public DEBUG:Z

.field mCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->DEBUG:Z

    .line 559
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    .line 560
    return-void
.end method

.method private addEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)Z
    .locals 3
    .param p1, "cue"    # Landroidx/media2/widget/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .line 387
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 388
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/widget/SubtitleTrack$Cue;>;"
    if-nez v0, :cond_0

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 390
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    const/4 v1, 0x0

    return v1

    .line 391
    :cond_1
    nop

    .line 396
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public add(Landroidx/media2/widget/SubtitleTrack$Cue;)V
    .locals 10
    .param p1, "cue"    # Landroidx/media2/widget/SubtitleTrack$Cue;

    .line 412
    iget-wide v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v2, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 414
    :cond_0
    iget-wide v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/widget/SubtitleTrack$CueList;->addEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    return-void

    .line 418
    :cond_1
    iget-wide v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 419
    .local v0, "lastTimeMs":J
    iget-object v2, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v2, :cond_4

    .line 420
    iget-object v2, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-wide v5, v2, v4

    .line 421
    .local v5, "timeMs":J
    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    iget-wide v7, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_2

    .line 422
    invoke-direct {p0, p1, v5, v6}, Landroidx/media2/widget/SubtitleTrack$CueList;->addEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)Z

    .line 423
    move-wide v0, v5

    goto :goto_1

    .line 421
    :cond_2
    nop

    .line 420
    .end local v5    # "timeMs":J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    .line 419
    :cond_4
    nop

    .line 428
    :goto_2
    iget-wide v2, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v2, v3}, Landroidx/media2/widget/SubtitleTrack$CueList;->addEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)Z

    .line 429
    return-void
.end method

.method public entriesBetween(JJ)Ljava/lang/Iterable;
    .locals 7
    .param p1, "lastTimeMs"    # J
    .param p3, "timeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media2/widget/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .line 443
    new-instance v6, Landroidx/media2/widget/SubtitleTrack$CueList$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/widget/SubtitleTrack$CueList$1;-><init>(Landroidx/media2/widget/SubtitleTrack$CueList;JJ)V

    return-object v6
.end method

.method public nextTimeAfter(J)J
    .locals 6
    .param p1, "timeMs"    # J

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/ArrayList<Landroidx/media2/widget/SubtitleTrack$Cue;>;>;"
    const-wide/16 v1, -0x1

    :try_start_0
    iget-object v3, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    move-object v0, v3

    .line 461
    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 464
    :cond_0
    return-wide v1

    .line 468
    :catch_0
    move-exception v3

    .line 469
    .local v3, "e":Ljava/util/NoSuchElementException;
    return-wide v1

    .line 466
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v3

    .line 467
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v1
.end method

.method public remove(Landroidx/media2/widget/SubtitleTrack$Cue;)V
    .locals 5
    .param p1, "cue"    # Landroidx/media2/widget/SubtitleTrack$Cue;

    .line 432
    iget-wide v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/widget/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V

    .line 433
    iget-object v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 435
    .local v3, "timeMs":J
    invoke-virtual {p0, p1, v3, v4}, Landroidx/media2/widget/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V

    .line 434
    .end local v3    # "timeMs":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 433
    :cond_1
    nop

    .line 438
    :goto_1
    iget-wide v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/widget/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V

    .line 439
    return-void
.end method

.method removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V
    .locals 3
    .param p1, "cue"    # Landroidx/media2/widget/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .line 401
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 402
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/widget/SubtitleTrack$Cue;>;"
    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 404
    :cond_0
    goto :goto_0

    .line 402
    :cond_1
    nop

    .line 408
    :goto_0
    return-void
.end method
