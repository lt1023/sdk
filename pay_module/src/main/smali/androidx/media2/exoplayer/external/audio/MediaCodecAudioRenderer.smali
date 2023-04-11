.class public Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;
.super Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/MediaClock;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_STREAM_CHANGE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MediaCodecAudioRenderer"


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

.field private channelCount:I

.field private codecMaxInputSize:I

.field private codecNeedsDiscardChannelsWorkaround:Z

.field private codecNeedsEosBufferTimestampWorkaround:Z

.field private final context:Landroid/content/Context;

.field private currentPositionUs:J

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

.field private lastInputTimeUs:J

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I

.field private pendingStreamChangeCount:I

.field private final pendingStreamChangeTimesUs:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Z)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .line 134
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            ")V"
        }
    .end annotation

    .line 185
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x0

    move-object v8, v0

    check-cast v8, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    const/4 v0, 0x0

    new-array v9, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    .line 193
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "audioCapabilities"    # Landroidx/media2/exoplayer/external/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "audioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Landroidx/media2/exoplayer/external/audio/AudioCapabilities;",
            "[",
            "Landroidx/media2/exoplayer/external/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .line 222
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v7, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct {v7, v8, v9}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioSink;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioSink;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "audioSink"    # Landroidx/media2/exoplayer/external/audio/AudioSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Landroidx/media2/exoplayer/external/audio/AudioSink;",
            ")V"
        }
    .end annotation

    .line 255
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    const/4 v1, 0x1

    const/4 v5, 0x0

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZF)V

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    .line 263
    iput-object p7, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    .line 264
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    .line 265
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    .line 266
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p5, p6}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    .line 267
    new-instance v0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$1;)V

    invoke-interface {p7, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setListener(Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;)V

    .line 268
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;)Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private static codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "codecName"    # Ljava/lang/String;

    .line 833
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "samsung"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "zeroflte"

    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "herolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "heroqlte"

    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 835
    :cond_1
    nop

    .line 836
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 834
    :cond_2
    goto :goto_1

    .line 833
    :cond_3
    nop

    .line 836
    :goto_1
    const/4 v0, 0x0

    .line 833
    :goto_2
    return v0
.end method

.method private static codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "codecName"    # Ljava/lang/String;

    .line 846
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    const-string v0, "OMX.SEC.mp3.dec"

    .line 847
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "samsung"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "baffin"

    .line 849
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "grand"

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "fortuna"

    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "gprimelte"

    .line 852
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "j2y18lte"

    .line 853
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "ms01"

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 853
    :cond_1
    goto :goto_0

    .line 852
    :cond_2
    goto :goto_0

    .line 851
    :cond_3
    goto :goto_0

    .line 850
    :cond_4
    goto :goto_0

    .line 849
    :cond_5
    nop

    .line 854
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 848
    :cond_6
    goto :goto_1

    .line 847
    :cond_7
    goto :goto_1

    .line 846
    :cond_8
    nop

    .line 854
    :goto_1
    const/4 v0, 0x0

    .line 846
    :goto_2
    return v0
.end method

.method private static deviceDoesntSupportOperatingRate()Z
    .locals 2

    .line 821
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    const-string v0, "ZTE B2017G"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AXON 7 mini"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 821
    :cond_2
    nop

    .line 822
    :goto_1
    const/4 v0, 0x0

    .line 821
    :goto_2
    return v0
.end method

.method private getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 736
    const-string v0, "OMX.google.raw.decoder"

    iget-object v1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 741
    :cond_1
    goto :goto_0

    .line 736
    :cond_2
    nop

    .line 745
    :goto_0
    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    return v0
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 804
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 805
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 806
    nop

    .line 807
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    .line 808
    move-wide v2, v0

    goto :goto_0

    .line 809
    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 810
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    goto :goto_1

    .line 805
    :cond_1
    nop

    .line 812
    :goto_1
    return-void
.end method


