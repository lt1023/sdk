.class public Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;
.implements Landroidx/media2/exoplayer/external/source/SequenceableLoader;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,
        Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/source/SampleStream;",
        "Landroidx/media2/exoplayer/external/source/SequenceableLoader;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/source/chunk/Chunk;",
        ">;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChunkSampleStream"


# instance fields
.field private final callback:Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback<",
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field decodeOnlyUntilPositionUs:J

.field private final embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

.field private final embeddedTrackFormats:[Landroidx/media2/exoplayer/external/Format;

.field private final embeddedTrackTypes:[I

.field private final embeddedTracksSelected:[Z

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final loader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field loadingFinished:Z

.field private final mediaChunkOutput:Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final nextChunkHolder:Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;

.field private nextNotifyPrimaryFormatMediaChunkIndex:I

.field private pendingResetPositionUs:J

.field private primaryDownstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

.field private final primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

.field public final primaryTrackType:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private releaseCallback:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;Landroidx/media2/exoplayer/external/upstream/Allocator;JILandroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;)V
    .locals 12
    .param p1, "primaryTrackType"    # I
    .param p2, "embeddedTrackTypes"    # [I
    .param p3, "embeddedTrackFormats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p6, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p7, "positionUs"    # J
    .param p9, "minLoadableRetryCount"    # I
    .param p10, "eventDispatcher"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Landroidx/media2/exoplayer/external/Format;",
            "TT;",
            "Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback<",
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Landroidx/media2/exoplayer/external/upstream/Allocator;",
            "JI",
            "Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    .local p4, "chunkSource":Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;, "TT;"
    .local p5, "callback":Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;, "Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback<Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;>;"
    new-instance v9, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    move/from16 v11, p9

    invoke-direct {v9, v11}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;-><init>(I[I[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;Landroidx/media2/exoplayer/external/upstream/Allocator;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;)V

    .line 131
    return-void
.end method

.method public constructor <init>(I[I[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;Landroidx/media2/exoplayer/external/upstream/Allocator;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;)V
    .locals 17
    .param p1, "primaryTrackType"    # I
    .param p2, "embeddedTrackTypes"    # [I
    .param p3, "embeddedTrackFormats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p6, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p7, "positionUs"    # J
    .param p9, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p10, "eventDispatcher"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Landroidx/media2/exoplayer/external/Format;",
            "TT;",
            "Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback<",
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Landroidx/media2/exoplayer/external/upstream/Allocator;",
            "J",
            "Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 156
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    .local p4, "chunkSource":Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;, "TT;"
    .local p5, "callback":Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;, "Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback<Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 158
    iput-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 159
    move-object/from16 v6, p3

    iput-object v6, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Landroidx/media2/exoplayer/external/Format;

    .line 160
    move-object/from16 v7, p4

    iput-object v7, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    .line 161
    move-object/from16 v8, p5

    iput-object v8, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->callback:Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;

    .line 162
    move-object/from16 v9, p10

    iput-object v9, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 163
    move-object/from16 v10, p9

    iput-object v10, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 164
    new-instance v11, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v12, "Loader:ChunkSampleStream"

    invoke-direct {v11, v12}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v11, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 165
    new-instance v11, Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;

    invoke-direct {v11}, Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;-><init>()V

    iput-object v11, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;

    .line 166
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 167
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 169
    const/4 v11, 0x0

    if-nez v2, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    array-length v12, v2

    .line 170
    .local v12, "embeddedTrackCount":I
    :goto_0
    new-array v13, v12, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    iput-object v13, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 171
    new-array v13, v12, [Z

    iput-object v13, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    .line 172
    add-int/lit8 v13, v12, 0x1

    new-array v13, v13, [I

    .line 173
    .local v13, "trackTypes":[I
    add-int/lit8 v14, v12, 0x1

    new-array v14, v14, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 175
    .local v14, "sampleQueues":[Landroidx/media2/exoplayer/external/source/SampleQueue;
    new-instance v15, Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-direct {v15, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    iput-object v15, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 176
    aput v1, v13, v11

    .line 177
    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    aput-object v15, v14, v11

    .line 179
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_1

    .line 180
    new-instance v15, Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-direct {v15, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    .line 181
    .local v15, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aput-object v15, v1, v11

    .line 182
    add-int/lit8 v1, v11, 0x1

    aput-object v15, v14, v1

    .line 183
    add-int/lit8 v1, v11, 0x1

    aget v16, v2, v11

    aput v16, v13, v1

    .line 179
    .end local v15    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_1

    .line 186
    .end local v11    # "i":I
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;

    invoke-direct {v1, v13, v14}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;-><init>([I[Landroidx/media2/exoplayer/external/source/SampleQueue;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunkOutput:Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;

    .line 187
    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 188
    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 189
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)[Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)[I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)[Landroidx/media2/exoplayer/external/Format;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 51
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    return-object v0
.end method

.method private discardDownstreamMediaChunks(I)V
    .locals 3
    .param p1, "discardToSampleIndex"    # I

    .line 680
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    nop

    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v1

    .line 683
    .local v1, "discardToMediaChunkIndex":I
    iget v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 684
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 685
    if-lez v1, :cond_0

    .line 686
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->removeRange(Ljava/util/List;II)V

    .line 687
    iget v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    goto :goto_0

    .line 685
    :cond_0
    nop

    .line 689
    :goto_0
    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    .locals 4
    .param p1, "chunkIndex"    # I

    .line 745
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    .line 746
    .local v0, "firstRemovedChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Landroidx/media2/exoplayer/external/util/Util;->removeRange(Ljava/util/List;II)V

    .line 747
    iget v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 748
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 749
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 750
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 751
    aget-object v2, v2, v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getLastMediaChunk()Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    .locals 2

    .line 734
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method private haveReadFromMediaChunk(I)Z
    .locals 6
    .param p1, "mediaChunkIndex"    # I

    .line 663
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    .line 664
    .local v0, "mediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v1, v3, :cond_0

    .line 665
    return v4

    .line 667
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 668
    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v5

    if-le v3, v5, :cond_1

    .line 669
    return v4

    .line 667
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 658
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    instance-of v0, p1, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    return v0
.end method

.method private maybeNotifyPrimaryTrackFormatChanged()V
    .locals 4

    .line 692
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result v0

    .line 693
    .local v0, "readSampleIndex":I
    iget v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 694
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v1

    .line 696
    .local v1, "notifyToMediaChunkIndex":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    if-gt v2, v1, :cond_0

    .line 697
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged(I)V

    goto :goto_0

    .line 699
    :cond_0
    return-void
.end method

.method private maybeNotifyPrimaryTrackFormatChanged(I)V
    .locals 9
    .param p1, "mediaChunkReadIndex"    # I

    .line 702
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    .line 703
    .local v0, "currentChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 704
    .local v8, "trackFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v8, v1}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget v4, v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    goto :goto_0

    .line 704
    :cond_0
    nop

    .line 709
    :goto_0
    iput-object v8, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 710
    return-void
.end method

.method private primarySampleIndexToMediaChunkIndex(II)I
    .locals 3
    .param p1, "primarySampleIndex"    # I
    .param p2, "minChunkIndex"    # I

    .line 725
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 726
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 727
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 725
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 27
    .param p1, "positionUs"    # J

    .line 558
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 562
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    .line 565
    .local v1, "pendingReset":Z
    if-eqz v1, :cond_1

    .line 566
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 567
    .local v3, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;>;"
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_0

    .line 569
    .end local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;>;"
    :cond_1
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 570
    .restart local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;>;"
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 572
    .local v4, "loadPositionUs":J
    :goto_0
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;

    move-wide/from16 v7, p1

    move-wide v9, v4

    move-object v11, v3

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;->getNextChunk(JJLjava/util/List;Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;)V

    .line 573
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;

    iget-boolean v6, v6, Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;->endOfStream:Z

    .line 574
    .local v6, "endOfStream":Z
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 575
    .local v7, "loadable":Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/chunk/ChunkHolder;->clear()V

    .line 577
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    .line 578
    iput-wide v8, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 579
    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 580
    return v10

    .line 583
    :cond_2
    if-nez v7, :cond_3

    .line 584
    return v2

    .line 587
    :cond_3
    invoke-direct {v0, v7}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 588
    move-object v11, v7

    check-cast v11, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    .line 589
    .local v11, "mediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    if-eqz v1, :cond_6

    .line 590
    iget-wide v12, v11, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    const/4 v2, 0x1

    nop

    .line 592
    .local v2, "resetToMediaChunk":Z
    :cond_4
    if-eqz v2, :cond_5

    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_5
    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :goto_1
    iput-wide v12, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    .line 593
    iput-wide v8, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_2

    .line 589
    .end local v2    # "resetToMediaChunk":Z
    :cond_6
    nop

    .line 595
    :goto_2
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunkOutput:Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v11, v2}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->init(Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkOutput;)V

    .line 596
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 587
    .end local v11    # "mediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    :cond_7
    nop

    .line 598
    :goto_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v9, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    .line 600
    invoke-interface {v8, v9}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v8

    .line 599
    invoke-virtual {v2, v7, v0, v8}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v8

    .line 601
    .local v8, "elapsedRealtimeMs":J
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v12, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget v13, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v14, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v15, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v2, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move/from16 v24, v1

    .end local v1    # "pendingReset":Z
    .local v24, "pendingReset":Z
    iget-wide v0, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    move-wide/from16 v25, v4

    move-object v5, v3

    .end local v3    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;>;"
    .end local v4    # "loadPositionUs":J
    .local v5, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;>;"
    .local v25, "loadPositionUs":J
    iget-wide v3, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    move/from16 v16, v2

    move-object/from16 v17, v10

    move-wide/from16 v18, v0

    move-wide/from16 v20, v3

    move-wide/from16 v22, v8

    invoke-virtual/range {v11 .. v23}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    .line 611
    const/4 v0, 0x1

    return v0

    .line 558
    .end local v5    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;>;"
    .end local v6    # "endOfStream":Z
    .end local v7    # "loadable":Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .end local v8    # "elapsedRealtimeMs":J
    .end local v24    # "pendingReset":Z
    .end local v25    # "loadPositionUs":J
    :cond_8
    :goto_4
    nop

    .line 559
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 199
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getFirstIndex()I

    move-result v0

    .line 203
    .local v0, "oldFirstSampleIndex":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardTo(JZZ)V

    .line 204
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getFirstIndex()I

    move-result v1

    .line 205
    .local v1, "newFirstSampleIndex":I
    if-le v1, v0, :cond_2

    .line 206
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getFirstTimestampUs()J

    move-result-wide v2

    .line 207
    .local v2, "discardToUs":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 208
    aget-object v5, v5, v4

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v6, v6, v4

    invoke-virtual {v5, v2, v3, p3, v6}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardTo(JZZ)V

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 205
    .end local v2    # "discardToUs":J
    .end local v4    # "i":I
    :cond_2
    nop

    .line 211
    :goto_1
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    .line 212
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 278
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;->getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .line 253
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_0

    .line 254
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 258
    :cond_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 259
    .local v0, "bufferedPositionUs":J
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 260
    .local v2, "lastMediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_0

    .line 261
    :cond_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    nop

    .line 262
    .local v3, "lastCompletedMediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    if-eqz v3, :cond_4

    .line 263
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 262
    :cond_4
    nop

    .line 265
    :goto_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public getChunkSource()Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 242
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 616
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 619
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->endTimeUs:J

    :goto_0
    return-wide v0
.end method

.method isPendingReset()Z
    .locals 5

    .line 676
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 399
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError()V

    .line 405
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;->maybeThrowError()V

    goto :goto_0

    .line 405
    :cond_0
    nop

    .line 408
    :goto_0
    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJZ)V
    .locals 21
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 464
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v7, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 464
    invoke-virtual/range {v2 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 478
    if-nez p6, :cond_1

    .line 479
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 480
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 481
    .local v5, "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 480
    .end local v5    # "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 483
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->callback:Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    goto :goto_1

    .line 478
    :cond_1
    nop

    .line 485
    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 50
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->onLoadCanceled(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJ)V
    .locals 21
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 443
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;->onChunkLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)V

    .line 444
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v7, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 444
    invoke-virtual/range {v2 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 458
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->callback:Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 459
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 50
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->onLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 34
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 494
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v29

    .line 495
    .local v29, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z

    move-result v31

    .line 496
    .local v31, "isMediaChunk":Z
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x1

    add-int/lit8 v15, v1, -0x1

    .line 497
    .local v15, "lastChunkIndex":I
    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, v29, v1

    if-eqz v3, :cond_1

    if-eqz v31, :cond_1

    .line 498
    invoke-direct {v0, v15}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 497
    :cond_1
    nop

    .line 498
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move/from16 v32, v1

    .line 500
    .local v32, "cancelable":Z
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v32, :cond_2

    .line 501
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v2, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_2

    .line 503
    :cond_2
    move-wide v5, v10

    :goto_2
    nop

    .line 504
    .local v5, "blacklistDurationMs":J
    const/4 v12, 0x0

    .line 505
    .local v12, "loadErrorAction":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    move-object/from16 v2, p1

    move/from16 v3, v32

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;->onChunkLoadError(Landroidx/media2/exoplayer/external/source/chunk/Chunk;ZLjava/lang/Exception;J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 506
    if-eqz v32, :cond_6

    .line 507
    sget-object v12, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 508
    if-eqz v31, :cond_5

    .line 509
    invoke-direct {v0, v15}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    move-result-object v1

    .line 510
    .local v1, "removed":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    if-ne v1, v7, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 511
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_4

    .line 511
    :cond_4
    nop

    .line 514
    .end local v1    # "removed":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    :goto_4
    goto :goto_5

    .line 508
    :cond_5
    goto :goto_5

    .line 516
    :cond_6
    const-string v1, "ChunkSampleStream"

    const-string v2, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 505
    :cond_7
    nop

    .line 520
    :goto_5
    if-nez v12, :cond_9

    .line 522
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v2, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    .line 523
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-wide/from16 v18, p4

    move-object/from16 v20, p6

    move/from16 v21, p7

    invoke-interface/range {v16 .. v21}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v1

    .line 526
    .local v1, "retryDelayMs":J
    cmp-long v3, v1, v10

    if-eqz v3, :cond_8

    .line 527
    invoke-static {v9, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v3

    goto :goto_6

    .line 528
    :cond_8
    sget-object v3, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    :goto_6
    move-object v12, v3

    move-object v1, v12

    goto :goto_7

    .line 520
    .end local v1    # "retryDelayMs":J
    :cond_9
    move-object v1, v12

    .line 531
    .end local v12    # "loadErrorAction":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .local v1, "loadErrorAction":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    :goto_7
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v2

    xor-int/2addr v2, v8

    .local v2, "canceled":Z
    move/from16 v28, v2

    .line 532
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v9, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v10

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v11

    iget v12, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v13, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v14, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v3, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    move v4, v15

    .end local v15    # "lastChunkIndex":I
    .local v4, "lastChunkIndex":I
    move v15, v3

    iget-object v3, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v16, v3

    move/from16 v33, v4

    .end local v4    # "lastChunkIndex":I
    .local v33, "lastChunkIndex":I
    iget-wide v3, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    move-wide/from16 v17, v3

    iget-wide v3, v7, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    move-wide/from16 v19, v3

    .line 532
    move-wide/from16 v21, p2

    move-wide/from16 v23, p4

    move-wide/from16 v25, v29

    move-object/from16 v27, p6

    invoke-virtual/range {v8 .. v28}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 548
    if-eqz v2, :cond_a

    .line 549
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->callback:Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;

    invoke-interface {v3, v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    goto :goto_8

    .line 548
    :cond_a
    nop

    .line 551
    :goto_8
    return-object v1
.end method

.method public bridge synthetic onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 50
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->onLoadError(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 386
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 387
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 388
    .local v3, "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 387
    .end local v3    # "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->releaseCallback:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;

    if-eqz v0, :cond_1

    .line 391
    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;->onSampleStreamReleased(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;)V

    goto :goto_1

    .line 390
    :cond_1
    nop

    .line 393
    :goto_1
    return-void
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p2, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .line 413
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, -0x3

    return v0

    .line 416
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 417
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 12
    .param p1, "positionUs"    # J

    .line 625
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 629
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 630
    .local v0, "currentQueueSize":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->chunkSource:Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v1

    .line 631
    .local v1, "preferredQueueSize":I
    if-gt v0, v1, :cond_1

    .line 632
    return-void

    .line 635
    :cond_1
    move v2, v0

    .line 636
    .local v2, "newQueueSize":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 637
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 638
    move v2, v3

    .line 639
    goto :goto_1

    .line 636
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v3    # "i":I
    :cond_3
    :goto_1
    if-ne v2, v0, :cond_4

    .line 643
    return-void

    .line 646
    :cond_4
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    move-result-object v3

    iget-wide v10, v3, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 647
    .local v10, "endTimeUs":J
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    move-result-object v3

    .line 648
    .local v3, "firstRemovedChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 649
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_2

    .line 648
    :cond_5
    nop

    .line 651
    :goto_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 652
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget v5, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    .line 653
    return-void

    .line 625
    .end local v0    # "currentQueueSize":I
    .end local v1    # "preferredQueueSize":I
    .end local v2    # "newQueueSize":I
    .end local v3    # "firstRemovedChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    .end local v10    # "endTimeUs":J
    :cond_6
    :goto_3
    nop

    .line 626
    return-void
.end method

.method public release()V
    .locals 1

    .line 362
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->release(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    .line 363
    return-void
.end method

.method public release(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;)V
    .locals 4
    .param p1    # Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 375
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    .local p1, "callback":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback<TT;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->releaseCallback:Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$ReleaseCallback;

    .line 377
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    .line 378
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 379
    .local v3, "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    .line 378
    .end local v3    # "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    .line 382
    return-void
.end method

.method public seekToUs(J)V
    .locals 10
    .param p1, "positionUs"    # J

    .line 287
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 288
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 291
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 296
    .local v0, "seekToMediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 297
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;

    .line 298
    .local v2, "mediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->startTimeUs:J

    .line 299
    .local v3, "mediaChunkStartTimeUs":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->clippedStartTimeUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 300
    move-object v0, v2

    .line 301
    goto :goto_1

    .line 299
    :cond_1
    nop

    .line 302
    cmp-long v5, v3, p1

    if-lez v5, :cond_2

    .line 304
    goto :goto_1

    .line 302
    :cond_2
    nop

    .line 296
    .end local v2    # "mediaChunk":Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;
    .end local v3    # "mediaChunkStartTimeUs":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :cond_3
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 311
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 315
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 316
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setReadPosition(I)Z

    move-result v3

    .line 317
    .local v3, "seekInsideBuffer":Z
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    goto :goto_4

    .line 319
    .end local v3    # "seekInsideBuffer":Z
    :cond_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 323
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 320
    :goto_2
    invoke-virtual {v3, p1, p2, v1, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 325
    .restart local v3    # "seekInsideBuffer":Z
    :goto_3
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    .line 328
    :goto_4
    if-eqz v3, :cond_8

    .line 330
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 332
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result v4

    .line 331
    invoke-direct {p0, v4, v2}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v4

    iput v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 334
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 335
    .local v7, "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 336
    invoke-virtual {v7, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    .line 334
    .end local v7    # "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    goto :goto_7

    .line 340
    :cond_8
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 341
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 342
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 343
    iput v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 344
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 345
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_7

    .line 347
    :cond_9
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 348
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v4, v1

    :goto_6
    if-ge v2, v4, :cond_a

    aget-object v5, v1, v2

    .line 349
    .local v5, "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 348
    .end local v5    # "embeddedSampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 353
    :cond_a
    :goto_7
    return-void
.end method

.method public selectEmbeddedTrack(JI)Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<",
            "TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    .line 225
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 226
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    .line 227
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 228
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aput-boolean v2, v1, v0

    .line 229
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 230
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, v2, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    .line 231
    new-instance v1, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p0, v2, v0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;Landroidx/media2/exoplayer/external/source/SampleQueue;I)V

    return-object v1

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    return-void
.end method

.method public skipData(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 423
    .local p0, "this":Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;, "Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return v0

    .line 427
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 428
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceToEnd()I

    move-result v0

    goto :goto_0

    .line 427
    :cond_1
    nop

    .line 430
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->primarySampleQueue:Landroidx/media2/exoplayer/external/source/SampleQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v0

    .line 431
    .local v0, "skipCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 432
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_2
    nop

    .line 435
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 436
    return v0
.end method
