.class Landroidx/media2/player/subtitle/SubtitleTrack$Run;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Run"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public mEndTimeMs:J

.field public mFirstCue:Landroidx/media2/player/subtitle/SubtitleTrack$Cue;

.field public mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

.field public mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

.field public mRunID:J

.field private mStoredEndTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 611
    const-class v0, Landroidx/media2/player/subtitle/SubtitleTrack;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    .line 616
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mRunID:J

    .line 617
    iput-wide v0, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mStoredEndTimeMs:J

    .line 620
    return-void
.end method


# virtual methods
.method public removeAtEndTimeMs()V
    .locals 4

    .line 650
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    .line 652
    .local v0, "prev":Landroidx/media2/player/subtitle/SubtitleTrack$Run;
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 653
    iget-object v3, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    iput-object v3, v1, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    .line 654
    iput-object v2, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    goto :goto_0

    .line 652
    :cond_0
    nop

    .line 656
    :goto_0
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    if-eqz v1, :cond_1

    .line 657
    iput-object v0, v1, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    .line 658
    iput-object v2, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    goto :goto_1

    .line 656
    :cond_1
    nop

    .line 660
    :goto_1
    return-void
.end method

.method public storeByEndTimeMs(Landroid/util/LongSparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/player/subtitle/SubtitleTrack$Run;",
            ">;)V"
        }
    .end annotation

    .line 624
    .local p1, "runsByEndTime":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroidx/media2/player/subtitle/SubtitleTrack$Run;>;"
    iget-wide v0, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mStoredEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 625
    .local v0, "ix":I
    if-ltz v0, :cond_2

    .line 626
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    if-nez v1, :cond_1

    .line 627
    nop

    .line 628
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    if-nez v1, :cond_0

    .line 629
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 626
    :cond_1
    nop

    .line 634
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->removeAtEndTimeMs()V

    goto :goto_1

    .line 625
    :cond_2
    nop

    .line 638
    :goto_1
    iget-wide v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    .line 639
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    .line 640
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    iput-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    .line 641
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    if-eqz v1, :cond_3

    .line 642
    iput-object p0, v1, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/player/subtitle/SubtitleTrack$Run;

    goto :goto_2

    .line 641
    :cond_3
    nop

    .line 644
    :goto_2
    iget-wide v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 645
    iget-wide v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    iput-wide v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$Run;->mStoredEndTimeMs:J

    goto :goto_3

    .line 638
    :cond_4
    nop

    .line 647
    :goto_3
    return-void
.end method