# virtual methods
.method protected allowPassthrough(ILjava/lang/String;)Z
    .locals 2
    .param p1, "channelCount"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getEncoding(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->supportsOutput(II)Z

    move-result v0

    return v0
.end method

.method protected areCodecConfigurationCompatible(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z
    .locals 2
    .param p1, "oldFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "newFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 760
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v0, v1, :cond_1

    .line 763
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 760
    :cond_1
    nop

    .line 763
    :goto_0
    const/4 v0, 0x0

    .line 760
    :goto_1
    return v0
.end method

.method protected canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p3, "oldFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "newFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 380
    invoke-direct {p0, p2, p4}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_3

    iget v0, p3, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez v0, :cond_3

    iget v0, p3, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-nez v0, :cond_3

    iget v0, p4, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez v0, :cond_3

    iget v0, p4, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, p3, p4, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const/4 v0, 0x3

    return v0

    .line 389
    :cond_1
    invoke-virtual {p0, p3, p4}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->areCodecConfigurationCompatible(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    return v0

    .line 392
    :cond_2
    return v2

    .line 380
    :cond_3
    :goto_0
    nop

    .line 385
    return v2
.end method

.method protected configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .locals 5
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "crypto"    # Landroid/media/MediaCrypto;
    .param p5, "codecOperatingRate"    # F

    .line 355
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 356
    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    .line 357
    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 358
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->passthrough:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 359
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "audio/raw"

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 360
    .local v0, "codecMimeType":Ljava/lang/String;
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 361
    invoke-virtual {p0, p3, v0, v1, p5}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getMediaFormat(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object v1

    .line 362
    .local v1, "mediaFormat":Landroid/media/MediaFormat;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, p4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 363
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v2, :cond_1

    .line 365
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 366
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "mime"

    iget-object v4, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_1
    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 370
    :goto_1
    return-void
.end method

.method protected getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)I
    .locals 6
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "streamFormats"    # [Landroidx/media2/exoplayer/external/Format;

    .line 712
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    .line 713
    .local v0, "maxInputSize":I
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 716
    return v0

    .line 718
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    .end local v0    # "maxInputSize":I
    .local v3, "maxInputSize":I
    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p3, v0

    .line 719
    .local v4, "streamFormat":Landroidx/media2/exoplayer/external/Format;
    invoke-virtual {p1, p2, v4, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    .line 719
    :cond_1
    nop

    .line 718
    .end local v4    # "streamFormat":Landroidx/media2/exoplayer/external/Format;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_2
    return v3
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
    .locals 6
    .param p1, "operatingRate"    # F
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "streamFormats"    # [Landroidx/media2/exoplayer/external/Format;

    .line 406
    const/4 v0, -0x1

    .line 407
    .local v0, "maxSampleRate":I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    aget-object v4, p3, v2

    .line 408
    .local v4, "streamFormat":Landroidx/media2/exoplayer/external/Format;
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    .line 409
    .local v5, "streamSampleRate":I
    if-eq v5, v3, :cond_0

    .line 410
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 409
    :cond_0
    nop

    .line 407
    .end local v4    # "streamFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v5    # "streamSampleRate":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    :cond_1
    if-ne v0, v3, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    int-to-float v1, v0

    mul-float v1, v1, p1

    :goto_2
    return v1
.end method

.method protected getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .locals 4
    .param p1, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "requiresSecureDecoder"    # Z
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

    .line 314
    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPassthrough(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 316
    .local v0, "passthroughDecoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    if-eqz v0, :cond_0

    .line 317
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 316
    :cond_0
    goto :goto_0

    .line 314
    .end local v0    # "passthroughDecoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    :cond_1
    nop

    .line 320
    :goto_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 321
    const/4 v1, 0x0

    invoke-interface {p1, v0, p3, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;

    move-result-object v0

    .line 324
    const-string v2, "audio/eac3-joc"

    iget-object v3, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "audio/eac3"

    .line 327
    invoke-interface {p1, v2, p3, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, "eac3DecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 324
    .end local v1    # "eac3DecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    :cond_2
    nop

    .line 331
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMediaClock()Landroidx/media2/exoplayer/external/util/MediaClock;
    .locals 0

    .line 398
    return-object p0
.end method

.method protected getMediaFormat(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 3
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "codecMimeType"    # Ljava/lang/String;
    .param p3, "codecMaxInputSize"    # I
    .param p4, "codecOperatingRate"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 780
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 782
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "channel-count"

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 784
    const-string v1, "sample-rate"

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 785
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 787
    const-string v1, "max-input-size"

    invoke-static {v0, v1, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 789
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 790
    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 791
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->deviceDoesntSupportOperatingRate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 791
    :cond_0
    goto :goto_0

    .line 789
    :cond_1
    nop

    .line 795
    :goto_0
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_2

    const-string v1, "audio/ac4"

    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    const-string v1, "ac4-is-sync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 795
    :cond_2
    nop

    .line 800
    :goto_1
    return-object v0
.end method

.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1

    .line 596
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 583
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 584
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    goto :goto_0

    .line 583
    :cond_0
    nop

    .line 586
    :goto_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 683
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 696
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 688
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 689
    .local v0, "audioAttributes":Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    .line 690
    goto :goto_0

    .line 685
    .end local v0    # "audioAttributes":Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setVolume(F)V

    .line 686
    goto :goto_0

    .line 692
    :cond_0
    move-object v0, p2

    check-cast v0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 693
    .local v0, "auxEffectInfo":Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V

    .line 694
    nop

    .line 699
    .end local v0    # "auxEffectInfo":Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 573
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 578
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isReady()Z

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

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .line 478
    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .locals 0

    .line 485
    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 493
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 419
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 420
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 550
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    .line 552
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 555
    :try_start_1
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 558
    nop

    .line 559
    nop

    .line 560
    return-void

    .line 557
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0

    .line 554
    :catchall_1
    move-exception v0

    .line 555
    :try_start_2
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 557
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 558
    nop

    .line 557
    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 497
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 498
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->enabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 499
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getConfiguration()Landroidx/media2/exoplayer/external/RendererConfiguration;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    .line 500
    .local v0, "tunnelingAudioSessionId":I
    if-eqz v0, :cond_0

    .line 501
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->enableTunnelingV21(I)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->disableTunneling()V

    .line 505
    :goto_0
    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V
    .locals 3
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 424
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    .line 425
    iget-object v0, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 426
    .local v0, "newFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 429
    const-string v1, "audio/raw"

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    goto :goto_0

    .line 430
    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 431
    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->channelCount:I

    .line 432
    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderDelay:I

    .line 433
    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    iput v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderPadding:I

    .line 434
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 13
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 442
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getEncoding(Ljava/lang/String;)I

    move-result v0

    .line 443
    .local v0, "encoding":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 445
    .end local v0    # "encoding":I
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 446
    .restart local v0    # "encoding":I
    move-object v1, p2

    .line 448
    .local v1, "format":Landroid/media/MediaFormat;
    :goto_0
    const-string v2, "channel-count"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 449
    .local v10, "channelCount":I
    const-string v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    .line 451
    .local v11, "sampleRate":I
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    if-ne v10, v2, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge v3, v2, :cond_2

    .line 452
    new-array v2, v3, [I

    .line 453
    .local v2, "channelMap":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge v3, v4, :cond_1

    .line 454
    aput v3, v2, v3

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v12, v2

    goto :goto_2

    .line 451
    .end local v2    # "channelMap":[I
    .end local v3    # "i":I
    :cond_2
    nop

    .line 457
    const/4 v2, 0x0

    move-object v12, v2

    .line 461
    .local v12, "channelMap":[I
    :goto_2
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    const/4 v6, 0x0

    iget v8, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderDelay:I

    iget v9, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderPadding:I

    move v3, v0

    move v4, v10

    move v5, v11

    move-object v7, v12

    invoke-interface/range {v2 .. v9}, Landroidx/media2/exoplayer/external/audio/AudioSink;->configure(IIII[III)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    nop

    .line 466
    return-void

    .line 463
    :catch_0
    move-exception v2

    .line 464
    .local v2, "e":Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v3

    throw v3

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 525
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 526
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->flush()V

    .line 527
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 529
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 530
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    .line 532
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 4
    .param p1, "presentationTimeUs"    # J
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 616
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleDiscontinuity()V

    .line 618
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    .line 619
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 616
    :cond_0
    nop

    .line 626
    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .locals 5
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 601
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 606
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    goto :goto_0

    .line 605
    :cond_0
    nop

    .line 608
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    goto :goto_1

    .line 601
    :cond_1
    nop

    .line 610
    :goto_1
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    .line 611
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 565
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->reset()V

    .line 568
    nop

    .line 569
    return-void

    .line 567
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->reset()V

    throw v0
.end method

.method protected onStarted()V
    .locals 1

    .line 536
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 537
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->play()V

    .line 538
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 542
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 543
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->pause()V

    .line 544
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 545
    return-void
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 5
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p2, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 509
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V

    .line 510
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 511
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 512
    const-string v2, "MediaCodecAudioRenderer"

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    const/16 v3, 0x43

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Too many stream changes, so dropping change at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    .line 519
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    aput-wide v2, v0, v1

    goto :goto_1

    .line 510
    :cond_1
    nop

    .line 521
    :goto_1
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferIndex"    # I
    .param p8, "bufferFlags"    # I
    .param p9, "bufferPresentationTimeUs"    # J
    .param p11, "shouldSkip"    # Z
    .param p12, "format"    # Landroidx/media2/exoplayer/external/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 640
    move-object v1, p0

    move-object v2, p5

    move/from16 v3, p7

    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v0, p9, v4

    if-nez v0, :cond_0

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 644
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    goto :goto_0

    .line 640
    :cond_0
    nop

    .line 647
    move-wide/from16 v4, p9

    .end local p9    # "bufferPresentationTimeUs":J
    .local v4, "bufferPresentationTimeUs":J
    :goto_0
    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {p5, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 650
    return v7

    .line 647
    :cond_1
    nop

    .line 653
    if-eqz p11, :cond_2

    .line 654
    invoke-virtual {p5, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 655
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v6, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v6, v7

    iput v6, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 656
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleDiscontinuity()V

    .line 657
    return v7

    .line 661
    :cond_2
    :try_start_0
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, p6

    :try_start_1
    invoke-interface {v0, p6, v4, v5}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    invoke-virtual {p5, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 663
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v6, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v6, v7

    iput v6, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 664
    return v7

    .line 668
    :cond_3
    nop

    .line 669
    return v6

    .line 666
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    move-object v8, p6

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v6

    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v6

    throw v6
.end method

.method protected renderToEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 675
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    nop

    .line 679
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 591
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method protected supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I
    .locals 9
    .param p1, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
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

    .line 274
    .local p2, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 275
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 276
    return v2

    .line 278
    :cond_0
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 279
    .local v1, "tunnelingSupport":I
    :goto_0
    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {p2, v3}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->supportsFormatDrm(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result v3

    .line 280
    .local v3, "supportsFormatDrm":Z
    const/4 v4, 0x4

    if-eqz v3, :cond_4

    iget v5, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 281
    invoke-virtual {p0, v5, v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPassthrough(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 282
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 283
    or-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v4

    return v2

    .line 282
    :cond_2
    goto :goto_1

    .line 281
    :cond_3
    goto :goto_1

    .line 280
    :cond_4
    nop

    .line 285
    :goto_1
    const-string v5, "audio/raw"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v7, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v8, p3, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    .line 286
    invoke-interface {v5, v7, v8}, Landroidx/media2/exoplayer/external/audio/AudioSink;->supportsOutput(II)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    goto :goto_3

    .line 285
    :cond_6
    nop

    .line 286
    :goto_2
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v7, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 287
    const/4 v8, 0x2

    invoke-interface {v5, v7, v8}, Landroidx/media2/exoplayer/external/audio/AudioSink;->supportsOutput(II)Z

    move-result v5

    if-nez v5, :cond_7

    .line 289
    :goto_3
    return v6

    .line 291
    :cond_7
    nop

    .line 292
    invoke-virtual {p0, p1, p3, v2}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v5

    .line 293
    .local v5, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 294
    return v6

    .line 296
    :cond_8
    if-nez v3, :cond_9

    .line 297
    return v8

    .line 300
    :cond_9
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 301
    .local v2, "decoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    invoke-virtual {v2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v6

    .line 303
    .local v6, "isFormatSupported":Z
    if-eqz v6, :cond_a

    invoke-virtual {v2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 304
    const/16 v7, 0x10

    goto :goto_4

    .line 303
    :cond_a
    nop

    .line 305
    const/16 v7, 0x8

    :goto_4
    nop

    .line 306
    .local v7, "adaptiveSupport":I
    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x3

    .line 307
    .local v4, "formatSupport":I
    :goto_5
    or-int v8, v7, v1

    or-int/2addr v8, v4

    return v8
.end method
