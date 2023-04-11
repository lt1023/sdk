.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;
.implements Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/source/MediaPeriod;",
        "Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;",
        "Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L

.field private static final ICY_FORMAT:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private dataType:I

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private length:J

.field private final listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

.field private final loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final loader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private notifiedReadingStarted:Z

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private preparedState:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private released:Z

.field private sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

.field private sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private seenFirstTrackSelection:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 96
    const-string v0, "icy"

    const-string v1, "application/x-icy"

    .line 97
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media2/exoplayer/external/Format;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;[Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;Landroidx/media2/exoplayer/external/upstream/Allocator;Ljava/lang/String;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p3, "extractors"    # [Landroidx/media2/exoplayer/external/extractor/Extractor;
    .param p4, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p5, "eventDispatcher"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .param p6, "listener"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;
    .param p7, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p8, "customCacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "continueLoadingCheckIntervalBytes"    # I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    .line 170
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 171
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 172
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 173
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

    .line 174
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 175
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    .line 176
    int-to-long v0, p9

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 177
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v1, "Loader:ProgressiveMediaPeriod"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 178
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    invoke-direct {v0, p3}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;-><init>([Landroidx/media2/exoplayer/external/extractor/Extractor;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    .line 179
    new-instance v0, Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    .line 180
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$0;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$1;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 190
    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 191
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 192
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    .line 193
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    .line 195
    invoke-virtual {p5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    .line 196
    return-void
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 68
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object v0
.end method

.method static synthetic access$602(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 68
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method static synthetic access$700()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 68
    sget-object v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 68
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private configureRetry(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z
    .locals 7
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "currentExtractedSampleCount"    # I

    .line 779
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    if-eqz v0, :cond_1

    .line 780
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    goto :goto_0

    .line 779
    :cond_1
    nop

    .line 785
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 795
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 796
    return v1

    .line 785
    :cond_2
    nop

    .line 802
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 803
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 804
    iput v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 805
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v5, v0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v0, v1

    .line 806
    .local v6, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 805
    .end local v6    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 808
    :cond_3
    invoke-static {p1, v3, v4, v3, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$500(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 809
    return v2

    .line 779
    :cond_4
    nop

    .line 783
    :goto_2
    iput p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 784
    return v2
.end method

.method private copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V
    .locals 5
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 732
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 733
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    goto :goto_0

    .line 732
    :cond_0
    nop

    .line 735
    :goto_0
    return-void
.end method

.method private getExtractedSamplesCount()I
    .locals 6

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "extractedSamplesCount":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 841
    .local v4, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getWriteIndex()I

    move-result v5

    add-int/2addr v0, v5

    .line 840
    .end local v4    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 843
    :cond_0
    return v0
.end method

.method private getLargestQueuedTimestampUs()J
    .locals 8

    .line 847
    const-wide/high16 v0, -0x8000000000000000L

    .line 848
    .local v0, "largestQueuedTimestampUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 849
    .local v5, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    nop

    .line 850
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 849
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 848
    .end local v5    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 852
    :cond_0
    return-wide v0
.end method

.method private getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;
    .locals 1

    .line 728
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->preparedState:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    return-object v0
.end method

.method private isPendingReset()Z
    .locals 5

    .line 856
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

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

.method private maybeFinishPrepare()V
    .locals 15

    .line 677
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 678
    .local v0, "seekMap":Landroidx/media2/exoplayer/external/extractor/SeekMap;
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->released:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_c

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 681
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 682
    .local v5, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    if-nez v6, :cond_1

    .line 683
    return-void

    .line 682
    :cond_1
    nop

    .line 681
    .end local v5    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 686
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->close()Z

    .line 687
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    .line 688
    .local v1, "trackCount":I
    new-array v2, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 689
    .local v2, "trackArray":[Landroidx/media2/exoplayer/external/source/TrackGroup;
    new-array v4, v1, [Z

    .line 690
    .local v4, "trackIsAudioVideoFlags":[Z
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getDurationUs()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 691
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_a

    .line 692
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 693
    .local v7, "trackFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v8, v7, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 694
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v9

    .line 695
    .local v9, "isAudio":Z
    if-nez v9, :cond_4

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    .line 696
    .local v10, "isAudioVideo":Z
    :goto_3
    aput-boolean v10, v4, v5

    .line 697
    iget-boolean v11, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v11, v10

    iput-boolean v11, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    .line 698
    iget-object v11, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 699
    .local v11, "icyHeaders":Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    if-eqz v11, :cond_9

    .line 700
    if-nez v9, :cond_6

    iget-object v12, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    aget-object v12, v12, v5

    iget-boolean v12, v12, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_6

    .line 701
    :cond_6
    :goto_4
    iget-object v12, v7, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 702
    .local v12, "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    nop

    .line 704
    if-nez v12, :cond_7

    .line 705
    new-instance v13, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v14, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v11, v14, v3

    invoke-direct {v13, v14}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    goto :goto_5

    .line 706
    :cond_7
    new-array v13, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v11, v13, v3

    invoke-virtual {v12, v13}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntries([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v13

    .line 703
    :goto_5
    invoke-virtual {v7, v13}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 708
    .end local v12    # "metadata":Landroidx/media2/exoplayer/external/metadata/Metadata;
    :goto_6
    if-eqz v9, :cond_8

    iget v12, v7, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    iget v12, v11, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v12, v13, :cond_8

    .line 711
    iget v12, v11, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v7, v12}, Landroidx/media2/exoplayer/external/Format;->copyWithBitrate(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    goto :goto_7

    .line 708
    :cond_8
    goto :goto_7

    .line 699
    :cond_9
    nop

    .line 714
    :goto_7
    new-instance v12, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v6, v6, [Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v6, v3

    invoke-direct {v12, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v12, v2, v5

    .line 691
    .end local v7    # "trackFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "isAudio":Z
    .end local v10    # "isAudioVideo":Z
    .end local v11    # "icyHeaders":Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 716
    .end local v5    # "i":I
    :cond_a
    nop

    .line 717
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_b

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getDurationUs()J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v7, v9

    if-nez v3, :cond_b

    .line 718
    const/4 v3, 0x7

    goto :goto_8

    .line 717
    :cond_b
    nop

    .line 719
    const/4 v3, 0x1

    :goto_8
    iput v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    .line 720
    new-instance v3, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    new-instance v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v5, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    invoke-direct {v3, v0, v5, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekMap;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->preparedState:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    .line 722
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    .line 723
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v7

    invoke-interface {v3, v5, v6, v7}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 724
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v3, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 725
    return-void

    .line 678
    .end local v1    # "trackCount":I
    .end local v2    # "trackArray":[Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v4    # "trackIsAudioVideoFlags":[Z
    :cond_c
    :goto_9
    nop

    .line 679
    return-void
.end method

.method private maybeNotifyDownstreamFormat(I)V
    .locals 11
    .param p1, "track"    # I

    .line 487
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    .line 488
    .local v0, "preparedState":Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackNotifiedDownstreamFormats:[Z

    .line 489
    .local v1, "trackNotifiedDownstreamFormats":[Z
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 490
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 491
    .local v2, "trackFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 492
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 491
    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    .line 497
    const/4 v3, 0x1

    aput-boolean v3, v1, p1

    goto :goto_0

    .line 489
    .end local v2    # "trackFormat":Landroidx/media2/exoplayer/external/Format;
    :cond_0
    nop

    .line 499
    :goto_0
    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .locals 5
    .param p1, "track"    # I

    .line 502
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 503
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v1, :cond_2

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v1, v1, p1

    .line 505
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 509
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 510
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 511
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 512
    iput v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 513
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 514
    .local v4, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 513
    .end local v4    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 516
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 517
    return-void

    .line 503
    :cond_2
    nop

    .line 506
    :goto_1
    return-void
.end method

.method private prepareTrackOutput(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .locals 5
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 658
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    .line 659
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 660
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v2, v1

    return-object v2

    .line 659
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/source/SampleQueue;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    .line 665
    .local v1, "trackOutput":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v1, p0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setUpstreamFormatChangeListener(Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 667
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 668
    .local v2, "sampleQueueTrackIds":[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;
    aput-object p1, v2, v0

    .line 669
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 670
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 671
    .local v3, "sampleQueues":[Landroidx/media2/exoplayer/external/source/SampleQueue;
    aput-object v1, v3, v0

    .line 672
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    iput-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 673
    return-object v1
.end method

.method private seekInsideBufferUs([ZJ)Z
    .locals 7
    .param p1, "trackIsAudioVideoFlags"    # [Z
    .param p2, "positionUs"    # J

    .line 821
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    .line 822
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 823
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v3, v3, v1

    .line 824
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 825
    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v2, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 831
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v2, :cond_2

    aget-boolean v5, p1, v1

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v5, :cond_2

    .line 832
    :cond_1
    return v4

    .line 831
    :cond_2
    nop

    .line 822
    .end local v2    # "seekInsideQueue":Z
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method private startLoading()V
    .locals 21

    .line 738
    move-object/from16 v7, p0

    new-instance v8, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v4, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    iget-object v6, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/util/ConditionVariable;)V

    .line 741
    .local v0, "loadable":Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
    iget-boolean v1, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v1, :cond_1

    .line 742
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 743
    .local v1, "seekMap":Landroidx/media2/exoplayer/external/extractor/SeekMap;
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 744
    iget-wide v2, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v8, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    cmp-long v6, v8, v2

    if-ltz v6, :cond_0

    .line 745
    const/4 v2, 0x1

    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 746
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 747
    return-void

    .line 744
    :cond_0
    nop

    .line 749
    iget-wide v2, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 750
    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    move-result-object v2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;->first:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->position:J

    iget-wide v8, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 749
    invoke-static {v0, v2, v3, v8, v9}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$500(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 751
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    goto :goto_0

    .line 741
    .end local v1    # "seekMap":Landroidx/media2/exoplayer/external/extractor/SeekMap;
    :cond_1
    nop

    .line 753
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    iput v1, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 754
    iget-object v1, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v3, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    .line 756
    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 755
    invoke-virtual {v1, v0, v7, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v1

    .line 757
    .local v1, "elapsedRealtimeMs":J
    iget-object v8, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 758
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 764
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v15

    iget-wide v3, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 757
    move-wide/from16 v17, v3

    move-wide/from16 v19, v1

    invoke-virtual/range {v8 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    .line 767
    return-void
.end method

.method private suppressRead()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

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


# virtual methods
.method final bridge synthetic bridge$lambda$0$ProgressiveMediaPeriod()V
    .locals 0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method public continueLoading(J)Z
    .locals 2
    .param p1, "playbackPositionUs"    # J

    .line 336
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->open()Z

    move-result v0

    .line 340
    .local v0, "continuedLoading":Z
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->startLoading()V

    .line 342
    const/4 v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    nop

    .line 344
    :goto_0
    return v0

    .line 336
    .end local v0    # "continuedLoading":Z
    :cond_2
    :goto_1
    nop

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 319
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackEnabledStates:[Z

    .line 323
    .local v0, "trackEnabledStates":[Z
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    .line 324
    .local v1, "trackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 325
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardTo(JZZ)V

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public endTracks()V
    .locals 2

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    .line 633
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 10
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 430
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 431
    .local v0, "seekMap":Landroidx/media2/exoplayer/external/extractor/SeekMap;
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    const-wide/16 v1, 0x0

    return-wide v1

    .line 435
    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    move-result-object v1

    .line 436
    .local v1, "seekPoints":Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;->first:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v6, v2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;->second:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v8, v2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v9}, Landroidx/media2/exoplayer/external/util/Util;->resolveSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getBufferedPositionUs()J
    .locals 9

    .line 368
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 369
    .local v0, "trackIsAudioVideoFlags":[Z
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 370
    return-wide v2

    .line 371
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide v1

    .line 374
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    .line 375
    .local v4, "largestQueuedTimestampUs":J
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v1, :cond_4

    .line 377
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    .line 378
    .local v1, "trackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 379
    aget-boolean v7, v0, v6

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->isLastSampleQueued()Z

    move-result v7

    if-nez v7, :cond_2

    .line 380
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v7, v7, v6

    .line 381
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v7

    .line 380
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 379
    :cond_2
    nop

    .line 378
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    .line 375
    .end local v1    # "trackCount":I
    .end local v6    # "i":I
    :cond_4
    nop

    .line 385
    :goto_2
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    .line 386
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    goto :goto_3

    .line 385
    :cond_5
    nop

    .line 388
    :goto_3
    cmp-long v1, v4, v2

    if-nez v1, :cond_6

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    goto :goto_4

    .line 389
    :cond_6
    move-wide v1, v4

    .line 388
    :goto_4
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 349
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/MediaPeriod$$CC;->getStreamKeys$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 238
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method icyTrack()Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .locals 3

    .line 645
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method

.method isReady(I)Z
    .locals 1
    .param p1, "track"    # I

    .line 443
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->hasNextSample()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final synthetic lambda$new$0$ProgressiveMediaPeriod()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 185
    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    goto :goto_0

    .line 183
    :cond_0
    nop

    .line 187
    :goto_0
    return-void
.end method

.method maybeThrowError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError(I)V

    .line 448
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeThrowError()V

    .line 231
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    :goto_0
    nop

    .line 234
    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 20
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 557
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 558
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v2

    .line 559
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v3

    .line 560
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v4

    .line 566
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v10

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 570
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v18

    .line 557
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v19}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 571
    if-nez p6, :cond_2

    .line 572
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    .line 573
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 574
    .local v4, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 573
    .end local v4    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 576
    :cond_0
    iget v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-lez v1, :cond_1

    .line 577
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    goto :goto_1

    .line 576
    :cond_1
    goto :goto_1

    .line 571
    :cond_2
    nop

    .line 580
    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 67
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onLoadCanceled(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .locals 26
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .line 528
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    if-eqz v1, :cond_1

    .line 529
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v1

    .line 530
    .local v1, "isSeekable":Z
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    .line 531
    .local v2, "largestQueuedTimestampUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 532
    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v4, v2

    :goto_0
    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 533
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {v4, v5, v6, v1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    goto :goto_1

    .line 528
    .end local v1    # "isSeekable":Z
    .end local v2    # "largestQueuedTimestampUs":J
    :cond_1
    nop

    .line 535
    :goto_1
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 536
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v8

    .line 537
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v9

    .line 538
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 544
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    move-wide/from16 v18, v1

    .line 548
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v24

    .line 535
    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    invoke-virtual/range {v7 .. v25}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 549
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    .line 550
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 551
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 552
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 67
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onLoadCompleted(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 28
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 589
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    .line 591
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v2, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    .line 592
    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v1

    .line 593
    .local v1, "retryDelayMs":J
    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    .line 594
    sget-object v4, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-object/from16 v6, p1

    goto :goto_2

    .line 596
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v4

    .line 597
    .local v4, "extractedSamplesCount":I
    iget v5, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v4, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 599
    .local v5, "madeProgress":Z
    :goto_0
    move-object/from16 v6, p1

    invoke-direct {v0, v6, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->configureRetry(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 600
    invoke-static {v5, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v7

    goto :goto_1

    .line 601
    :cond_2
    sget-object v7, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    :goto_1
    move-object v4, v7

    .line 604
    .end local v5    # "madeProgress":Z
    .local v4, "loadErrorAction":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    :goto_2
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 605
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v8

    .line 606
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v9

    .line 607
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 613
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 617
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v24

    .line 619
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v19

    .line 604
    xor-int/lit8 v27, v19, 0x1

    move-wide/from16 v19, v14

    const/4 v3, 0x0

    move v14, v3

    const/4 v3, 0x0

    move-object v15, v3

    move-wide/from16 v18, v19

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-object/from16 v26, p6

    invoke-virtual/range {v7 .. v27}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 620
    return-object v4
.end method

.method public bridge synthetic onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 67
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onLoadError(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 215
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 216
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 215
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->release()V

    .line 219
    return-void
.end method

.method public onUpstreamFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 652
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 223
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 224
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->open()Z

    .line 225
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->startLoading()V

    .line 226
    return-void
.end method

.method readData(ILandroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .locals 9
    .param p1, "track"    # I
    .param p2, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .param p3, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p4, "formatRequired"    # Z

    .line 452
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    .line 453
    return v1

    .line 455
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 456
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 457
    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/SampleQueue;->read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    .line 459
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 460
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    goto :goto_0

    .line 459
    :cond_1
    nop

    .line 462
    :goto_0
    return v0
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 354
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifiedReadingStarted:Z

    goto :goto_0

    .line 354
    :cond_0
    nop

    .line 358
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_2

    .line 359
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 358
    :cond_2
    nop

    .line 360
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 361
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    .line 358
    :cond_3
    nop

    .line 363
    :goto_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .line 332
    return-void
.end method

.method public release()V
    .locals 4

    .line 199
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 203
    .local v3, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    .line 202
    .end local v3    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 199
    :cond_1
    nop

    .line 206
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->released:Z

    .line 210
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    .line 211
    return-void
.end method

.method public seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V
    .locals 3
    .param p1, "seekMap"    # Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 638
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 639
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    return-void
.end method

.method public seekToUs(J)J
    .locals 7
    .param p1, "positionUs"    # J

    .line 394
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    .line 395
    .local v0, "preparedState":Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 396
    .local v1, "seekMap":Landroidx/media2/exoplayer/external/extractor/SeekMap;
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 398
    .local v2, "trackIsAudioVideoFlags":[Z
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-wide v3, p1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide p1, v3

    .line 400
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 401
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 402
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 405
    return-wide p1

    .line 409
    :cond_1
    iget v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    .line 410
    invoke-direct {p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekInsideBufferUs([ZJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    return-wide p1

    .line 410
    :cond_2
    goto :goto_1

    .line 409
    :cond_3
    nop

    .line 415
    :goto_1
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 416
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 417
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 418
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 419
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_3

    .line 421
    :cond_4
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v6, v4, v3

    .line 422
    .local v6, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 421
    .end local v6    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 425
    :cond_5
    :goto_3
    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .locals 16
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v5

    .line 249
    .local v5, "preparedState":Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 250
    .local v6, "tracks":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    iget-object v7, v5, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackEnabledStates:[Z

    .line 251
    .local v7, "trackEnabledStates":[Z
    iget v8, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 253
    .local v8, "oldEnabledTrackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v9, v10, :cond_2

    .line 254
    aget-object v10, v2, v9

    if-eqz v10, :cond_1

    aget-object v10, v1, v9

    if-eqz v10, :cond_0

    aget-boolean v10, p2, v9

    if-nez v10, :cond_1

    .line 255
    :cond_0
    aget-object v10, v2, v9

    check-cast v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-static {v10}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;->access$000(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;)I

    move-result v10

    .line 256
    .local v10, "track":I
    aget-boolean v13, v7, v10

    invoke-static {v13}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 257
    iget v13, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v13, v12

    iput v13, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 258
    aput-boolean v11, v7, v10

    .line 259
    const/4 v11, 0x0

    aput-object v11, v2, v9

    goto :goto_1

    .line 254
    .end local v10    # "track":I
    :cond_1
    nop

    .line 253
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 264
    .end local v9    # "i":I
    :cond_2
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v9, :cond_3

    if-nez v8, :cond_4

    goto :goto_2

    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v13, v3, v9

    if-eqz v13, :cond_4

    :goto_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 266
    .local v9, "seekRequired":Z
    :goto_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v13, v1

    if-ge v10, v13, :cond_b

    .line 267
    aget-object v13, v2, v10

    if-nez v13, :cond_a

    aget-object v13, v1, v10

    if-eqz v13, :cond_a

    .line 268
    aget-object v13, v1, v10

    .line 269
    .local v13, "selection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v14

    if-ne v14, v12, :cond_5

    const/4 v14, 0x1

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    invoke-static {v14}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 270
    invoke-interface {v13, v11}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v14

    if-nez v14, :cond_6

    const/4 v14, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    invoke-static {v14}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 271
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v14

    .line 272
    .local v14, "track":I
    aget-boolean v15, v7, v14

    xor-int/2addr v15, v12

    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 273
    iget v15, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    add-int/2addr v15, v12

    iput v15, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 274
    aput-boolean v12, v7, v14

    .line 275
    new-instance v15, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v15, v0, v14}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;I)V

    aput-object v15, v2, v10

    .line 276
    aput-boolean v12, p4, v10

    .line 278
    if-nez v9, :cond_9

    .line 279
    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v15, v15, v14

    .line 280
    .local v15, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 285
    invoke-virtual {v15, v3, v4, v12, v12}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    .line 286
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_8

    :cond_7
    goto :goto_7

    .line 285
    :cond_8
    nop

    .line 286
    :goto_7
    const/4 v11, 0x0

    :goto_8
    move v9, v11

    goto :goto_9

    .line 278
    .end local v15    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    :cond_9
    goto :goto_9

    .line 267
    .end local v13    # "selection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v14    # "track":I
    :cond_a
    nop

    .line 266
    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_4

    .line 290
    .end local v10    # "i":I
    :cond_b
    iget v10, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v10, :cond_f

    .line 291
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 292
    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 293
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 295
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v12, v11

    :goto_a
    if-ge v10, v12, :cond_c

    aget-object v13, v11, v10

    .line 296
    .local v13, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    .line 295
    .end local v13    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 298
    :cond_c
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_e

    .line 300
    :cond_d
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v12, v11

    :goto_b
    if-ge v10, v12, :cond_e

    aget-object v13, v11, v10

    .line 301
    .restart local v13    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    .line 300
    .end local v13    # "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_e
    goto :goto_e

    .line 304
    :cond_f
    if-eqz v9, :cond_12

    .line 305
    invoke-virtual {v0, v3, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekToUs(J)J

    move-result-wide v3

    .line 307
    .end local p5    # "positionUs":J
    .local v3, "positionUs":J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_c
    array-length v11, v2

    if-ge v10, v11, :cond_11

    .line 308
    aget-object v11, v2, v10

    if-eqz v11, :cond_10

    .line 309
    const/4 v11, 0x1

    aput-boolean v11, p4, v10

    goto :goto_d

    .line 308
    :cond_10
    nop

    .line 307
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_11
    goto :goto_e

    .line 304
    .end local v3    # "positionUs":J
    .end local v10    # "i":I
    .restart local p5    # "positionUs":J
    :cond_12
    nop

    .line 313
    .end local p5    # "positionUs":J
    .restart local v3    # "positionUs":J
    :goto_e
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    .line 314
    return-wide v3
.end method

.method skipData(IJ)I
    .locals 4
    .param p1, "track"    # I
    .param p2, "positionUs"    # J

    .line 466
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x0

    return v0

    .line 469
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v0, v0, p1

    .line 472
    .local v0, "sampleQueue":Landroidx/media2/exoplayer/external/source/SampleQueue;
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v1

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 473
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceToEnd()I

    move-result v1

    goto :goto_0

    .line 472
    :cond_1
    nop

    .line 475
    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v1

    .line 476
    .local v1, "skipCount":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 477
    const/4 v1, 0x0

    goto :goto_0

    .line 476
    :cond_2
    nop

    .line 480
    :goto_0
    if-nez v1, :cond_3

    .line 481
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    goto :goto_1

    .line 480
    :cond_3
    nop

    .line 483
    :goto_1
    return v1
.end method

.method public track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 627
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method
