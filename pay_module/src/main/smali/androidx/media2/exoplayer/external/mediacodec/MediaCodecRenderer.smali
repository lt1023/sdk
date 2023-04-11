.class public abstract Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.super Landroidx/media2/exoplayer/external/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$AdaptationWorkaroundMode;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DrainAction;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DrainState;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$ReconfigurationState;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$KeepCodecResult;,
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_MODE_ALWAYS:I = 0x2

.field private static final ADAPTATION_WORKAROUND_MODE_NEVER:I = 0x0

.field private static final ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION:I = 0x1

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field protected static final CODEC_OPERATING_RATE_UNSET:F = -1.0f

.field private static final DRAIN_ACTION_FLUSH:I = 0x1

.field private static final DRAIN_ACTION_NONE:I = 0x0

.field private static final DRAIN_ACTION_REINITIALIZE:I = 0x3

.field private static final DRAIN_ACTION_UPDATE_DRM_SESSION:I = 0x2

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final DRAIN_STATE_WAIT_END_OF_STREAM:I = 0x2

.field protected static final KEEP_CODEC_RESULT_NO:I = 0x0

.field protected static final KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION:I = 0x3

.field protected static final KEEP_CODEC_RESULT_YES_WITH_FLUSH:I = 0x1

.field protected static final KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION:I = 0x2

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final assumedMinimumCodecOperatingRate:F

.field private availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

.field private codec:Landroid/media/MediaCodec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecAdaptationWorkaroundMode:I

.field private codecDrainAction:I

.field private codecDrainState:I

.field private codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private codecFormat:Landroidx/media2/exoplayer/external/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagation:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecNeedsReconfigureWorkaround:Z

.field private codecOperatingRate:F

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private final decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

.field private final drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final enableDecoderFallback:Z

.field private final flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

.field private final formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

.field private final formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/TimedValueQueue<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputFormat:Landroidx/media2/exoplayer/external/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

.field private mediaCrypto:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaCryptoRequiresSecureDecoder:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputFormat:Landroidx/media2/exoplayer/external/Format;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

.field private preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderTimeLimitMs:J

.field private rendererOperatingRate:F

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForFirstSampleInFormat:Z

.field private waitingForFirstSyncSample:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 291
    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZF)V
    .locals 2
    .param p1, "trackType"    # I
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "enableDecoderFallback"    # Z
    .param p6, "assumedMinimumCodecOperatingRate"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;ZZF)V"
        }
    .end annotation

    .line 378
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/BaseRenderer;-><init>(I)V

    .line 379
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 380
    iput-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    .line 381
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    .line 382
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 383
    iput p6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 384
    new-instance v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 385
    invoke-static {}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 386
    new-instance v0, Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    .line 387
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 389
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 390
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 391
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 392
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 393
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 394
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    .line 395
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 396
    return-void
.end method

