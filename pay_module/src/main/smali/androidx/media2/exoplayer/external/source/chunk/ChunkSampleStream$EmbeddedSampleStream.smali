.class public final Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field private final index:I

.field private notifiedDownstreamFormat:Z

.field public final parent:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;Landroidx/media2/exoplayer/external/source/SampleQueue;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;
    .param p3, "sampleQueue"    # Landroidx/media2/exoplayer/external/source/SampleQueue;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/source/SampleQueue;",
            "I)V"
        }
    .end annotation

    .line 768
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    .local p2, "parent":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 770
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 771
    iput p4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    .line 772
    return-void
.end method

.method private maybeNotifyDownstreamFormat()V
    .locals 8

    .line 819
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->access$400(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 821
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->access$100(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)[I

    move-result-object v0

    iget v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget v2, v0, v2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 822
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->access$200(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iget v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 825
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->access$300(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)J

    move-result-wide v6

    .line 820
    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    goto :goto_0

    .line 819
    :cond_0
    nop

    .line 828
    :goto_0
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 776
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->hasNextSample()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    return-void
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p2, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .line 805
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, -0x3

    return v0

    .line 808
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 809
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .line 814
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->access$000(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 815
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->access$000(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 816
    return-void
.end method

.method public skipData(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 781
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    const/4 v0, 0x0

    return v0

    .line 784
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 786
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 787
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceToEnd()I

    move-result v0

    goto :goto_0

    .line 786
    :cond_1
    nop

    .line 789
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v0

    .line 790
    .local v0, "skipCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 791
    const/4 v0, 0x0

    goto :goto_0

    .line 790
    :cond_2
    nop

    .line 794
    :goto_0
    return v0
.end method
