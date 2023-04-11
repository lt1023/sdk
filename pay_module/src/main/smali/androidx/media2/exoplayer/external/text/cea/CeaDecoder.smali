.class abstract Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/SubtitleDecoder;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaOutputBuffer;,
        Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;
    }
.end annotation


# static fields
.field private static final NUM_INPUT_BUFFERS:I = 0xa

.field private static final NUM_OUTPUT_BUFFERS:I = 0x2


# instance fields
.field private final availableInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final availableOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

.field private playbackPositionUs:J

.field private queuedInputBufferCount:J

.field private final queuedInputBuffers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    new-instance v3, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;-><init>(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 58
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    new-instance v3, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-direct {v3, p0, v2}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 62
    return-void
.end method

.method private releaseInputBuffer(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;)V
    .locals 1
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    .line 139
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;->clear()V

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method


# virtual methods
.method protected abstract createSubtitle()Landroidx/media2/exoplayer/external/text/Subtitle;
.end method

.method protected abstract decode(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;)V
.end method

.method public dequeueInputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    return-object v0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeueInputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    return-object v1

    .line 98
    :cond_0
    nop

    .line 104
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 105
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->playbackPositionUs:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    .line 110
    .local v0, "inputBuffer":Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    .line 112
    .local v1, "outputBuffer":Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->addFlag(I)V

    .line 113
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 114
    return-object v1

    .line 117
    .end local v1    # "outputBuffer":Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->decode(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;)V

    .line 120
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->isNewSubtitleDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->createSubtitle()Landroidx/media2/exoplayer/external/text/Subtitle;

    move-result-object v2

    .line 124
    .local v2, "subtitle":Landroidx/media2/exoplayer/external/text/Subtitle;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;->isDecodeOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    .line 126
    .restart local v1    # "outputBuffer":Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->setContent(JLandroidx/media2/exoplayer/external/text/Subtitle;J)V

    .line 127
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 128
    return-object v1

    .line 124
    .end local v1    # "outputBuffer":Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;
    :cond_2
    goto :goto_1

    .line 120
    .end local v2    # "subtitle":Landroidx/media2/exoplayer/external/text/Subtitle;
    :cond_3
    nop

    .line 132
    :goto_1
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 133
    .end local v0    # "inputBuffer":Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;
    goto :goto_0

    .line 105
    :cond_4
    goto :goto_2

    .line 104
    :cond_5
    nop

    .line 135
    :goto_2
    return-object v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBufferCount:J

    .line 151
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 152
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    goto :goto_1

    .line 155
    :cond_1
    nop

    .line 159
    :goto_1
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected abstract isNewSubtitleDataAvailable()Z
.end method

.method public queueInputBuffer(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;)V
    .locals 5
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 85
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBufferCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBufferCount:J

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;->access$202(Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;J)J

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer;

    .line 94
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->queueInputBuffer(Landroidx/media2/exoplayer/external/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 164
    return-void
.end method

.method protected releaseOutputBuffer(Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;)V
    .locals 1
    .param p1, "outputBuffer"    # Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;

    .line 144
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/SubtitleOutputBuffer;->clear()V

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public setPositionUs(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .line 69
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 70
    return-void
.end method
