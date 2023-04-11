.class public final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioSink;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$StartMediaTimeState;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field private static final AC3_BUFFER_MULTIPLICATION_FACTOR:I = 0x2

.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

.field private final audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

.field private audioSessionId:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

.field private auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

.field private avSyncHeader:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bytesUntilNextAvSync:I

.field private final channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

.field private configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

.field private drainingAudioProcessorIndex:I

.field private final enableConvertHighResIntPcmToFloat:Z

.field private framesPerEncodedSample:I

.field private handledEndOfStream:Z

.field private inputBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastFeedElapsedRealtimeMs:J

.field private listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

.field private final playbackParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private playbackParametersOffsetUs:J

.field private playbackParametersPositionUs:J

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private stoppedAudioTrack:Z

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private volume:F

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->enablePreV21AudioSessionWorkaround:Z

    .line 234
    sput-boolean v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;Z)V
    .locals 6
    .param p1, "audioCapabilities"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "audioProcessorChain"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;
    .param p3, "enableConvertHighResIntPcmToFloat"    # Z

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 342
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    .line 343
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->enableConvertHighResIntPcmToFloat:Z

    .line 344
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 345
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    new-instance v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;-><init>(Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    .line 346
    new-instance v0, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    .line 347
    new-instance v0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "toIntPcmAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/audio/AudioProcessor;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;

    new-instance v3, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    aput-object v3, v2, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 354
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->getAudioProcessors()[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 355
    new-array v2, v4, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 356
    new-array v1, v1, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    new-instance v2, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;-><init>()V

    aput-object v2, v1, v4

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 357
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    .line 358
    iput v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 359
    sget-object v1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 360
    iput v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 361
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;-><init>(IF)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 362
    sget-object v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 363
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 364
    new-array v1, v4, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 365
    new-array v1, v4, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 366
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 367
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 1
    .param p1, "audioCapabilities"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "audioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Z)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Z)V
    .locals 1
    .param p1, "audioCapabilities"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "audioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .param p3, "enableConvertHighResIntPcmToFloat"    # Z

    .line 318
    new-instance v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    invoke-direct {p0, p1, v0, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;Z)V

    .line 322
    return-void
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 58
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$1100(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 58
    invoke-static {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 58
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 58
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 58
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 58
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    return-object v0
.end method

.method private applySkipping(J)J
    .locals 3
    .param p1, "positionUs"    # J

    .line 1078
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    .line 1079
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 1078
    return-wide v0
.end method

.method private applySpeedup(J)J
    .locals 6
    .param p1, "positionUs"    # J

    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, "checkpoint":Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1052
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 1053
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    goto :goto_0

    .line 1052
    :cond_0
    goto :goto_1

    .line 1051
    :cond_1
    nop

    .line 1055
    :goto_1
    if-eqz v0, :cond_2

    .line 1057
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 1058
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 1059
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$500(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    goto :goto_2

    .line 1055
    :cond_2
    nop

    .line 1062
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iget v1, v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 1063
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    add-long/2addr v1, p1

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 1066
    :cond_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1067
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long v4, p1, v4

    .line 1068
    invoke-interface {v3, v4, v5}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1067
    return-wide v1

    .line 1072
    :cond_4
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long v3, p1, v3

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iget v5, v5, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 1073
    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1072
    return-wide v1
.end method

.method private drainAudioProcessorsToEndOfStream()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "audioProcessorNeedsEndOfStream":Z
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 810
    nop

    .line 811
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->processingEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, v1

    :goto_0
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 812
    const/4 v0, 0x1

    goto :goto_1

    .line 809
    :cond_1
    nop

    .line 814
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-ge v1, v5, :cond_4

    .line 815
    aget-object v1, v4, v1

    .line 816
    .local v1, "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    if-eqz v0, :cond_2

    .line 817
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->queueEndOfStream()V

    goto :goto_2

    .line 816
    :cond_2
    nop

    .line 819
    :goto_2
    invoke-direct {p0, v6, v7}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->processBuffers(J)V

    .line 820
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->isEnded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 821
    return v3

    .line 823
    :cond_3
    const/4 v0, 0x1

    .line 824
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    add-int/2addr v4, v8

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 825
    .end local v1    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    goto :goto_1

    .line 828
    :cond_4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_6

    .line 829
    invoke-direct {p0, v1, v6, v7}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 830
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_5

    .line 831
    return v3

    .line 830
    :cond_5
    goto :goto_3

    .line 828
    :cond_6
    nop

    .line 834
    :goto_3
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 835
    return v8
.end method

.method private flushAudioProcessors()V
    .locals 4

    .line 503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 504
    aget-object v1, v1, v0

    .line 505
    .local v1, "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->flush()V

    .line 506
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 503
    .end local v1    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static getChannelConfig(IZ)I
    .locals 2
    .param p0, "channelCount"    # I
    .param p1, "isInputPcm"    # Z

    .line 1108
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_3

    if-nez p1, :cond_3

    .line 1113
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 1114
    const/16 p0, 0x8

    goto :goto_1

    .line 1115
    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 1116
    :cond_2
    :goto_0
    const/4 p0, 0x6

    goto :goto_1

    .line 1108
    :cond_3
    nop

    .line 1122
    :goto_1
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_4

    const-string v0, "fugu"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 1123
    const/4 p0, 0x2

    goto :goto_2

    .line 1122
    :cond_4
    nop

    .line 1126
    :goto_2
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v0

    return v0
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1159
    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 1161
    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 1162
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    return v0

    .line 1163
    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 1164
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1165
    :cond_2
    const/16 v0, 0x11

    if-ne p0, v0, :cond_3

    .line 1166
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1167
    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5

    .line 1168
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1169
    .local v0, "syncframeOffset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 1170
    const/4 v1, 0x0

    goto :goto_0

    .line 1171
    :cond_4
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    .line 1169
    :goto_0
    return v1

    .line 1174
    .end local v0    # "syncframeOffset":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_6
    :goto_1
    nop

    .line 1160
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private static getMaximumEncodedRateBytesPerSecond(I)I
    .locals 1
    .param p0, "encoding"    # I

    .line 1130
    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1141
    :pswitch_0
    const v0, 0x225510

    return v0

    .line 1139
    :pswitch_1
    const v0, 0x2ee00

    return v0

    .line 1134
    :pswitch_2
    const v0, 0xbb800

    return v0

    .line 1132
    :pswitch_3
    const v0, 0x13880

    return v0

    .line 1136
    :cond_0
    const v0, 0x52080

    return v0

    .line 1143
    :cond_1
    const v0, 0x2ebae4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSubmittedFrames()J
    .locals 4

    .line 1087
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v0, :cond_0

    .line 1088
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 1089
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1087
    :goto_0
    return-wide v0
.end method

.method private getWrittenFrames()J
    .locals 4

    .line 1093
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v0, :cond_0

    .line 1094
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 1095
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 1093
    :goto_0
    return-wide v0
.end method

.method private initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 518
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 519
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 520
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->buildAudioTrack(ZLandroidx/media2/exoplayer/external/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 521
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 522
    .local v0, "audioSessionId":I
    sget-boolean v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v1, :cond_4

    .line 523
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_3

    .line 526
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 528
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    goto :goto_0

    .line 527
    :cond_0
    goto :goto_0

    .line 526
    :cond_1
    nop

    .line 530
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_2

    .line 531
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    goto :goto_1

    .line 530
    :cond_2
    goto :goto_1

    .line 523
    :cond_3
    goto :goto_1

    .line 522
    :cond_4
    nop

    .line 535
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v1, v0, :cond_6

    .line 536
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 537
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    if-eqz v1, :cond_5

    .line 538
    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;->onAudioSessionId(I)V

    goto :goto_2

    .line 537
    :cond_5
    goto :goto_2

    .line 535
    :cond_6
    nop

    .line 542
    :goto_2
    nop

    .line 543
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-eqz v1, :cond_7

    .line 544
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    goto :goto_3

    .line 545
    :cond_7
    sget-object v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    :goto_3
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 546
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 548
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v3, v3, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;III)V

    .line 553
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 555
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v1, v1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    if-eqz v1, :cond_8

    .line 556
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 557
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    goto :goto_4

    .line 555
    :cond_8
    nop

    .line 559
    :goto_4
    return-void
.end method

.method private static initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;
    .locals 13
    .param p0, "audioSessionId"    # I

    .line 1099
    const/16 v8, 0xfa0

    .line 1100
    .local v8, "sampleRate":I
    const/4 v9, 0x4

    .line 1101
    .local v9, "channelConfig":I
    const/4 v10, 0x2

    .line 1102
    .local v10, "encoding":I
    const/4 v11, 0x2

    .line 1103
    .local v11, "bufferSize":I
    new-instance v12, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v12
.end method

.method private isInitialized()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private playPendingData()V
    .locals 3

    .line 1232
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_0

    .line 1233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1234
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->handleEndOfStream(J)V

    .line 1235
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1236
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    goto :goto_0

    .line 1232
    :cond_0
    nop

    .line 1238
    :goto_0
    return-void
.end method

.method private processBuffers(J)V
    .locals 6
    .param p1, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v0, v0

    .line 713
    .local v0, "count":I
    move v1, v0

    .line 714
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_5

    .line 715
    if-lez v1, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 716
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_1
    nop

    .line 717
    .local v2, "input":Ljava/nio/ByteBuffer;
    if-ne v1, v0, :cond_2

    .line 718
    invoke-direct {p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 720
    :cond_2
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 721
    .local v3, "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    invoke-interface {v3, v2}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 722
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 723
    .local v4, "output":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v4, v5, v1

    .line 724
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 726
    add-int/lit8 v1, v1, 0x1

    .line 727
    goto :goto_0

    .line 724
    :cond_3
    nop

    .line 731
    .end local v3    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .end local v4    # "output":Ljava/nio/ByteBuffer;
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 733
    return-void

    .line 737
    :cond_4
    nop

    .end local v2    # "input":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, -0x1

    .line 738
    goto :goto_0

    .line 739
    :cond_5
    return-void
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .line 1034
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 1035
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1040
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1041
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1046
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;->start()V

    .line 1047
    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    .line 946
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 949
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 951
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    .line 953
    :goto_0
    return-void
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1224
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1225
    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .line 1228
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1229
    return-void
.end method

.method private setupAudioProcessors()V
    .locals 6

    .line 487
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 488
    .local v0, "audioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v1, "newAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/audio/AudioProcessor;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 490
    .local v4, "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 493
    :cond_0
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->flush()V

    .line 489
    .end local v4    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 497
    .local v2, "count":I
    new-array v3, v2, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 498
    new-array v3, v2, [Ljava/nio/ByteBuffer;

    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 499
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flushAudioProcessors()V

    .line 500
    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 743
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 747
    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    goto :goto_3

    .line 749
    :cond_2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 750
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ge v0, v2, :cond_5

    .line 751
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 752
    .local v0, "bytesRemaining":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    if-eqz v4, :cond_4

    array-length v4, v4

    if-ge v4, v0, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    .line 753
    :cond_4
    :goto_1
    new-array v4, v0, [B

    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 755
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 756
    .local v4, "originalPosition":I
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 757
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 758
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    goto :goto_3

    .line 750
    .end local v0    # "bytesRemaining":I
    .end local v4    # "originalPosition":I
    :cond_5
    nop

    .line 761
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 762
    .restart local v0    # "bytesRemaining":I
    const/4 v4, 0x0

    .line 763
    .local v4, "bytesWritten":I
    sget v5, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ge v5, v2, :cond_8

    .line 765
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getAvailableBufferSize(J)I

    move-result v1

    .line 766
    .local v1, "bytesToWrite":I
    if-lez v1, :cond_7

    .line 767
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 768
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    invoke-virtual {v2, v3, v5, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v4

    .line 769
    if-lez v4, :cond_6

    .line 770
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 771
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    .line 769
    :cond_6
    goto :goto_4

    .line 766
    :cond_7
    nop

    .line 774
    .end local v1    # "bytesToWrite":I
    :goto_4
    goto :goto_6

    :cond_8
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v2, :cond_a

    .line 775
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v5

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 776
    iget-object v7, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v4

    goto :goto_6

    .line 779
    :cond_a
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1, p1, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 782
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    .line 784
    if-ltz v4, :cond_e

    .line 788
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v1, :cond_b

    .line 789
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v5, v4

    add-long/2addr v1, v5

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    goto :goto_7

    .line 788
    :cond_b
    nop

    .line 791
    :goto_7
    if-ne v4, v0, :cond_d

    .line 792
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-nez v1, :cond_c

    .line 793
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    goto :goto_8

    .line 792
    :cond_c
    nop

    .line 795
    :goto_8
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_9

    .line 791
    :cond_d
    nop

    .line 797
    :goto_9
    return-void

    .line 785
    :cond_e
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;

    invoke-direct {v1, v4}, Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;-><init>(I)V

    throw v1
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1180
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1191
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1192
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1193
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 1191
    :cond_0
    nop

    .line 1196
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long v3, v3, p4

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1200
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    goto :goto_1

    .line 1196
    :cond_1
    nop

    .line 1202
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1203
    .local v0, "avSyncHeaderBytesRemaining":I
    if-lez v0, :cond_4

    .line 1204
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 1205
    .local v2, "result":I
    if-gez v2, :cond_2

    .line 1206
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1207
    return v2

    .line 1209
    :cond_2
    if-ge v2, v0, :cond_3

    .line 1210
    return v1

    .line 1209
    :cond_3
    goto :goto_2

    .line 1203
    .end local v2    # "result":I
    :cond_4
    nop

    .line 1213
    :goto_2
    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 1214
    .restart local v2    # "result":I
    if-gez v2, :cond_5

    .line 1215
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1216
    return v2

    .line 1218
    :cond_5
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1219
    return v2
.end method


# virtual methods
.method public configure(IIII[III)V
    .locals 27
    .param p1, "inputEncoding"    # I
    .param p2, "inputChannelCount"    # I
    .param p3, "inputSampleRate"    # I
    .param p4, "specifiedBufferSize"    # I
    .param p5, "outputChannels"    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "trimStartFrames"    # I
    .param p7, "trimEndFrames"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 412
    move-object/from16 v1, p0

    move/from16 v2, p2

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    const/16 v0, 0x8

    if-ne v2, v0, :cond_1

    if-nez p5, :cond_1

    .line 415
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 416
    .end local p5    # "outputChannels":[I
    .local v0, "outputChannels":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 417
    aput v3, v0, v3

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v0

    goto :goto_1

    .line 412
    .end local v0    # "outputChannels":[I
    .end local v3    # "i":I
    .restart local p5    # "outputChannels":[I
    :cond_1
    nop

    .line 421
    move-object/from16 v3, p5

    .end local p5    # "outputChannels":[I
    .local v3, "outputChannels":[I
    :goto_1
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingLinearPcm(I)Z

    move-result v15

    .line 422
    .local v15, "isInputPcm":Z
    const/4 v0, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v15, :cond_2

    move/from16 v13, p1

    if-eq v13, v0, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move/from16 v13, p1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    move/from16 v18, v4

    .line 423
    .local v18, "processingEnabled":Z
    move/from16 v4, p3

    .line 424
    .local v4, "sampleRate":I
    move/from16 v5, p2

    .line 425
    .local v5, "channelCount":I
    move/from16 v6, p1

    .line 426
    .local v6, "encoding":I
    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->enableConvertHighResIntPcmToFloat:Z

    if-eqz v7, :cond_6

    .line 428
    invoke-virtual {v1, v2, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->supportsOutput(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 429
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    goto :goto_3

    .line 428
    :cond_5
    goto :goto_3

    .line 426
    :cond_6
    nop

    .line 429
    :goto_3
    const/4 v0, 0x0

    :goto_4
    move/from16 v19, v0

    .line 431
    .local v19, "shouldConvertHighResIntPcmToFloat":Z
    if-eqz v19, :cond_7

    .line 432
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    goto :goto_5

    .line 433
    :cond_7
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    :goto_5
    move-object v12, v0

    .line 434
    .local v12, "availableAudioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    const/4 v0, 0x0

    .line 435
    .local v0, "flushAudioProcessors":Z
    if-eqz v18, :cond_a

    .line 436
    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    move/from16 v11, p6

    move/from16 v10, p7

    invoke-virtual {v7, v11, v10}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->setTrimFrameCount(II)V

    .line 437
    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    invoke-virtual {v7, v3}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 438
    array-length v7, v12

    move v8, v0

    const/4 v0, 0x0

    .end local v0    # "flushAudioProcessors":Z
    .local v8, "flushAudioProcessors":Z
    :goto_6
    if-ge v0, v7, :cond_9

    aget-object v9, v12, v0

    .line 440
    .local v9, "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    :try_start_0
    invoke-interface {v9, v4, v5, v6}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->configure(III)Z

    move-result v14
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v8, v14

    .line 443
    nop

    .line 444
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->isActive()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 445
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutputChannelCount()I

    move-result v5

    .line 446
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutputSampleRateHz()I

    move-result v4

    .line 447
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutputEncoding()I

    move-result v6

    goto :goto_7

    .line 444
    :cond_8
    nop

    .line 438
    .end local v9    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 441
    .restart local v9    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 442
    .local v0, "e":Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
    new-instance v7, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;

    invoke-direct {v7, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 438
    .end local v0    # "e":Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
    .end local v9    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    :cond_9
    move/from16 v20, v4

    move v0, v5

    move v9, v6

    move/from16 v21, v8

    goto :goto_8

    .line 435
    .end local v8    # "flushAudioProcessors":Z
    .local v0, "flushAudioProcessors":Z
    :cond_a
    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v21, v0

    move/from16 v20, v4

    move v0, v5

    move v9, v6

    .line 452
    .end local v4    # "sampleRate":I
    .end local v5    # "channelCount":I
    .end local v6    # "encoding":I
    .local v0, "channelCount":I
    .local v9, "encoding":I
    .local v20, "sampleRate":I
    .local v21, "flushAudioProcessors":Z
    :goto_8
    invoke-static {v0, v15}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getChannelConfig(IZ)I

    move-result v22

    .line 453
    .local v22, "outputChannelConfig":I
    if-eqz v22, :cond_13

    .line 458
    const/4 v4, -0x1

    if-eqz v15, :cond_b

    invoke-static/range {p1 .. p2}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v5

    move v6, v5

    goto :goto_9

    :cond_b
    const/4 v6, -0x1

    .line 460
    .local v6, "inputPcmFrameSize":I
    :goto_9
    if-eqz v15, :cond_c

    invoke-static {v9, v0}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v4

    move v8, v4

    goto :goto_a

    :cond_c
    const/4 v8, -0x1

    .line 461
    .local v8, "outputPcmFrameSize":I
    :goto_a
    if-eqz v18, :cond_d

    if-nez v19, :cond_d

    const/4 v14, 0x1

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    .line 462
    .local v14, "canApplyPlaybackParameters":Z
    :goto_b
    new-instance v23, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    move-object/from16 v4, v23

    move v5, v15

    move/from16 v7, p3

    move/from16 v24, v9

    .end local v9    # "encoding":I
    .local v24, "encoding":I
    move/from16 v9, v20

    move/from16 v10, v22

    move/from16 v11, v24

    move-object/from16 v25, v12

    .end local v12    # "availableAudioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .local v25, "availableAudioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    move/from16 v12, p4

    move/from16 v13, v18

    move/from16 v26, v15

    .end local v15    # "isInputPcm":Z
    .local v26, "isInputPcm":Z
    move-object/from16 v15, v25

    invoke-direct/range {v4 .. v15}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;-><init>(ZIIIIIIIZZ[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    .line 477
    .local v4, "pendingConfiguration":Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;
    if-nez v21, :cond_f

    iget-object v5, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v5, :cond_e

    goto :goto_c

    :cond_e
    goto :goto_d

    :cond_f
    :goto_c
    const/16 v16, 0x1

    :goto_d
    move/from16 v5, v16

    .line 478
    .local v5, "drainAudioProcessors":Z
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 479
    invoke-virtual {v4, v7}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;)Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v5, :cond_10

    goto :goto_e

    :cond_10
    goto :goto_f

    .line 480
    :cond_11
    :goto_e
    iput-object v4, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    goto :goto_10

    .line 478
    :cond_12
    nop

    .line 482
    :goto_f
    iput-object v4, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 484
    :goto_10
    return-void

    .line 454
    .end local v4    # "pendingConfiguration":Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;
    .end local v5    # "drainAudioProcessors":Z
    .end local v6    # "inputPcmFrameSize":I
    .end local v8    # "outputPcmFrameSize":I
    .end local v14    # "canApplyPlaybackParameters":Z
    .end local v24    # "encoding":I
    .end local v25    # "availableAudioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .end local v26    # "isInputPcm":Z
    .restart local v9    # "encoding":I
    .restart local v12    # "availableAudioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .restart local v15    # "isInputPcm":Z
    :cond_13
    move/from16 v24, v9

    move-object/from16 v25, v12

    move/from16 v26, v15

    .end local v9    # "encoding":I
    .end local v12    # "availableAudioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .end local v15    # "isInputPcm":Z
    .restart local v24    # "encoding":I
    .restart local v25    # "availableAudioProcessors":[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .restart local v26    # "isInputPcm":Z
    new-instance v4, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;

    const/16 v5, 0x26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unsupported channel count: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    return-void
.end method

.method public disableTunneling()V
    .locals 1

    .line 930
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    .line 932
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 933
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    goto :goto_0

    .line 930
    :cond_0
    nop

    .line 935
    :goto_0
    return-void
.end method

.method public enableTunnelingV21(I)V
    .locals 3
    .param p1, "tunnelingAudioSessionId"    # I

    .line 920
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 921
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 922
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    .line 923
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 924
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    .line 926
    :goto_2
    return-void
.end method

.method public flush()V
    .locals 5

    .line 965
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 967
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 968
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 969
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 970
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 971
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 972
    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 973
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    goto :goto_0

    .line 974
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 975
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    goto :goto_0

    .line 974
    :cond_1
    nop

    .line 977
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 978
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    .line 979
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 980
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->resetTrimmedFrameCount()V

    .line 981
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flushAudioProcessors()V

    .line 982
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 983
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 984
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 985
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    .line 986
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 987
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 988
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 989
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 990
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 991
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_1

    .line 990
    :cond_2
    nop

    .line 994
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 995
    .local v0, "toRelease":Landroid/media/AudioTrack;
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 996
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v1, :cond_3

    .line 997
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 998
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    goto :goto_2

    .line 996
    :cond_3
    nop

    .line 1000
    :goto_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->reset()V

    .line 1001
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1002
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1012
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;->start()V

    goto :goto_3

    .line 965
    .end local v0    # "toRelease":Landroid/media/AudioTrack;
    :cond_4
    nop

    .line 1014
    :goto_3
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .locals 6
    .param p1, "sourceEnded"    # Z

    .line 394
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 398
    .local v0, "positionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 399
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->applySpeedup(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->applySkipping(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    return-wide v2

    .line 394
    .end local v0    # "positionUs":J
    :cond_1
    :goto_0
    nop

    .line 395
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1

    .line 875
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 18
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 582
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 584
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    .line 585
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_2

    .line 587
    return v5

    .line 588
    :cond_2
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 589
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playPendingData()V

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 592
    return v5

    .line 594
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    goto :goto_2

    .line 597
    :cond_4
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 598
    iput-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 600
    :goto_2
    nop

    .line 601
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-eqz v4, :cond_5

    .line 602
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-interface {v4, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v4

    goto :goto_3

    .line 603
    :cond_5
    sget-object v4, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    :goto_3
    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 604
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setupAudioProcessors()V

    goto :goto_4

    .line 584
    :cond_6
    nop

    .line 607
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_8

    .line 608
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->initialize()V

    .line 609
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    if-eqz v4, :cond_7

    .line 610
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->play()V

    goto :goto_5

    .line 609
    :cond_7
    goto :goto_5

    .line 607
    :cond_8
    nop

    .line 614
    :goto_5
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->mayHandleBuffer(J)Z

    move-result v4

    if-nez v4, :cond_9

    .line 615
    return v5

    .line 618
    :cond_9
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_15

    .line 620
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_a

    .line 622
    return v6

    .line 625
    :cond_a
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-nez v4, :cond_c

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v4, :cond_c

    .line 627
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v4, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 628
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v4, :cond_b

    .line 633
    return v6

    .line 628
    :cond_b
    goto :goto_6

    .line 625
    :cond_c
    nop

    .line 637
    :goto_6
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_e

    .line 638
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_d

    .line 640
    return v5

    .line 642
    :cond_d
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 643
    .local v4, "newPlaybackParameters":Landroidx/media2/exoplayer/external/PlaybackParameters;
    iput-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 644
    iget-object v10, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-interface {v10, v4}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v4

    .line 646
    iget-object v10, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v15, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    .line 649
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iget-object v11, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 650
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v5

    const/16 v17, 0x0

    move-object v11, v15

    move-object v12, v4

    move-object v7, v15

    move-wide v15, v5

    invoke-direct/range {v11 .. v17}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;-><init>(Landroidx/media2/exoplayer/external/PlaybackParameters;JJLandroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    .line 646
    invoke-virtual {v10, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setupAudioProcessors()V

    goto :goto_7

    .line 637
    .end local v4    # "newPlaybackParameters":Landroidx/media2/exoplayer/external/PlaybackParameters;
    :cond_e
    nop

    .line 655
    :goto_7
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    if-nez v4, :cond_f

    .line 656
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 657
    const/4 v4, 0x1

    iput v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    goto :goto_9

    .line 660
    :cond_f
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 663
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v10

    iget-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->getTrimmedFrameCount()J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 662
    invoke-virtual {v6, v10, v11}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 664
    .local v4, "expectedPresentationTimeUs":J
    iget v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v7, 0x2

    const/4 v10, 0x1

    if-ne v6, v10, :cond_11

    sub-long v10, v4, v2

    .line 665
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v6, v10, v12

    if-lez v6, :cond_10

    .line 666
    const-string v6, "AudioTrack"

    const/16 v10, 0x50

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Discontinuity detected [expected "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", got "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iput v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    goto :goto_8

    .line 665
    :cond_10
    goto :goto_8

    .line 664
    :cond_11
    nop

    .line 670
    :goto_8
    iget v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    if-ne v6, v7, :cond_13

    .line 673
    sub-long v6, v2, v4

    .line 674
    .local v6, "adjustmentUs":J
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v10, v6

    iput-wide v10, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 675
    const/4 v10, 0x1

    iput v10, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 676
    iget-object v10, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    if-eqz v10, :cond_12

    cmp-long v11, v6, v8

    if-eqz v11, :cond_12

    .line 677
    invoke-interface {v10}, Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    goto :goto_9

    .line 676
    :cond_12
    goto :goto_9

    .line 670
    .end local v6    # "adjustmentUs":J
    :cond_13
    nop

    .line 682
    .end local v4    # "expectedPresentationTimeUs":J
    :goto_9
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v4, :cond_14

    .line 683
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_a

    .line 685
    :cond_14
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 688
    :goto_a
    iput-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 618
    :cond_15
    nop

    .line 691
    :goto_b
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->processingEnabled:Z

    if-eqz v4, :cond_16

    .line 692
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->processBuffers(J)V

    goto :goto_c

    .line 694
    :cond_16
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v4, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 697
    :goto_c
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_17

    .line 698
    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 699
    const/4 v4, 0x1

    return v4

    .line 702
    :cond_17
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->isStalled(J)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 703
    const-string v4, "AudioTrack"

    const-string v5, "Resetting stalled audio track"

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    .line 705
    const/4 v4, 0x1

    return v4

    .line 708
    :cond_18
    const/4 v4, 0x0

    return v4
.end method

.method public handleDiscontinuity()V
    .locals 2

    .line 573
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 574
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    goto :goto_0

    .line 573
    :cond_0
    nop

    .line 576
    :goto_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    .line 845
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 840
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public pause()V
    .locals 1

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    .line 958
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->pause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_0

    .line 958
    :cond_0
    nop

    .line 961
    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    .line 564
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->start()V

    .line 566
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0

    .line 564
    :cond_0
    nop

    .line 568
    :goto_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 801
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playPendingData()V

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    goto :goto_0

    .line 801
    :cond_0
    nop

    .line 805
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1018
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    .line 1019
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    .line 1020
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1021
    .local v4, "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->reset()V

    .line 1020
    .end local v4    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1024
    .restart local v4    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->reset()V

    .line 1023
    .end local v4    # "audioProcessor":Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1026
    :cond_1
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 1027
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    .line 1028
    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 880
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    return-void

    .line 883
    :cond_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 884
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_1

    .line 886
    return-void

    .line 888
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 890
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .line 894
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_0

    .line 895
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 896
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    goto :goto_0

    .line 894
    :cond_0
    nop

    .line 898
    :goto_0
    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V
    .locals 3
    .param p1, "auxEffectInfo"    # Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 902
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    return-void

    .line 905
    :cond_0
    iget v0, p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    .line 906
    .local v0, "effectId":I
    iget v1, p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    .line 907
    .local v1, "sendLevel":F
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 908
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    if-eq v2, v0, :cond_1

    .line 909
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    goto :goto_0

    .line 908
    :cond_1
    nop

    .line 911
    :goto_0
    if-eqz v0, :cond_2

    .line 912
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    goto :goto_1

    .line 911
    :cond_2
    goto :goto_1

    .line 907
    :cond_3
    nop

    .line 915
    :goto_1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 916
    return-void
.end method

.method public setListener(Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    .line 373
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    .line 374
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 850
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-nez v0, :cond_0

    .line 851
    sget-object v0, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 852
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object v0

    .line 850
    :cond_0
    nop

    .line 855
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    if-eqz v0, :cond_1

    .line 856
    goto :goto_0

    .line 857
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    .line 859
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    :goto_0
    nop

    .line 860
    .local v0, "lastSetPlaybackParameters":Landroidx/media2/exoplayer/external/PlaybackParameters;
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 861
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 864
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    goto :goto_1

    .line 867
    :cond_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    goto :goto_1

    .line 860
    :cond_4
    nop

    .line 870
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object v1
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 939
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 940
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    .line 941
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternal()V

    goto :goto_0

    .line 939
    :cond_0
    nop

    .line 943
    :goto_0
    return-void
.end method

.method public supportsOutput(II)Z
    .locals 4
    .param p1, "channelCount"    # I
    .param p2, "encoding"    # I

    .line 378
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1

    .line 385
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    if-eqz v0, :cond_6

    .line 386
    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 388
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getMaxChannelCount()I

    move-result v0

    if-gt p1, v0, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    .line 386
    :cond_4
    nop

    .line 388
    :goto_1
    goto :goto_3

    .line 386
    :cond_5
    goto :goto_2

    .line 385
    :cond_6
    nop

    .line 388
    :goto_2
    const/4 v1, 0x0

    .line 385
    :goto_3
    return v1
.end method
