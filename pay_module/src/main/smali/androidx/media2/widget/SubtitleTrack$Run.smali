.class Landroidx/media2/widget/SubtitleTrack$Run;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Run"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public mEndTimeMs:J

.field public mFirstCue:Landroidx/media2/widget/SubtitleTrack$Cue;

.field public mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

.field public mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

.field public mRunID:J

.field private mStoredEndTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 608
    const-class v0, Landroidx/media2/widget/SubtitleTrack;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mEndTimeMs:J

    .line 613
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mRunID:J

    .line 614
    iput-wide v0, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mStoredEndTimeMs:J

    .line 617
    return-void
.end method


# virtual methods
.method public removeAtEndTimeMs()V
    .locals 4

    .line 647
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    .line 649
    .local v0, "prev":Landroidx/media2/widget/SubtitleTrack$Run;
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 650
    iget-object v3, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    iput-object v3, v1, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    .line 651
    iput-object v2, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    goto :goto_0

    .line 649
    :cond_0
    nop

    .line 653
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    if-eqz v1, :cond_1

    .line 654
    iput-object v0, v1, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    .line 655
    iput-object v2, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    goto :goto_1

    .line 653
    :cond_1
    nop

    .line 657
    :goto_1
    return-void
.end method

.method public storeByEndTimeMs(Landroid/util/LongSparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/widget/SubtitleTrack$Run;",
            ">;)V"
        }
    .end annotation

    .line 621
    .local p1, "runsByEndTime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroidx/media2/widget/SubtitleTrack$Run;>;"
    iget-wide v0, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mStoredEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 622
    .local v0, "ix":I
    if-ltz v0, :cond_2

    .line 623
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    if-nez v1, :cond_1

    .line 624
    nop

    .line 625
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    if-nez v1, :cond_0

    .line 626
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 623
    :cond_1
    nop

    .line 631
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleTrack$Run;->removeAtEndTimeMs()V

    goto :goto_1

    .line 622
    :cond_2
    nop

    .line 635
    :goto_1
    iget-wide v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    .line 636
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    .line 637
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/widget/SubtitleTrack$Run;

    iput-object v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    .line 638
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    if-eqz v1, :cond_3

    .line 639
    iput-object p0, v1, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    goto :goto_2

    .line 638
    :cond_3
    nop

    .line 641
    :goto_2
    iget-wide v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 642
    iget-wide v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mEndTimeMs:J

    iput-wide v1, p0, Landroidx/media2/widget/SubtitleTrack$Run;->mStoredEndTimeMs:J

    goto :goto_3

    .line 635
    :cond_4
    nop

    .line 644
    :goto_3
    return-void
.end method
