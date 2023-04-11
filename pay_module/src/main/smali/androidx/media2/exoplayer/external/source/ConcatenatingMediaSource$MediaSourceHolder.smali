.class final Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaSourceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final activeMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field public childIndex:I

.field public firstPeriodIndexInChild:I

.field public firstWindowIndexInChild:I

.field public hasStartedPreparing:Z

.field public isPrepared:Z

.field public isRemoved:Z

.field public final mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field public timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 918
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->createWithDummyTimeline(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 920
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    .line 921
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)I
    .locals 2
    .param p1, "other"    # Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 935
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget v1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 902
    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->compareTo(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)I

    move-result p1

    return p1
.end method

.method public reset(III)V
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "firstWindowIndexInChild"    # I
    .param p3, "firstPeriodIndexInChild"    # I

    .line 924
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 925
    iput p2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 926
    iput p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    .line 928
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    .line 929
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 930
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 931
    return-void
.end method
