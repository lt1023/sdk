.class final Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;
.implements Landroidx/media2/exoplayer/external/source/SequenceableLoader;
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
.implements Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;,
        Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/source/chunk/Chunk;",
        ">;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;",
        "Landroidx/media2/exoplayer/external/source/SequenceableLoader;",
        "Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;",
        "Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field public static final SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL:I = -0x2

.field public static final SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL:I = -0x3

.field public static final SAMPLE_QUEUE_INDEX_PENDING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HlsSampleStreamWrapper"


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private audioSampleQueueIndex:I

.field private audioSampleQueueMappingDone:Z

.field private final callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

.field private chunkUid:I

.field private downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

.field private enabledTrackGroupCount:I

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoSampleQueues:Z

.field private final hlsSampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final loader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

.field private final nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

.field private final onTracksEndedRunnable:Ljava/lang/Runnable;

.field private optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field private pendingResetPositionUs:J

.field private pendingResetUpstreamFormats:Z

.field private prepared:Z

.field private primarySampleQueueIndex:I

.field private primarySampleQueueType:I

.field private primaryTrackGroupIndex:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private sampleOffsetUs:J

.field private sampleQueueIsAudioVideoFlags:[Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private sampleQueuesEnabledStates:[Z

.field private seenFirstTrackSelection:Z

.field private trackGroupToSampleQueueIndex:[I

.field private trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final trackType:I

.field private tracksEnded:Z

.field private upstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

.field private videoSampleQueueIndex:I

.field private videoSampleQueueMappingDone:Z


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/Allocator;JLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;)V
    .locals 2
    .param p1, "trackType"    # I
    .param p2, "callback"    # Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;
    .param p3, "chunkSource"    # Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
    .param p5, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p6, "positionUs"    # J
    .param p8, "muxedAudioFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p9, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p10, "eventDispatcher"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;",
            "Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/Allocator;",
            "J",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 173
    .local p4, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 175
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    .line 176
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    .line 177
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    .line 178
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 179
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    .line 180
    iput-object p9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 181
    iput-object p10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 182
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v1, "Loader:HlsSampleStreamWrapper"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 183
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 184
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    .line 186
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    .line 187
    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 188
    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 189
    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 191
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$0;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$1;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 196
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 197
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 198
    return-void
.end method

.method private buildTracksFromSampleStreams()V
    .locals 13

    .line 988
    const/4 v0, 0x6

    .line 989
    .local v0, "primaryExtractorTrackType":I
    const/4 v1, -0x1

    .line 990
    .local v1, "primaryExtractorTrackIndex":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v2

    .line 991
    .local v2, "extractorTrackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-ge v3, v2, :cond_5

    .line 992
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 994
    .local v5, "sampleMimeType":Ljava/lang/String;
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 995
    const/4 v6, 0x2

    goto :goto_1

    .line 996
    :cond_0
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 997
    const/4 v6, 0x1

    goto :goto_1

    .line 998
    :cond_1
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 999
    const/4 v6, 0x3

    goto :goto_1

    .line 1001
    :cond_2
    const/4 v6, 0x6

    .line 1003
    .local v6, "trackType":I
    :goto_1
    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v7

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v8

    if-le v7, v8, :cond_3

    .line 1004
    move v0, v6

    .line 1005
    move v1, v3

    goto :goto_2

    .line 1006
    :cond_3
    if-ne v6, v0, :cond_4

    if-eq v1, v4, :cond_4

    .line 1010
    const/4 v1, -0x1

    goto :goto_2

    .line 1006
    :cond_4
    nop

    .line 991
    .end local v5    # "sampleMimeType":Ljava/lang/String;
    .end local v6    # "trackType":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1014
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    .line 1015
    .local v3, "chunkSourceTrackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    iget v5, v3, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 1018
    .local v5, "chunkSourceTrackCount":I
    iput v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1019
    new-array v4, v2, [I

    iput-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 1020
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 1021
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v4, v6, v4

    .line 1020
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1025
    .end local v4    # "i":I
    :cond_6
    new-array v4, v2, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 1026
    .local v4, "trackGroups":[Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v6, v2, :cond_b

    .line 1027
    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 1028
    .local v9, "sampleFormat":Landroidx/media2/exoplayer/external/Format;
    if-ne v6, v1, :cond_9

    .line 1029
    new-array v10, v5, [Landroidx/media2/exoplayer/external/Format;

    .line 1030
    .local v10, "formats":[Landroidx/media2/exoplayer/external/Format;
    if-ne v5, v8, :cond_7

    .line 1031
    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/media2/exoplayer/external/Format;->copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    aput-object v8, v10, v7

    goto :goto_6

    .line 1033
    :cond_7
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    if-ge v7, v5, :cond_8

    .line 1034
    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    invoke-static {v11, v9, v8}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->deriveFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    aput-object v11, v10, v7

    .line 1033
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1037
    .end local v7    # "j":I
    :cond_8
    :goto_6
    new-instance v7, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v7, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v7, v4, v6

    .line 1038
    iput v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1039
    .end local v10    # "formats":[Landroidx/media2/exoplayer/external/Format;
    goto :goto_8

    .line 1042
    :cond_9
    const/4 v10, 0x2

    if-ne v0, v10, :cond_a

    iget-object v10, v9, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1043
    iget-object v10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_7

    .line 1042
    :cond_a
    nop

    .line 1044
    const/4 v10, 0x0

    :goto_7
    nop

    .line 1045
    .local v10, "trackFormat":Landroidx/media2/exoplayer/external/Format;
    new-instance v11, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v8, v8, [Landroidx/media2/exoplayer/external/Format;

    invoke-static {v10, v9, v7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->deriveFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    aput-object v12, v8, v7

    invoke-direct {v11, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v11, v4, v6

    .line 1026
    .end local v9    # "sampleFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v10    # "trackFormat":Landroidx/media2/exoplayer/external/Format;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1048
    .end local v6    # "i":I
    :cond_b
    new-instance v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v6, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 1049
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v6, :cond_c

    const/4 v7, 0x1

    nop

    :cond_c
    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 1050
    sget-object v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iput-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 1051
    return-void
.end method

.method private static createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;
    .locals 3
    .param p0, "id"    # I
    .param p1, "type"    # I

    .line 1166
    const-string v0, "HlsSampleStreamWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unmapped track with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;-><init>()V

    return-object v0
.end method

.method private static deriveFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .locals 17
    .param p0, "playlistFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "sampleFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "propagateBitrate"    # Z

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    if-nez v0, :cond_0

    .line 1118
    return-object v13

    .line 1120
    :cond_0
    const/4 v1, -0x1

    if-eqz p2, :cond_1

    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move v7, v2

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    .line 1122
    .local v7, "bitrate":I
    :goto_0
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq v2, v1, :cond_2

    .line 1123
    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move v10, v1

    goto :goto_1

    .line 1124
    :cond_2
    iget v1, v13, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move v10, v1

    :goto_1
    nop

    .line 1125
    .local v10, "channelCount":I
    iget-object v1, v13, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v14

    .line 1126
    .local v14, "sampleTrackType":I
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v14}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 1127
    .local v15, "codecs":Ljava/lang/String;
    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1129
    iget-object v1, v13, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v16, v1

    goto :goto_2

    .line 1128
    :cond_3
    move-object/from16 v16, v1

    .line 1131
    .end local v1    # "mimeType":Ljava/lang/String;
    .local v16, "mimeType":Ljava/lang/String;
    :goto_2
    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget v8, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v9, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v4, v16

    move-object v5, v15

    invoke-virtual/range {v1 .. v12}, Landroidx/media2/exoplayer/external/Format;->copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    return-object v1
.end method

.method private finishedReadingChunk(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;)Z
    .locals 4
    .param p1, "chunk"    # Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    .line 894
    iget v0, p1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uid:I

    .line 895
    .local v0, "chunkUid":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    .line 896
    .local v1, "sampleQueueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 897
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->peekSourceId()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 898
    const/4 v3, 0x0

    return v3

    .line 897
    :cond_0
    nop

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private static formatsMatch(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 7
    .param p0, "manifestFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "sampleFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 1150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1151
    .local v0, "manifestFormatMimeType":Ljava/lang/String;
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1152
    .local v1, "sampleFormatMimeType":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    .line 1153
    .local v2, "manifestFormatTrackType":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 1154
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v5

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1155
    :cond_1
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1156
    return v4

    .line 1158
    :cond_2
    const-string v5, "application/cea-608"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "application/cea-708"

    .line 1159
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1162
    :cond_3
    return v3

    .line 1158
    :cond_4
    nop

    .line 1160
    :goto_1
    iget v5, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    iget v6, p1, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method private getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    .locals 2

    .line 1054
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    return-object v0
.end method

.method private static getTrackTypeScore(I)I
    .locals 1
    .param p0, "trackType"    # I

    .line 1093
    packed-switch p0, :pswitch_data_0

    .line 1101
    const/4 v0, 0x0

    return v0

    .line 1099
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1095
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1097
    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z
    .locals 1
    .param p0, "chunk"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 1146
    instance-of v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 5

    .line 1058
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

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

.method private mapSampleQueuesToMatchTrackGroups()V
    .locals 7

    .line 938
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 939
    .local v0, "trackGroupCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 940
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 941
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 942
    const/4 v2, 0x0

    .local v2, "queueIndex":I
    :goto_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 943
    aget-object v3, v3, v2

    .line 944
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->formatsMatch(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 945
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v2, v4, v1

    .line 946
    goto :goto_2

    .line 944
    :cond_0
    nop

    .line 942
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 941
    .end local v2    # "queueIndex":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 950
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    .line 951
    .local v2, "sampleStream":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->bindSampleQueue()V

    .line 952
    .end local v2    # "sampleStream":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;
    goto :goto_3

    .line 953
    :cond_3
    return-void
.end method

.method private maybeFinishPrepare()V
    .locals 5

    .line 917
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 920
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 921
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    if-nez v4, :cond_1

    .line 922
    return-void

    .line 921
    :cond_1
    nop

    .line 920
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-eqz v0, :cond_3

    .line 928
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mapSampleQueuesToMatchTrackGroups()V

    goto :goto_1

    .line 931
    :cond_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->buildTracksFromSampleStreams()V

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 933
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    .line 935
    :goto_1
    return-void

    .line 917
    :cond_4
    :goto_2
    nop

    .line 918
    return-void
.end method

.method private onTracksEnded()V
    .locals 1

    .line 912
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 913
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    .line 914
    return-void
.end method

.method private resetSampleQueues()V
    .locals 6

    .line 905
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 906
    .local v4, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset(Z)V

    .line 905
    .end local v4    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 908
    :cond_0
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 909
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 7
    .param p1, "positionUs"    # J

    .line 1068
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    .line 1069
    .local v0, "sampleQueueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 1070
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v3, v3, v1

    .line 1071
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 1072
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, v2, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1078
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v2, :cond_2

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v5, v5, v1

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-nez v5, :cond_2

    .line 1079
    :cond_1
    return v4

    .line 1078
    :cond_2
    nop

    .line 1069
    .end local v2    # "seekInsideQueue":Z
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1082
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method private updateSampleStreams([Landroidx/media2/exoplayer/external/source/SampleStream;)V
    .locals 5
    .param p1, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 885
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 886
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 887
    .local v2, "stream":Landroidx/media2/exoplayer/external/source/SampleStream;
    if-eqz v2, :cond_0

    .line 888
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 887
    :cond_0
    nop

    .line 886
    .end local v2    # "stream":Landroidx/media2/exoplayer/external/source/SampleStream;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    :cond_1
    return-void
.end method


# virtual methods
.method public bindSampleQueueToSampleStream(I)I
    .locals 5
    .param p1, "trackGroupIndex"    # I

    .line 238
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v0, v0, p1

    .line 239
    .local v0, "sampleQueueIndex":I
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 240
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 241
    goto :goto_0

    .line 242
    :cond_0
    const/4 v1, -0x3

    .line 240
    :goto_0
    return v1

    .line 244
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v2, v0

    if-eqz v3, :cond_2

    .line 246
    return v1

    .line 248
    :cond_2
    const/4 v1, 0x1

    aput-boolean v1, v2, v0

    .line 249
    return v0
.end method

.method final bridge synthetic bridge$lambda$0$HlsSampleStreamWrapper()V
    .locals 0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$HlsSampleStreamWrapper()V
    .locals 0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onTracksEnded()V

    return-void
.end method

.method public continueLoading(J)Z
    .locals 27
    .param p1, "positionUs"    # J

    .line 578
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 584
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 586
    .local v1, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;>;"
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_1

    .line 588
    .end local v1    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;>;"
    :cond_1
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 589
    .restart local v1    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;>;"
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v3

    .line 591
    .local v3, "lastMediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->endTimeUs:J

    goto :goto_0

    .line 593
    :cond_2
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_0
    move-wide v3, v4

    .line 595
    .local v3, "loadPositionUs":J
    :goto_1
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v6, p1

    move-wide v8, v3

    move-object v10, v1

    invoke-virtual/range {v5 .. v11}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getNextChunk(JJLjava/util/List;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 596
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v5, v5, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 597
    .local v5, "endOfStream":Z
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 598
    .local v6, "loadable":Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 599
    .local v7, "playlistUrlToLoad":Landroid/net/Uri;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    .line 601
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    if-eqz v5, :cond_3

    .line 602
    iput-wide v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 603
    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 604
    return v10

    .line 607
    :cond_3
    if-nez v6, :cond_5

    .line 608
    if-eqz v7, :cond_4

    .line 609
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v8, v7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Landroid/net/Uri;)V

    goto :goto_2

    .line 608
    :cond_4
    nop

    .line 611
    :goto_2
    return v2

    .line 614
    :cond_5
    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 615
    iput-wide v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 616
    move-object v2, v6

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    .line 617
    .local v2, "mediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->init(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    .line 618
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v8, v2, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iput-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_3

    .line 614
    .end local v2    # "mediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    :cond_6
    nop

    .line 621
    :goto_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v9, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    .line 623
    invoke-interface {v8, v9}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v8

    .line 622
    invoke-virtual {v2, v6, v0, v8}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v8

    .line 624
    .local v8, "elapsedRealtimeMs":J
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v12, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget v13, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v14, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v15, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v2, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v24, v1

    .end local v1    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;>;"
    .local v24, "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;>;"
    iget-wide v0, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    move-wide/from16 v25, v3

    .end local v3    # "loadPositionUs":J
    .local v25, "loadPositionUs":J
    iget-wide v3, v6, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    move/from16 v16, v2

    move-object/from16 v17, v10

    move-wide/from16 v18, v0

    move-wide/from16 v20, v3

    move-wide/from16 v22, v8

    invoke-virtual/range {v11 .. v23}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    .line 634
    const/4 v0, 0x1

    return v0

    .line 578
    .end local v5    # "endOfStream":Z
    .end local v6    # "loadable":Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .end local v7    # "playlistUrlToLoad":Landroid/net/Uri;
    .end local v8    # "elapsedRealtimeMs":J
    .end local v24    # "chunkQueue":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;>;"
    .end local v25    # "loadPositionUs":J
    :cond_7
    :goto_4
    nop

    .line 579
    return v2
.end method

.method public continuePreparing()V
    .locals 2

    .line 201
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_0

    .line 202
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_0

    .line 201
    :cond_0
    nop

    .line 204
    :goto_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 394
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    .line 398
    .local v0, "sampleQueueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 399
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardTo(JZZ)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 394
    .end local v0    # "sampleQueueCount":I
    :cond_2
    :goto_1
    nop

    .line 395
    return-void
.end method

.method public endTracks()V
    .locals 2

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    .line 858
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 859
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 10

    .line 545
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_0

    .line 546
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 547
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 550
    :cond_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 551
    .local v0, "bufferedPositionUs":J
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v2

    .line 552
    .local v2, "lastMediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_0

    .line 553
    :cond_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    nop

    .line 554
    .local v3, "lastCompletedMediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    if-eqz v3, :cond_4

    .line 555
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 554
    :cond_4
    nop

    .line 557
    :goto_1
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v4, :cond_6

    .line 558
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 559
    .local v7, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    nop

    .line 560
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 558
    .end local v7    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    goto :goto_3

    .line 557
    :cond_6
    nop

    .line 563
    :goto_3
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 569
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 572
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->endTimeUs:J

    :goto_0
    return-wide v0
.end method

.method public getPrimaryTrackGroupIndex()I
    .locals 1

    .line 234
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    return v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public init(IZZ)V
    .locals 5
    .param p1, "chunkUid"    # I
    .param p2, "shouldSpliceIn"    # Z
    .param p3, "reusingExtractor"    # Z

    .line 770
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 771
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 772
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    goto :goto_0

    .line 770
    :cond_0
    nop

    .line 774
    :goto_0
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkUid:I

    .line 775
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 776
    .local v4, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->sourceId(I)V

    .line 775
    .end local v4    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 778
    :cond_1
    if-eqz p2, :cond_3

    .line 779
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 780
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->splice()V

    .line 779
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 778
    :cond_3
    nop

    .line 783
    :goto_3
    return-void
.end method

.method public isReady(I)Z
    .locals 1
    .param p1, "sampleQueueIndex"    # I

    .line 466
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v0, v0, p1

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

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError()V

    .line 471
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeThrowError()V

    .line 472
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 227
    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJZ)V
    .locals 21
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 671
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 671
    invoke-virtual/range {v2 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 685
    if-nez p6, :cond_1

    .line 686
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 687
    iget v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-lez v2, :cond_0

    .line 688
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    goto :goto_0

    .line 687
    :cond_0
    goto :goto_0

    .line 685
    :cond_1
    nop

    .line 691
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 66
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJ)V
    .locals 21
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 646
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->onChunkLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)V

    .line 647
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 647
    invoke-virtual/range {v2 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 661
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_0

    .line 662
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_0

    .line 664
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 666
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 66
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 30
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 700
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v23

    .line 701
    .local v23, "bytesLoaded":J
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z

    move-result v25

    .line 702
    .local v25, "isMediaChunk":Z
    const/4 v2, 0x0

    .line 705
    .local v2, "blacklistSucceeded":Z
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v4, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    .line 706
    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide v13

    .line 708
    .local v13, "blacklistDurationMs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v13, v3

    if-eqz v5, :cond_0

    .line 709
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v5, v1, v13, v14}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeBlacklistTrack(Landroidx/media2/exoplayer/external/source/chunk/Chunk;J)Z

    move-result v2

    move/from16 v26, v2

    goto :goto_0

    .line 708
    :cond_0
    move/from16 v26, v2

    .line 712
    .end local v2    # "blacklistSucceeded":Z
    .local v26, "blacklistSucceeded":Z
    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v26, :cond_4

    .line 713
    if-eqz v25, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v6, v23, v3

    if-nez v6, :cond_3

    .line 714
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    .line 715
    .local v3, "removed":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    if-ne v3, v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 716
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 717
    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_1

    .line 716
    :cond_2
    goto :goto_1

    .line 713
    .end local v3    # "removed":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    :cond_3
    nop

    .line 720
    :goto_1
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-object/from16 v27, v2

    goto :goto_3

    .line 722
    :cond_4
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v7, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    .line 723
    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v6 .. v11}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v6

    .line 726
    .local v6, "retryDelayMs":J
    cmp-long v8, v6, v3

    if-eqz v8, :cond_5

    .line 727
    invoke-static {v2, v6, v7}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_2

    .line 728
    :cond_5
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    :goto_2
    move-object/from16 v27, v2

    .line 731
    .end local v6    # "retryDelayMs":J
    .local v27, "loadErrorAction":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    :goto_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object v15, v6

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    move-wide/from16 v16, v13

    .end local v13    # "blacklistDurationMs":J
    .local v16, "blacklistDurationMs":J
    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 746
    invoke-virtual/range {v27 .. v27}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v18

    const/4 v12, 0x1

    .line 731
    xor-int/lit8 v22, v18, 0x1

    move-wide/from16 v18, v5

    move-object v5, v15

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-wide/from16 v11, v18

    move-wide/from16 v28, v16

    .end local v16    # "blacklistDurationMs":J
    .local v28, "blacklistDurationMs":J
    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    move-wide/from16 v19, v23

    move-object/from16 v21, p6

    invoke-virtual/range {v2 .. v22}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 748
    if-eqz v26, :cond_7

    .line 749
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_6

    .line 750
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_4

    .line 752
    :cond_6
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    goto :goto_4

    .line 748
    :cond_7
    nop

    .line 755
    :goto_4
    return-object v27
.end method

.method public bridge synthetic onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 66
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onLoadError(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 0

    .line 452
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 453
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .locals 1
    .param p1, "playlistUrl"    # Landroid/net/Uri;
    .param p2, "blacklistDurationMs"    # J

    .line 460
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result v0

    return v0
.end method

.method public onUpstreamFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 870
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method

.method public prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .locals 2
    .param p1, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "primaryTrackGroupIndex"    # I
    .param p3, "optionalTrackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 219
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 220
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 221
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 222
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$2;->get$Lambda(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public readData(ILandroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .locals 10
    .param p1, "sampleQueueIndex"    # I
    .param p2, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p3, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p4, "requireFormat"    # Z

    .line 476
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, -0x3

    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "discardToMediaChunkIndex":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_1
    goto :goto_1

    .line 483
    :cond_2
    nop

    .line 487
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Util;->removeRange(Ljava/util/List;II)V

    .line 488
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    .line 489
    .local v1, "currentChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    iget-object v9, v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 490
    .local v9, "trackFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v9, v2}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 491
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v5, v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    goto :goto_2

    .line 490
    :cond_3
    nop

    .line 495
    :goto_2
    iput-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_3

    .line 481
    .end local v0    # "discardToMediaChunkIndex":I
    .end local v1    # "currentChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    .end local v9    # "trackFormat":Landroidx/media2/exoplayer/external/Format;
    :cond_4
    nop

    .line 498
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v1, v0, p1

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 499
    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    .line 501
    .local v0, "result":I
    const/4 v1, -0x5

    if-ne v0, v1, :cond_a

    .line 502
    iget-object v1, p2, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 503
    .local v1, "format":Landroidx/media2/exoplayer/external/Format;
    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    if-ne p1, v2, :cond_7

    .line 505
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->peekSourceId()I

    move-result v2

    .line 506
    .local v2, "chunkUid":I
    const/4 v3, 0x0

    .line 507
    .local v3, "chunkIndex":I
    :goto_4
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uid:I

    if-eq v4, v2, :cond_5

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 507
    :cond_5
    nop

    .line 511
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 512
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_5

    .line 513
    :cond_6
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    :goto_5
    nop

    .line 514
    .local v4, "trackFormat":Landroidx/media2/exoplayer/external/Format;
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/Format;->copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    goto :goto_6

    .line 503
    .end local v2    # "chunkUid":I
    .end local v3    # "chunkIndex":I
    .end local v4    # "trackFormat":Landroidx/media2/exoplayer/external/Format;
    :cond_7
    nop

    .line 516
    :goto_6
    iget-object v2, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_9

    .line 517
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 518
    .local v2, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    if-eqz v2, :cond_8

    .line 519
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/Format;->copyWithDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    goto :goto_7

    .line 518
    :cond_8
    goto :goto_7

    .line 516
    .end local v2    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_9
    nop

    .line 522
    :goto_7
    iput-object v1, p2, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    goto :goto_8

    .line 501
    .end local v1    # "format":Landroidx/media2/exoplayer/external/Format;
    :cond_a
    nop

    .line 524
    :goto_8
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .line 640
    return-void
.end method

.method public release()V
    .locals 4

    .line 437
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 441
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    .line 440
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 437
    :cond_1
    nop

    .line 444
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    .line 445
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->released:Z

    .line 447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    return-void
.end method

.method public seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 864
    return-void
.end method

.method public seekToUs(JZ)Z
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "forceReset"    # Z

    .line 412
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 413
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 415
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 416
    return v1

    .line 420
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    return v2

    .line 420
    :cond_1
    nop

    .line 425
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 426
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 427
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_0

    .line 431
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 433
    :goto_0
    return v1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJZ)Z
    .locals 22
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J
    .param p7, "forceReset"    # Z

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 278
    iget v14, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 280
    .local v14, "oldEnabledTrackGroupCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v15, 0x1

    if-ge v3, v4, :cond_2

    .line 281
    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    aget-boolean v4, p2, v3

    if-nez v4, :cond_1

    .line 282
    :cond_0
    iget v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    sub-int/2addr v4, v15

    iput v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 283
    aget-object v4, v2, v3

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->unbindSampleQueue()V

    .line 284
    aput-object v5, v2, v3

    goto :goto_1

    .line 281
    :cond_1
    nop

    .line 280
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    .end local v3    # "i":I
    :cond_2
    if-nez p7, :cond_5

    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v4, :cond_3

    if-nez v14, :cond_4

    goto :goto_2

    :cond_3
    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v4, v12, v6

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    .line 297
    .local v4, "seekRequired":Z
    :goto_3
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getTrackSelection()Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v11

    .line 298
    .local v11, "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    move-object v6, v11

    .line 300
    .local v6, "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    const/4 v7, 0x0

    move/from16 v16, v4

    move-object v10, v6

    .end local v4    # "seekRequired":Z
    .end local v6    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .local v7, "i":I
    .local v10, "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .local v16, "seekRequired":Z
    :goto_4
    array-length v4, v1

    if-ge v7, v4, :cond_c

    .line 301
    aget-object v4, v2, v7

    if-nez v4, :cond_b

    aget-object v4, v1, v7

    if-eqz v4, :cond_b

    .line 302
    iget v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    add-int/2addr v4, v15

    iput v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 303
    aget-object v4, v1, v7

    .line 304
    .local v4, "selection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v6

    .line 305
    .local v6, "trackGroupIndex":I
    iget v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v6, v8, :cond_6

    .line 306
    move-object v10, v4

    .line 307
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v8, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->selectTracks(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V

    goto :goto_5

    .line 305
    :cond_6
    nop

    .line 309
    :goto_5
    new-instance v8, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-direct {v8, v0, v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v8, v2, v7

    .line 310
    aput-boolean v15, p4, v7

    .line 311
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-eqz v8, :cond_7

    .line 312
    aget-object v8, v2, v7

    check-cast v8, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->bindSampleQueue()V

    goto :goto_6

    .line 311
    :cond_7
    nop

    .line 315
    :goto_6
    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v8, :cond_a

    if-nez v16, :cond_a

    .line 316
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    .line 317
    .local v8, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 322
    invoke-virtual {v8, v12, v13, v15, v15}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v9

    const/4 v3, -0x1

    if-ne v9, v3, :cond_9

    .line 323
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_8

    :cond_8
    goto :goto_7

    .line 322
    :cond_9
    nop

    .line 323
    :goto_7
    const/4 v3, 0x0

    :goto_8
    move/from16 v16, v3

    goto :goto_9

    .line 315
    .end local v8    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    :cond_a
    goto :goto_9

    .line 301
    .end local v4    # "selection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v6    # "trackGroupIndex":I
    :cond_b
    nop

    .line 300
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 328
    .end local v7    # "i":I
    :cond_c
    iget v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v3, :cond_10

    .line 329
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->reset()V

    .line 330
    iput-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 331
    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 332
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 334
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v3, :cond_e

    .line 336
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_d

    aget-object v6, v3, v5

    .line 337
    .local v6, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    .line 336
    .end local v6    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_d
    goto :goto_b

    .line 334
    :cond_e
    nop

    .line 340
    :goto_b
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_c

    .line 342
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 388
    :goto_c
    move/from16 v3, p7

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    goto/16 :goto_13

    .line 345
    :cond_10
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 346
    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 349
    const/16 v17, 0x0

    .line 350
    .local v17, "primarySampleQueueDirty":Z
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez v3, :cond_13

    .line 351
    const-wide/16 v3, 0x0

    cmp-long v5, v12, v3

    if-gez v5, :cond_11

    neg-long v3, v12

    nop

    :cond_11
    move-wide v6, v3

    .line 352
    .local v6, "bufferedDurationUs":J
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v8

    .line 353
    .local v8, "lastMediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    .line 354
    invoke-virtual {v3, v8, v12, v13}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->createMediaChunkIterators(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;J)[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    move-result-object v18

    .line 355
    .local v18, "mediaChunkIterators":[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    move-object v3, v10

    move-wide/from16 v4, p5

    move-object v15, v8

    move-object/from16 v21, v9

    .end local v8    # "lastMediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    .local v15, "lastMediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    move-wide/from16 v8, v19

    move-object/from16 v19, v10

    .end local v10    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .local v19, "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    move-object/from16 v10, v21

    move-object/from16 v20, v11

    .end local v11    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .local v20, "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    move-object/from16 v11, v18

    invoke-interface/range {v3 .. v11}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V

    .line 361
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    iget-object v4, v15, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v3

    .line 362
    .local v3, "chunkIndex":I
    invoke-interface/range {v19 .. v19}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v4

    if-eq v4, v3, :cond_12

    .line 365
    const/16 v17, 0x1

    goto :goto_d

    .line 362
    :cond_12
    nop

    .line 367
    .end local v3    # "chunkIndex":I
    .end local v6    # "bufferedDurationUs":J
    .end local v15    # "lastMediaChunk":Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    .end local v18    # "mediaChunkIterators":[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    :goto_d
    goto :goto_e

    .line 369
    .end local v19    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v20    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v10    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v11    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :cond_13
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .end local v10    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v11    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v19    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v20    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    const/16 v17, 0x1

    .line 371
    :goto_e
    if-eqz v17, :cond_14

    .line 372
    const/4 v3, 0x1

    .line 373
    .end local p7    # "forceReset":Z
    .local v3, "forceReset":Z
    const/4 v4, 0x1

    .line 374
    .end local v16    # "seekRequired":Z
    .local v4, "seekRequired":Z
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    move/from16 v16, v4

    goto :goto_10

    .line 371
    .end local v3    # "forceReset":Z
    .end local v4    # "seekRequired":Z
    .restart local v16    # "seekRequired":Z
    .restart local p7    # "forceReset":Z
    :cond_14
    goto :goto_f

    .line 346
    .end local v17    # "primarySampleQueueDirty":Z
    .end local v19    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v20    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v10    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v11    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :cond_15
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .end local v10    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v11    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v19    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v20    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    goto :goto_f

    .line 345
    .end local v19    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v20    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v10    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v11    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :cond_16
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 377
    .end local v10    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v11    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v19    # "primaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v20    # "oldPrimaryTrackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_f
    move/from16 v3, p7

    .end local p7    # "forceReset":Z
    .restart local v3    # "forceReset":Z
    :goto_10
    if-eqz v16, :cond_19

    .line 378
    invoke-virtual {v0, v12, v13, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 380
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    array-length v5, v2

    if-ge v4, v5, :cond_18

    .line 381
    aget-object v5, v2, v4

    if-eqz v5, :cond_17

    .line 382
    const/4 v5, 0x1

    aput-boolean v5, p4, v4

    goto :goto_12

    .line 381
    :cond_17
    nop

    .line 380
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_18
    goto :goto_13

    .line 377
    .end local v4    # "i":I
    :cond_19
    nop

    .line 388
    :goto_13
    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->updateSampleStreams([Landroidx/media2/exoplayer/external/source/SampleStream;)V

    .line 389
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    .line 390
    return v16
.end method

.method public setIsTimestampMaster(Z)V
    .locals 1
    .param p1, "isTimestampMaster"    # Z

    .line 456
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    .line 457
    return-void
.end method

.method public setSampleOffsetUs(J)V
    .locals 4
    .param p1, "sampleOffsetUs"    # J

    .line 876
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 877
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 878
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 877
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method

.method public skipData(IJ)I
    .locals 5
    .param p1, "sampleQueueIndex"    # I
    .param p2, "positionUs"    # J

    .line 528
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 529
    return v1

    .line 532
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v0, v0, p1

    .line 533
    .local v0, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 534
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceToEnd()I

    move-result v1

    return v1

    .line 533
    :cond_1
    nop

    .line 536
    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v2

    .line 537
    .local v2, "skipCount":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .locals 7
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 789
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    .line 792
    .local v1, "trackCount":I
    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 793
    iget v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    if-eq v5, v2, :cond_2

    .line 794
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    if-eqz v2, :cond_1

    .line 795
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v2, v2, v5

    if-ne v2, p1, :cond_0

    .line 796
    aget-object v0, v0, v5

    goto :goto_0

    .line 797
    :cond_0
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object v0

    .line 795
    :goto_0
    return-object v0

    .line 799
    :cond_1
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 800
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v2, v5

    .line 801
    aget-object v0, v0, v5

    return-object v0

    .line 802
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_3

    .line 803
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object v0

    return-object v0

    .line 802
    :cond_3
    goto :goto_3

    .line 805
    :cond_4
    if-ne p2, v3, :cond_9

    .line 806
    iget v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    if-eq v5, v2, :cond_7

    .line 807
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    if-eqz v2, :cond_6

    .line 808
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v2, v2, v5

    if-ne v2, p1, :cond_5

    .line 809
    aget-object v0, v0, v5

    goto :goto_1

    .line 810
    :cond_5
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object v0

    .line 808
    :goto_1
    return-object v0

    .line 812
    :cond_6
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 813
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v2, v5

    .line 814
    aget-object v0, v0, v5

    return-object v0

    .line 815
    :cond_7
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_8

    .line 816
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object v0

    return-object v0

    .line 815
    :cond_8
    goto :goto_3

    .line 819
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_b

    .line 820
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_a

    .line 821
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v2, v0

    return-object v2

    .line 819
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 824
    .end local v0    # "i":I
    :cond_b
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_c

    .line 825
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object v0

    return-object v0

    .line 824
    :cond_c
    nop

    .line 828
    :goto_3
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    .line 829
    .local v0, "trackOutput":Landroidx/media2/exoplayer/external/source/SampleQueue;
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    invoke-virtual {v0, v5, v6}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 830
    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkUid:I

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->sourceId(I)V

    .line 831
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setUpstreamFormatChangeListener(Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 832
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v5, v1, 0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 833
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v2, v1

    .line 834
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 835
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aput-object v0, v2, v1

    .line 836
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    add-int/lit8 v5, v1, 0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 837
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    if-eq p2, v4, :cond_e

    if-ne p2, v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v5, 0x1

    :goto_5
    aput-boolean v5, v2, v1

    .line 839
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v5, v5, v1

    or-int/2addr v2, v5

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    .line 840
    if-ne p2, v4, :cond_f

    .line 841
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 842
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    goto :goto_6

    .line 843
    :cond_f
    if-ne p2, v3, :cond_10

    .line 844
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 845
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    goto :goto_6

    .line 843
    :cond_10
    nop

    .line 847
    :goto_6
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v2

    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    invoke-static {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v3

    if-le v2, v3, :cond_11

    .line 848
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    .line 849
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    goto :goto_7

    .line 847
    :cond_11
    nop

    .line 851
    :goto_7
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 852
    return-object v0
.end method

.method public unbindSampleQueue(I)V
    .locals 3
    .param p1, "trackGroupIndex"    # I

    .line 253
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v0, v0, p1

    .line 254
    .local v0, "sampleQueueIndex":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v1, v1, v0

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 255
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 256
    return-void
.end method
