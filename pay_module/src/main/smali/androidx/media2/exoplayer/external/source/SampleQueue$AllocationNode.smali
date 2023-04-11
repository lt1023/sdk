.class final Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final endPosition:J

.field public next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final startPosition:J

.field public wasInitialized:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 2
    .param p1, "startPosition"    # J
    .param p3, "allocationLength"    # I

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->startPosition:J

    .line 718
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->endPosition:J

    .line 719
    return-void
.end method


# virtual methods
.method public clear()Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    .locals 2

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    .line 751
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 752
    .local v1, "temp":Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 753
    return-object v1
.end method

.method public initialize(Landroidx/media2/exoplayer/external/upstream/Allocation;Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;)V
    .locals 1
    .param p1, "allocation"    # Landroidx/media2/exoplayer/external/upstream/Allocation;
    .param p2, "next"    # Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 728
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    .line 729
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->next:Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->wasInitialized:Z

    .line 731
    return-void
.end method

.method public translateOffset(J)I
    .locals 2
    .param p1, "absolutePosition"    # J

    .line 741
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleQueue$AllocationNode;->allocation:Landroidx/media2/exoplayer/external/upstream/Allocation;

    iget v0, v0, Landroidx/media2/exoplayer/external/upstream/Allocation;->offset:I

    add-int/2addr v1, v0

    return v1
.end method