.method private codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1738
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_3

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T585"

    .line 1739
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-A510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-A520"

    .line 1740
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-J700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    :goto_0
    goto :goto_1

    .line 1739
    :cond_2
    nop

    .line 1741
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 1738
    :cond_3
    nop

    .line 1742
    :goto_2
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_9

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1743
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_6

    :cond_5
    :goto_3
    const-string v0, "flounder"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 1744
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "flounder_lte"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "grouper"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 1745
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "tilapia"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    goto :goto_6

    :cond_7
    :goto_4
    goto :goto_5

    .line 1744
    :cond_8
    nop

    .line 1746
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 1742
    :cond_9
    nop

    .line 1748
    :goto_6
    const/4 v0, 0x0

    return v0
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 1778
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1779
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 1778
    :cond_1
    nop

    .line 1779
    :goto_0
    const/4 v0, 0x0

    .line 1778
    :goto_1
    return v0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1816
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    :goto_0
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_6

    const-string v0, "hb2000"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    .line 1818
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "stvm8"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_3

    :cond_3
    :goto_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 1819
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 1820
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    .line 1819
    :cond_5
    nop

    .line 1820
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    .line 1816
    :cond_6
    nop

    .line 1820
    :goto_3
    const/4 v0, 0x0

    .line 1816
    :goto_4
    return v0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1835
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static codecNeedsEosPropagationWorkaround(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .locals 3
    .param p0, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 1795
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1796
    .local v0, "name":Ljava/lang/String;
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_2

    const-string v1, "OMX.rk.video_decoder.avc"

    .line 1797
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 1798
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1797
    :cond_1
    goto :goto_1

    .line 1796
    :cond_2
    nop

    .line 1798
    :goto_0
    const-string v1, "Amazon"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 1799
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AFTS"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v1, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1796
    :goto_2
    return v1
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1717
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_6

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_1

    const-string v0, "OMX.SEC.avc.dec"

    .line 1719
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_3

    .line 1717
    :cond_1
    nop

    .line 1719
    :goto_0
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_5

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1720
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1721
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    goto :goto_3

    .line 1720
    :cond_4
    goto :goto_2

    .line 1719
    :cond_5
    nop

    .line 1721
    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    .line 1717
    :cond_6
    nop

    .line 1721
    :goto_3
    const/4 v0, 0x1

    .line 1717
    :goto_4
    return v0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 1852
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_1

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1853
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 1852
    :cond_1
    nop

    .line 1853
    :goto_0
    const/4 v1, 0x0

    .line 1852
    :goto_1
    return v1
.end method

.method private static codecNeedsReconfigureWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1764
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private deviceNeedsDrmKeysToConfigureCodecWorkaround()Z
    .locals 2

    .line 1700
    const-string v0, "Amazon"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AFTM"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 1701
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AFTB"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 1702
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1701
    :cond_1
    nop

    .line 1702
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 1700
    :cond_2
    nop

    .line 1702
    :goto_1
    const/4 v0, 0x0

    .line 1700
    :goto_2
    return v0
.end method

.method private drainAndFlushCodec()V
    .locals 1

    .line 1366
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_0

    .line 1367
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1368
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    .line 1366
    :cond_0
    nop

    .line 1370
    :goto_0
    return-void
.end method

.method private drainAndReinitializeCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1400
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_0

    .line 1401
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1402
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    .line 1405
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    .line 1407
    :goto_0
    return-void
.end method

.method private drainAndUpdateCodecDrmSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1379
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1381
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1382
    return-void

    .line 1384
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_1

    .line 1385
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1386
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    .line 1389
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateDrmSessionOrReinitializeCodecV23()V

    .line 1391
    :goto_0
    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 17
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1415
    move-object/from16 v14, p0

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_a

    .line 1417
    iget-boolean v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_1

    .line 1419
    :try_start_0
    iget-object v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1420
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    .local v0, "outputIndex":I
    goto :goto_1

    .line 1421
    .end local v0    # "outputIndex":I
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1423
    iget-boolean v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_0

    .line 1425
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    goto :goto_0

    .line 1423
    :cond_0
    nop

    .line 1427
    :goto_0
    return v13

    .line 1417
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    nop

    .line 1430
    iget-object v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1431
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 1434
    .local v0, "outputIndex":I
    :goto_1
    if-gez v0, :cond_6

    .line 1435
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 1436
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputFormat()V

    .line 1437
    return v15

    .line 1438
    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 1439
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputBuffersChanged()V

    .line 1440
    return v15

    .line 1443
    :cond_3
    iget-boolean v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_4

    iget v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1445
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    goto :goto_2

    .line 1443
    :cond_5
    nop

    .line 1447
    :goto_2
    return v13

    .line 1451
    :cond_6
    iget-boolean v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_7

    .line 1452
    iput-boolean v13, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 1453
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1454
    return v15

    .line 1455
    :cond_7
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_8

    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 1458
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1459
    return v13

    .line 1455
    :cond_8
    nop

    .line 1462
    iput v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 1463
    invoke-direct {v14, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1466
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_9

    .line 1467
    iget-object v2, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1468
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 1466
    :cond_9
    nop

    .line 1470
    :goto_3
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v14, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer(J)Z

    move-result v1

    iput-boolean v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 1471
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)Landroidx/media2/exoplayer/external/Format;

    goto :goto_4

    .line 1415
    .end local v0    # "outputIndex":I
    :cond_a
    nop

    .line 1475
    :goto_4
    iget-boolean v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_c

    .line 1477
    :try_start_1
    iget-object v6, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v7, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v8, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    iget-object v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media2/exoplayer/external/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1478
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    const/16 v16, 0x0

    move-object v13, v0

    :try_start_2
    invoke-virtual/range {v1 .. v13}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1495
    .local v0, "processedOutputBuffer":Z
    goto :goto_7

    .line 1488
    .end local v0    # "processedOutputBuffer":Z
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/16 v16, 0x0

    .line 1489
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1490
    iget-boolean v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_b

    .line 1492
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    goto :goto_6

    .line 1490
    :cond_b
    nop

    .line 1494
    :goto_6
    return v16

    .line 1475
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_c
    const/16 v16, 0x0

    .line 1497
    iget-object v6, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v7, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v8, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    iget-object v13, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1498
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v13}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    .line 1510
    .local v0, "processedOutputBuffer":Z
    :goto_7
    if-eqz v0, :cond_f

    .line 1511
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1512
    iget-object v1, v14, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 1513
    .local v1, "isEndOfStream":Z
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 1514
    if-nez v1, :cond_e

    .line 1515
    return v15

    .line 1517
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    goto :goto_9

    .line 1510
    .end local v1    # "isEndOfStream":Z
    :cond_f
    nop

    .line 1520
    :goto_9
    return v16
.end method

.method private feedInputBuffer()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_d

    .line 976
    :cond_0
    iget v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_2

    .line 977
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 978
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_1

    .line 979
    return v1

    .line 981
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 982
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    goto :goto_0

    .line 976
    :cond_2
    nop

    .line 985
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 988
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 991
    :cond_3
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 992
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 993
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 995
    :goto_1
    iput v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 996
    return v1

    .line 999
    :cond_4
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_5

    .line 1000
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1001
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1002
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v5, 0x0

    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v6, v0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1003
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1004
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1005
    return v2

    .line 1009
    :cond_5
    const/4 v0, 0x0

    .line 1010
    .local v0, "adaptiveReconfigurationBytes":I
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v4, :cond_6

    .line 1012
    const/4 v4, -0x4

    goto :goto_4

    .line 1016
    :cond_6
    iget v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v4, v2, :cond_8

    .line 1017
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 1018
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1019
    .local v5, "data":[B
    iget-object v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1017
    .end local v5    # "data":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1021
    .end local v4    # "i":I
    :cond_7
    iput v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    goto :goto_3

    .line 1016
    :cond_8
    nop

    .line 1023
    :goto_3
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1024
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v4

    .line 1027
    .local v4, "result":I
    :goto_4
    const/4 v5, -0x3

    if-ne v4, v5, :cond_9

    .line 1028
    return v1

    .line 1030
    :cond_9
    const/4 v5, -0x5

    if-ne v4, v5, :cond_b

    .line 1031
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v1, v3, :cond_a

    .line 1034
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 1035
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    goto :goto_5

    .line 1031
    :cond_a
    nop

    .line 1037
    :goto_5
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    .line 1038
    return v2

    .line 1042
    :cond_b
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1043
    iget v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v5, v3, :cond_c

    .line 1047
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 1048
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    goto :goto_6

    .line 1043
    :cond_c
    nop

    .line 1050
    :goto_6
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 1051
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v3, :cond_d

    .line 1052
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1053
    return v1

    .line 1056
    :cond_d
    :try_start_0
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v3, :cond_e

    goto :goto_7

    .line 1059
    :cond_e
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1060
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1061
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_7
    nop

    .line 1066
    return v1

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 1068
    .end local v1    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_f
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1069
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 1070
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v1, v3, :cond_10

    .line 1073
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    goto :goto_8

    .line 1070
    :cond_10
    nop

    .line 1075
    :goto_8
    return v2

    .line 1068
    :cond_11
    nop

    .line 1077
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    .line 1078
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v3

    .line 1079
    .local v3, "bufferEncrypted":Z
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldWaitForKeys(Z)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 1080
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v5, :cond_12

    .line 1081
    return v1

    .line 1083
    :cond_12
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v5, :cond_14

    if-nez v3, :cond_14

    .line 1084
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 1085
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-nez v5, :cond_13

    .line 1086
    return v2

    .line 1088
    :cond_13
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    goto :goto_9

    .line 1083
    :cond_14
    nop

    .line 1091
    :goto_9
    :try_start_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    .line 1092
    .local v5, "presentationTimeUs":J
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1093
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1092
    :cond_15
    nop

    .line 1095
    :goto_a
    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v7, :cond_16

    .line 1096
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v7, v5, v6, v8}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 1097
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    goto :goto_b

    .line 1095
    :cond_16
    nop

    .line 1100
    :goto_b
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->flip()V

    .line 1101
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    .line 1103
    if-eqz v3, :cond_17

    .line 1104
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-static {v7, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getFrameworkCryptoInfo(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v10

    .line 1106
    .local v10, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v8, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-wide v11, v5

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 1107
    .end local v10    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    goto :goto_c

    .line 1108
    :cond_17
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v8, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v9, 0x0

    iget-object v10, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    const/4 v13, 0x0

    move-wide v11, v5

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1110
    :goto_c
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1111
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1112
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1113
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v7, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v7, v2

    iput v7, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->inputBufferCount:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1116
    .end local v5    # "presentationTimeUs":J
    nop

    .line 1117
    return v2

    .line 1114
    :catch_1
    move-exception v1

    .line 1115
    .restart local v1    # "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 972
    .end local v0    # "adaptiveReconfigurationBytes":I
    .end local v1    # "e":Landroid/media/MediaCodec$CryptoException;
    .end local v3    # "bufferEncrypted":Z
    .end local v4    # "result":I
    :cond_18
    :goto_d
    nop

    .line 973
    return v1
.end method

.method private getAvailableCodecInfos(Z)Ljava/util/List;
    .locals 6
    .param p1, "mediaCryptoRequiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 808
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 809
    .local v0, "codecInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 814
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    const/4 v3, 0x0

    .line 815
    invoke-virtual {p0, v1, v2, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 816
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    const-string v1, "MediaCodecRenderer"

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x63

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Drm session requires secure decoder for "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_0
    goto :goto_0

    .line 809
    :cond_1
    nop

    .line 826
    :goto_0
    return-object v0
.end method

.method private getCodecBuffers(Landroid/media/MediaCodec;)V
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;

    .line 906
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 907
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 908
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 906
    :cond_0
    nop

    .line 910
    :goto_0
    return-void
.end method

.method private static getFrameworkCryptoInfo(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4
    .param p0, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .param p1, "adaptiveReconfigurationBytes"    # I

    .line 1681
    iget-object v0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 1682
    .local v0, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_0

    .line 1683
    return-object v0

    .line 1688
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    .line 1689
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    goto :goto_0

    .line 1688
    :cond_1
    nop

    .line 1691
    :goto_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    .line 1692
    return-object v0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "inputIndex"    # I

    .line 920
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 921
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 923
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "outputIndex"    # I

    .line 928
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 929
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 931
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private hasOutputBuffer()Z
    .locals 1

    .line 936
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 18
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p2, "crypto"    # Landroid/media/MediaCrypto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 832
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v1, 0x0

    .line 833
    .local v1, "codec":Landroid/media/MediaCodec;
    iget-object v9, v8, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 836
    .local v9, "codecName":Ljava/lang/String;
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 837
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 838
    :cond_0
    iget v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    iget-object v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    invoke-virtual {v7, v0, v2, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    :goto_0
    nop

    .line 839
    .local v0, "codecOperatingRate":F
    iget v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 840
    const/high16 v0, -0x40800000    # -1.0f

    move v10, v0

    goto :goto_1

    .line 839
    :cond_1
    move v10, v0

    .line 843
    .end local v0    # "codecOperatingRate":F
    .local v10, "codecOperatingRate":F
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v11, v2

    .line 844
    .local v11, "codecInitializingTimestamp":J
    const-string v0, "createCodec:"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 845
    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v0

    .line 846
    .end local v1    # "codec":Landroid/media/MediaCodec;
    .local v13, "codec":Landroid/media/MediaCodec;
    :try_start_1
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 847
    const-string v0, "configureCodec"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 848
    iget-object v4, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v5, p2

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V

    .line 849
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 850
    const-string v0, "startCodec"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v13}, Landroid/media/MediaCodec;->start()V

    .line 852
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v14, v0

    .line 854
    .local v14, "codecInitializedTimestamp":J
    invoke-direct {v7, v13}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecBuffers(Landroid/media/MediaCodec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 861
    nop

    .line 863
    iput-object v13, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 864
    iput-object v8, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 865
    iput v10, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 866
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iput-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 867
    invoke-direct {v7, v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 868
    invoke-static {v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsReconfigureWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsReconfigureWorkaround:Z

    .line 869
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v9, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 870
    invoke-static {v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 871
    invoke-static {v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 872
    invoke-static {v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 873
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 874
    invoke-static {v9, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 875
    nop

    .line 876
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecNeedsEosPropagation()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 878
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 879
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 880
    nop

    .line 881
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    goto :goto_5

    .line 883
    :cond_5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    iput-wide v3, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 884
    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 885
    iput v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 886
    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 887
    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 888
    iput v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 889
    iput v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 890
    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 891
    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 892
    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 893
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    .line 895
    iget-object v0, v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v2, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderInitCount:I

    .line 896
    sub-long v16, v14, v11

    .line 897
    .local v16, "elapsed":J
    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v14

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;JJ)V

    .line 898
    return-void

    .line 855
    .end local v11    # "codecInitializingTimestamp":J
    .end local v14    # "codecInitializedTimestamp":J
    .end local v16    # "elapsed":J
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v13    # "codec":Landroid/media/MediaCodec;
    .restart local v1    # "codec":Landroid/media/MediaCodec;
    :catch_1
    move-exception v0

    move-object v13, v1

    .line 856
    .end local v1    # "codec":Landroid/media/MediaCodec;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13    # "codec":Landroid/media/MediaCodec;
    :goto_6
    if-eqz v13, :cond_6

    .line 857
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetCodecBuffers()V

    .line 858
    invoke-virtual {v13}, Landroid/media/MediaCodec;->release()V

    goto :goto_7

    .line 856
    :cond_6
    nop

    .line 860
    :goto_7
    throw v0
.end method

.method private maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .locals 7
    .param p1, "crypto"    # Landroid/media/MediaCrypto;
    .param p2, "mediaCryptoRequiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 748
    nop

    .line 749
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v0

    .line 750
    .local v0, "allAvailableCodecInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 751
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 753
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 754
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    :cond_1
    nop

    .line 756
    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v0    # "allAvailableCodecInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    goto :goto_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    new-instance v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    const v3, -0xc34e

    invoke-direct {v1, v2, v0, p2, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 746
    .end local v0    # "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    :cond_2
    nop

    .line 766
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 774
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    .line 775
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 776
    .local v0, "codecInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldInitCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 777
    return-void

    .line 780
    :cond_3
    :try_start_1
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->initCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 799
    goto :goto_4

    .line 781
    :catch_1
    move-exception v2

    .line 782
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MediaCodecRenderer"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to initialize decoder: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 786
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 787
    new-instance v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2, p2, v5}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 790
    .local v3, "exception":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v4, :cond_4

    .line 791
    iput-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_3

    .line 793
    :cond_4
    nop

    .line 794
    invoke-static {v4, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 796
    :goto_3
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 800
    .end local v0    # "codecInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "exception":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :goto_4
    goto :goto_2

    .line 797
    .restart local v0    # "codecInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "exception":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :cond_5
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw v1

    .line 802
    .end local v0    # "codecInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "exception":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :cond_6
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 803
    return-void

    .line 767
    :cond_7
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    const v3, -0xc34f

    invoke-direct {v0, v2, v1, p2, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v0

    return-void
.end method

.method private processEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1607
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    packed-switch v0, :pswitch_data_0

    .line 1619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 1620
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    goto :goto_0

    .line 1609
    :pswitch_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    .line 1610
    goto :goto_0

    .line 1612
    :pswitch_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateDrmSessionOrReinitializeCodecV23()V

    .line 1613
    goto :goto_0

    .line 1615
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    .line 1616
    nop

    .line 1623
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processOutputBuffersChanged()V
    .locals 2

    .line 1545
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1546
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 1545
    :cond_0
    nop

    .line 1548
    :goto_0
    return-void
.end method

.method private processOutputFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 1528
    .local v0, "format":Landroid/media/MediaFormat;
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "width"

    .line 1529
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    const-string v1, "height"

    .line 1530
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1532
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 1533
    return-void

    .line 1530
    :cond_0
    goto :goto_0

    .line 1529
    :cond_1
    goto :goto_0

    .line 1528
    :cond_2
    nop

    .line 1535
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_3

    .line 1536
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 1535
    :cond_3
    nop

    .line 1538
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 1539
    return-void
.end method

.method private readToFlagsOnlyBuffer(Z)Z
    .locals 3
    .param p1, "requireFormat"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 732
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 733
    .local v0, "result":I
    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne v0, v2, :cond_0

    .line 734
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    .line 735
    return v1

    .line 736
    :cond_0
    const/4 v2, -0x4

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 738
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    goto :goto_0

    .line 736
    :cond_1
    nop

    .line 740
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private reinitializeCodec()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1627
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 1628
    return-void
.end method

.method private releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media2/exoplayer/external/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 962
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_0

    .line 963
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    goto :goto_0

    .line 962
    :cond_0
    nop

    .line 965
    :goto_0
    return-void
.end method

.method private resetCodecBuffers()V
    .locals 2

    .line 913
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 915
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 913
    :cond_0
    nop

    .line 917
    :goto_0
    return-void
.end method

.method private resetInputBuffer()V
    .locals 2

    .line 940
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 941
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 942
    return-void
.end method

.method private resetOutputBuffer()V
    .locals 1

    .line 945
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 947
    return-void
.end method

.method private setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media2/exoplayer/external/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 956
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 957
    .local v0, "previous":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 958
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 959
    return-void
.end method

.method private setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media2/exoplayer/external/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 950
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 951
    .local v0, "previous":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 952
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 953
    return-void
.end method

.method private shouldContinueFeeding(J)Z
    .locals 5
    .param p1, "drainStartTimeMs"    # J

    .line 901
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 901
    :cond_1
    nop

    .line 902
    :goto_0
    const/4 v0, 0x1

    .line 901
    :goto_1
    return v0
.end method

.method private shouldSkipOutputBuffer(J)Z
    .locals 5
    .param p1, "presentationTimeUs"    # J

    .line 1669
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1670
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1671
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 1672
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1673
    const/4 v2, 0x1

    return v2

    .line 1670
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1676
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 4
    .param p1, "bufferEncrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getState()I

    move-result v0

    .line 1125
    .local v0, "drmSessionState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 1128
    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 1126
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 1121
    .end local v0    # "drmSessionState":I
    :cond_3
    :goto_0
    nop

    .line 1122
    return v1
.end method

.method private updateCodecOperatingRate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1341
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1342
    return-void

    .line 1345
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1346
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    .line 1347
    .local v0, "newCodecOperatingRate":F
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 1349
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    .line 1352
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    goto :goto_1

    .line 1353
    :cond_2
    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    .line 1357
    :cond_4
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1358
    .local v1, "codecParameters":Landroid/os/Bundle;
    const-string v2, "operating-rate"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1359
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 1360
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 1362
    .end local v1    # "codecParameters":Landroid/os/Bundle;
    :goto_1
    return-void
.end method

.method private updateDrmSessionOrReinitializeCodecV23()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1632
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;

    .line 1633
    .local v0, "sessionMediaCrypto":Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;
    if-nez v0, :cond_0

    .line 1640
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    .line 1641
    return-void

    .line 1643
    :cond_0
    sget-object v1, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1646
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    .line 1647
    return-void

    .line 1650
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1653
    return-void

    .line 1657
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->sessionId:[B

    invoke-virtual {v1, v2}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    nop

    .line 1661
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1662
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1663
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 1664
    return-void

    .line 1658
    :catch_0
    move-exception v1

    .line 1659
    .local v1, "e":Landroid/media/MediaCryptoException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method protected canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 1
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p3, "oldFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "newFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 1291
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public experimental_setRenderTimeLimitMs(J)V
    .locals 0
    .param p1, "renderTimeLimitMs"    # J

    .line 409
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 410
    return-void
.end method

.method protected final flushOrReinitializeCodec()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v0

    .line 683
    .local v0, "released":Z
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_0

    .line 683
    :cond_0
    nop

    .line 686
    :goto_0
    return v0
.end method

.method protected flushOrReleaseCodec()Z
    .locals 6

    .line 696
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 697
    return v1

    .line 699
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 706
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 707
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 708
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 709
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 710
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 711
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 712
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    .line 713
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 714
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 715
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 717
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 718
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 719
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 720
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 724
    nop

    .line 725
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 726
    return v1

    .line 699
    :cond_2
    :goto_0
    nop

    .line 702
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 703
    return v3
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .locals 1

    .line 549
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final getCodecInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 553
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 1

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
    .locals 1
    .param p1, "operatingRate"    # F
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "streamFormats"    # [Landroidx/media2/exoplayer/external/Format;

    .line 1332
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected abstract getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    .line 1315
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    .line 1296
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 5

    .line 1301
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-nez v0, :cond_4

    .line 1303
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1304
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1304
    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    .line 1303
    :cond_3
    nop

    .line 1306
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 1301
    :cond_4
    nop

    .line 1306
    :goto_1
    const/4 v0, 0x0

    .line 1301
    :goto_2
    return v0
.end method

.method protected final maybeInitCodec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 478
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 480
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 481
    .local v0, "mimeType":Ljava/lang/String;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v1, :cond_9

    .line 482
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 483
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;

    .line 484
    .local v1, "sessionMediaCrypto":Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;
    if-nez v1, :cond_2

    .line 485
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v2

    .line 486
    .local v2, "drmError":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    if-eqz v2, :cond_1

    .line 493
    .end local v2    # "drmError":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    goto :goto_2

    .line 491
    .restart local v2    # "drmError":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    :cond_1
    return-void

    .line 495
    .end local v2    # "drmError":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    :cond_2
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->uuid:Ljava/util/UUID;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->sessionId:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    nop

    .line 499
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->forceAllowInsecureDecoderComponents:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 501
    invoke-virtual {v2, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    .line 499
    :cond_4
    nop

    .line 501
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    goto :goto_2

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Landroid/media/MediaCryptoException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v3

    throw v3

    .line 482
    .end local v1    # "sessionMediaCrypto":Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;
    .end local v2    # "e":Landroid/media/MediaCryptoException;
    :cond_5
    nop

    .line 504
    :goto_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->deviceNeedsDrmKeysToConfigureCodecWorkaround()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 505
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getState()I

    move-result v1

    .line 506
    .local v1, "drmSessionState":I
    if-eq v1, v3, :cond_7

    .line 508
    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 510
    return-void

    .line 508
    :cond_6
    goto :goto_3

    .line 507
    :cond_7
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 504
    .end local v1    # "drmSessionState":I
    :cond_8
    goto :goto_3

    .line 481
    :cond_9
    nop

    .line 516
    :goto_3
    :try_start_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    nop

    .line 520
    return-void

    .line 517
    :catch_1
    move-exception v1

    .line 518
    .local v1, "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 473
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :cond_a
    :goto_4
    nop

    .line 475
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 1144
    return-void
.end method

.method protected onDisabled()V
    .locals 1

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 582
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    goto :goto_1

    .line 582
    :cond_1
    :goto_0
    nop

    .line 584
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onReset()V

    .line 588
    :goto_1
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 1
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 558
    new-instance v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 559
    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V
    .locals 7
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1154
    .local v0, "oldFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v1, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 1155
    .local v1, "newFormat":Landroidx/media2/exoplayer/external/Format;
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1156
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1158
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1159
    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    iget-object v5, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    :goto_0
    invoke-static {v3, v5}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 1160
    .local v3, "drmInitDataChanged":Z
    if-eqz v3, :cond_5

    .line 1161
    iget-object v5, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v5, :cond_4

    .line 1162
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    if-eqz v4, :cond_3

    .line 1166
    nop

    .line 1167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-interface {v4, v5, v6}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object v4

    .line 1168
    .local v4, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 1171
    :cond_2
    :goto_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-interface {v5, v4}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1173
    :goto_2
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1174
    .end local v4    # "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    goto :goto_3

    .line 1163
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Media requires a DrmSessionManager"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v4

    .line 1163
    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 1175
    :cond_4
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    goto :goto_3

    .line 1160
    :cond_5
    nop

    .line 1179
    :goto_3
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v4, :cond_6

    .line 1180
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 1181
    return-void

    .line 1187
    :cond_6
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v4, :cond_8

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    goto :goto_6

    :cond_8
    :goto_5
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v4, :cond_7

    :cond_9
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v4, :cond_7

    :cond_a
    sget v4, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_b

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v4, v5, :cond_b

    goto :goto_4

    .line 1194
    :goto_6
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1195
    return-void

    .line 1187
    :cond_b
    nop

    .line 1198
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v4, v5, v6, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1237
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1230
    :pswitch_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1231
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    .line 1232
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v2, v4, :cond_c

    .line 1233
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()V

    goto :goto_8

    .line 1232
    :cond_c
    goto :goto_8

    .line 1212
    :pswitch_1
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsReconfigureWorkaround:Z

    if-eqz v4, :cond_d

    .line 1213
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    goto :goto_8

    .line 1215
    :cond_d
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1216
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1217
    iget v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_f

    if-ne v4, v2, :cond_e

    iget v4, v1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget v5, v5, Landroidx/media2/exoplayer/external/Format;->width:I

    if-ne v4, v5, :cond_e

    iget v4, v1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget v5, v5, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v4, v5, :cond_e

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    nop

    :cond_f
    :goto_7
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1222
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1223
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    .line 1224
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v2, v4, :cond_10

    .line 1225
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()V

    goto :goto_8

    .line 1224
    :cond_10
    goto :goto_8

    .line 1203
    :pswitch_2
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1204
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    .line 1205
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v2, v4, :cond_11

    .line 1206
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()V

    goto :goto_8

    .line 1208
    :cond_11
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndFlushCodec()V

    .line 1210
    goto :goto_8

    .line 1200
    :pswitch_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1201
    nop

    .line 1239
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1253
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 564
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 565
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    .line 566
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->clear()V

    .line 567
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0
    .param p1, "presentationTimeUs"    # J

    .line 1275
    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .locals 0
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 1264
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 593
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 596
    nop

    .line 597
    return-void

    .line 595
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v1
.end method

.method protected onStarted()V
    .locals 0

    .line 635
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .line 640
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 4

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 601
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 602
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 603
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 604
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 605
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetCodecBuffers()V

    .line 606
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 607
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 608
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 610
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v3, v2, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderReleaseCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 613
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :try_start_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 616
    goto :goto_0

    .line 615
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 610
    :cond_0
    nop

    .line 619
    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 621
    :try_start_3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_1

    .line 622
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 621
    :cond_1
    nop

    .line 625
    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 628
    nop

    .line 629
    nop

    .line 630
    return-void

    .line 625
    :catchall_1
    move-exception v2

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2

    .line 619
    :catchall_2
    move-exception v2

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 621
    :try_start_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_2

    .line 622
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 621
    :cond_2
    nop

    .line 625
    :goto_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 628
    nop

    .line 627
    throw v2

    .line 625
    :catchall_3
    move-exception v2

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2
.end method

.method public render(JJ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 644
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    .line 646
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readToFlagsOnlyBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    return-void

    .line 648
    :cond_1
    nop

    .line 653
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 654
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 656
    .local v0, "drainStartTimeMs":J
    const-string v2, "drainAndFeed"

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 657
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 658
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldContinueFeeding(J)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 659
    :cond_3
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 660
    .end local v0    # "drainStartTimeMs":J
    goto :goto_2

    .line 661
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->skipSource(J)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readToFlagsOnlyBuffer(Z)Z

    .line 668
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->ensureUpdated()V

    .line 669
    return-void
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1599
    return-void
.end method

.method public final setOperatingRate(F)V
    .locals 2
    .param p1, "operatingRate"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 571
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    .line 572
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 574
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    goto :goto_0

    .line 574
    :cond_0
    goto :goto_0

    .line 572
    :cond_1
    nop

    .line 577
    :goto_0
    return-void
.end method

.method protected shouldInitCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .locals 1
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public final supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 420
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method protected abstract supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    .line 414
    const/16 v0, 0x8

    return v0
.end method

.method protected final updateOutputFormatForTime(J)Landroidx/media2/exoplayer/external/Format;
    .locals 1
    .param p1, "presentationTimeUs"    # J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 541
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/Format;

    .line 542
    .local v0, "format":Landroidx/media2/exoplayer/external/Format;
    if-eqz v0, :cond_0

    .line 543
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_0

    .line 542
    :cond_0
    nop

    .line 545
    :goto_0
    return-object v0
.end method
