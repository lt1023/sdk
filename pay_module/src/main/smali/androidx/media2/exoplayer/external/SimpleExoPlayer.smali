.class public Landroidx/media2/exoplayer/external/SimpleExoPlayer;
.super Landroidx/media2/exoplayer/external/BasePlayer;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/ExoPlayer;
.implements Landroidx/media2/exoplayer/external/Player$AudioComponent;
.implements Landroidx/media2/exoplayer/external/Player$VideoComponent;
.implements Landroidx/media2/exoplayer/external/Player$TextComponent;
.implements Landroidx/media2/exoplayer/external/Player$MetadataComponent;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;,
        Landroidx/media2/exoplayer/external/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private final analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

.field private audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

.field private final audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

.field private audioFormat:Landroidx/media2/exoplayer/external/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/audio/AudioListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private audioVolume:F

.field private final bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

.field private cameraMotionListener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

.field private currentCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private isPriorityTaskManagerRegistered:Z

.field private mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/metadata/MetadataOutput;",
            ">;"
        }
    .end annotation
.end field

.field private ownsSurface:Z

.field private final player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

.field private priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final renderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surfaceWidth:I

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/text/TextOutput;",
            ">;"
        }
    .end annotation
.end field

.field private textureView:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFormat:Landroidx/media2/exoplayer/external/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFrameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/video/VideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p3, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p4, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p5    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p7, "analyticsCollectorFactory"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
    .param p8, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 179
    .local p5, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    sget-object v8, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V

    .line 189
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p3, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p4, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p5    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p7, "analyticsCollectorFactory"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
    .param p8, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;
    .param p9, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;",
            "Landroidx/media2/exoplayer/external/util/Clock;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 215
    .local p5, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    move-object v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/BasePlayer;-><init>()V

    .line 216
    iput-object v9, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 217
    new-instance v1, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;-><init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/SimpleExoPlayer$1;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    .line 218
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 219
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 220
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 221
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 222
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 223
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 224
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v10, p9

    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 225
    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    .line 226
    move-object v1, p2

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/RenderersFactory;->createRenderers(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/text/TextOutput;Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)[Landroidx/media2/exoplayer/external/Renderer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 235
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    .line 236
    const/4 v1, 0x0

    iput v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioSessionId:I

    .line 237
    sget-object v1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 238
    const/4 v1, 0x1

    iput v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoScalingMode:I

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 242
    new-instance v11, Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    move-object v1, v11

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;-><init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V

    iput-object v11, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 244
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {v2, v1, v3}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;->createAnalyticsCollector(Landroidx/media2/exoplayer/external/Player;Landroidx/media2/exoplayer/external/util/Clock;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    .line 245
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    .line 246
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    .line 247
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V

    .line 252
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v9, v1, v4}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V

    .line 253
    instance-of v1, v8, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    if-eqz v1, :cond_0

    .line 254
    move-object v1, v8

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v4, v5}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->addListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V

    goto :goto_0

    .line 253
    :cond_0
    nop

    .line 256
    :goto_0
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    move-object v5, p1

    invoke-direct {v1, p1, v4}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    .line 257
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroid/os/Looper;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p3, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p4, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p5, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p6    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 146
    .local p6, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v7, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;

    invoke-direct {v7}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)V

    .line 155
    return-void
.end method

.method static synthetic access$1002(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/Format;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFormat:Landroidx/media2/exoplayer/external/Format;

    return-object p1
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$1102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Ljava/util/List;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1300(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Z

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$1700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;ZI)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    return-object v0
.end method

.method static synthetic access$1900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return v0
.end method

.method static synthetic access$1902(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$302(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/Format;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoFormat:Landroidx/media2/exoplayer/external/Format;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$602(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method static synthetic access$802(Landroidx/media2/exoplayer/external/SimpleExoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1212
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHeight:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 1213
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceWidth:I

    .line 1214
    iput p2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHeight:I

    .line 1215
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 1216
    .local v1, "videoListener":Landroidx/media2/exoplayer/external/video/VideoListener;
    invoke-interface {v1, p1, p2}, Landroidx/media2/exoplayer/external/video/VideoListener;->onSurfaceSizeChanged(II)V

    .line 1217
    .end local v1    # "videoListener":Landroidx/media2/exoplayer/external/video/VideoListener;
    goto :goto_1

    .line 1215
    :cond_2
    nop

    .line 1219
    :goto_2
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 1169
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1170
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    if-eq v0, v2, :cond_0

    .line 1171
    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1175
    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    goto :goto_1

    .line 1169
    :cond_1
    nop

    .line 1177
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 1178
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1179
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    goto :goto_2

    .line 1177
    :cond_2
    nop

    .line 1181
    :goto_2
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 7

    .line 1222
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float v0, v0, v1

    .line 1223
    .local v0, "scaledVolume":F
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1224
    .local v4, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1225
    iget-object v5, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 1224
    :cond_0
    nop

    .line 1223
    .end local v4    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1228
    :cond_1
    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "ownsSurface"    # Z

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/PlayerMessage;>;"
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1188
    .local v4, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1189
    iget-object v5, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 1190
    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v5

    .line 1189
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1188
    :cond_0
    nop

    .line 1187
    .end local v4    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1193
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    if-eq v1, p1, :cond_4

    .line 1196
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 1197
    .local v2, "message":Landroidx/media2/exoplayer/external/PlayerMessage;
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/PlayerMessage;->blockUntilDelivered()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    goto :goto_2

    .line 1201
    .end local v2    # "message":Landroidx/media2/exoplayer/external/PlayerMessage;
    :cond_2
    goto :goto_3

    .line 1199
    :catch_0
    move-exception v1

    .line 1200
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1203
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v1, :cond_3

    .line 1204
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_4

    .line 1203
    :cond_3
    goto :goto_4

    .line 1193
    :cond_4
    nop

    .line 1207
    :goto_4
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 1208
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->ownsSurface:Z

    .line 1209
    return-void
.end method

.method private updatePlayWhenReady(ZI)V
    .locals 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playerCommand"    # I

    .line 1232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq p2, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v3, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setPlayWhenReady(ZZ)V

    .line 1235
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 3

    .line 1238
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1239
    const-string v0, "SimpleExoPlayer"

    const-string v1, "Player is accessed on the wrong thread. See https://exoplayer.dev/troubleshooting.html#what-do-player-is-accessed-on-the-wrong-thread-warnings-mean"

    .line 1244
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 1239
    :goto_0
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_1

    .line 1238
    :cond_1
    nop

    .line 1247
    :goto_1
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 538
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 539
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->addListener(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;)V

    .line 540
    return-void
.end method

.method public addAudioDebugListener(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 845
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method public addAudioListener(Landroidx/media2/exoplayer/external/audio/AudioListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 409
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 871
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 872
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    .line 873
    return-void
.end method

.method public addMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

    .line 762
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 763
    return-void
.end method

.method public addTextOutput(Landroidx/media2/exoplayer/external/text/TextOutput;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/text/TextOutput;

    .line 724
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/text/TextOutput;->onCues(Ljava/util/List;)V

    goto :goto_0

    .line 724
    :cond_0
    nop

    .line 727
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method public addVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 814
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 815
    return-void
.end method

.method public addVideoListener(Landroidx/media2/exoplayer/external/video/VideoListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 622
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 623
    return-void
.end method

.method public varargs blockingSendMessages([Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->blockingSendMessages([Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;)V

    .line 1061
    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    .line 474
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;-><init>(IF)V

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V

    .line 475
    return-void
.end method

.method public clearCameraMotionListener(Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;)V
    .locals 6
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    .line 679
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 680
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->cameraMotionListener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    if-eq v0, p1, :cond_0

    .line 681
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 684
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 685
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 686
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x7

    .line 687
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x0

    .line 688
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 689
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 684
    :cond_1
    nop

    .line 683
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    :cond_2
    return-void
.end method

.method public clearMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V

    .line 793
    return-void
.end method

.method public clearTextOutput(Landroidx/media2/exoplayer/external/text/TextOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media2/exoplayer/external/text/TextOutput;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeTextOutput(Landroidx/media2/exoplayer/external/text/TextOutput;)V

    .line 758
    return-void
.end method

.method public clearVideoFrameMetadataListener(Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;)V
    .locals 6
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    .line 647
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 648
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoFrameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    if-eq v0, p1, :cond_0

    .line 649
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 652
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 653
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 654
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x6

    .line 655
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x0

    .line 656
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 657
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 652
    :cond_1
    nop

    .line 651
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    :cond_2
    return-void
.end method

.method public clearVideoListener(Landroidx/media2/exoplayer/external/SimpleExoPlayer$VideoListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer$VideoListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeVideoListener(Landroidx/media2/exoplayer/external/video/VideoListener;)V

    .line 720
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 313
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 315
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 319
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 320
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 320
    :cond_0
    nop

    .line 323
    :goto_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 358
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 359
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 359
    :cond_0
    nop

    .line 362
    :goto_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 371
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 372
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 401
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 402
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 402
    :cond_0
    nop

    .line 405
    :goto_0
    return-void
.end method

.method public createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 1
    .param p1, "target"    # Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    .line 1052
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1053
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v0

    return-object v0
.end method

.method public getAnalyticsCollector()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
    .locals 1

    .line 529
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 866
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .locals 1

    .line 450
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    return-object v0
.end method

.method public getAudioComponent()Landroidx/media2/exoplayer/external/Player$AudioComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 262
    return-object p0
.end method

.method public getAudioDecoderCounters()Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 617
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 605
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFormat:Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 455
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iget v0, v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1126
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 1162
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1156
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1144
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1150
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1096
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1097
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1102
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1120
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;
    .locals 1

    .line 1089
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1090
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 1077
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1078
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    .locals 1

    .line 1083
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1084
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 1108
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1114
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadataComponent()Landroidx/media2/exoplayer/external/Player$MetadataComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 280
    return-object p0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 934
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 935
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 891
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 892
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 861
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .locals 1

    .line 983
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 984
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 884
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 885
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 1065
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1066
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1071
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1072
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getRendererType(I)I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 940
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 941
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekParameters()Landroidx/media2/exoplayer/external/SeekParameters;
    .locals 1

    .line 995
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 996
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getSeekParameters()Landroidx/media2/exoplayer/external/SeekParameters;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 958
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 959
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getTextComponent()Landroidx/media2/exoplayer/external/Player$TextComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 274
    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1132
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoComponent()Landroidx/media2/exoplayer/external/Player$VideoComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 268
    return-object p0
.end method

.method public getVideoDecoderCounters()Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 611
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 599
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoFormat:Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 308
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 493
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 964
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 965
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1138
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 906
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    .line 907
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V
    .locals 2
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .line 911
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 912
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_0

    .line 913
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 914
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->resetForNewMediaSource()V

    goto :goto_0

    .line 912
    :cond_0
    nop

    .line 916
    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 917
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 919
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handlePrepare(Z)I

    move-result v0

    .line 920
    .local v0, "playerCommand":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    .line 921
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    .line 922
    return-void
.end method

.method public release()V
    .locals 3

    .line 1021
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1022
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleStop()V

    .line 1023
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->release()V

    .line 1024
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 1025
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1026
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v2, :cond_0

    .line 1027
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 1026
    :cond_0
    nop

    .line 1029
    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    goto :goto_1

    .line 1025
    :cond_1
    nop

    .line 1031
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_2

    .line 1032
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 1033
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    goto :goto_2

    .line 1031
    :cond_2
    nop

    .line 1035
    :goto_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_3

    .line 1036
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->remove(I)V

    .line 1037
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    goto :goto_3

    .line 1035
    :cond_3
    nop

    .line 1039
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->removeEventListener(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V

    .line 1040
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 1041
    return-void
.end method

.method public removeAnalyticsListener(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;

    .line 548
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 549
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->removeListener(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;)V

    .line 550
    return-void
.end method

.method public removeAudioDebugListener(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 854
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method public removeAudioListener(Landroidx/media2/exoplayer/external/audio/AudioListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 414
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method public removeListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 877
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 878
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->removeListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    .line 879
    return-void
.end method

.method public removeMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

    .line 767
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 768
    return-void
.end method

.method public removeTextOutput(Landroidx/media2/exoplayer/external/text/TextOutput;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/text/TextOutput;

    .line 732
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 733
    return-void
.end method

.method public removeVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method public removeVideoListener(Landroidx/media2/exoplayer/external/video/VideoListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 627
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method public retry()V
    .locals 2

    .line 897
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 898
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_2

    .line 899
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 900
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    goto :goto_1

    .line 898
    :cond_2
    nop

    .line 902
    :goto_1
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .line 970
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 971
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 972
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekTo(IJ)V

    .line 973
    return-void
.end method

.method public varargs sendMessages([Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1047
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->sendMessages([Landroidx/media2/exoplayer/external/ExoPlayer$ExoPlayerMessage;)V

    .line 1048
    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;Z)V

    .line 420
    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;Z)V
    .locals 6
    .param p1, "audioAttributes"    # Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 424
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 425
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 427
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 428
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 429
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 430
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x3

    .line 431
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 432
    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 433
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 428
    :cond_0
    nop

    .line 427
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 437
    .local v1, "audioListener":Landroidx/media2/exoplayer/external/audio/AudioListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioListener;->onAudioAttributesChanged(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    .line 438
    .end local v1    # "audioListener":Landroidx/media2/exoplayer/external/audio/AudioListener;
    goto :goto_2

    .line 436
    :cond_2
    goto :goto_3

    .line 425
    :cond_3
    nop

    .line 442
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    .line 444
    if-eqz p2, :cond_4

    move-object v1, p1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v2

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v3

    .line 443
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;ZI)I

    move-result v0

    .line 445
    .local v0, "playerCommand":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    .line 446
    return-void
.end method

.method public setAudioDebugListener(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 834
    if-eqz p1, :cond_0

    .line 835
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addAudioDebugListener(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V

    goto :goto_0

    .line 834
    :cond_0
    nop

    .line 837
    :goto_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->getAudioUsageForStreamType(I)I

    move-result v0

    .line 511
    .local v0, "usage":I
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->getAudioContentTypeForStreamType(I)I

    move-result v1

    .line 512
    .local v1, "contentType":I
    new-instance v2, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;-><init>()V

    .line 513
    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setUsage(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setContentType(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->build()Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    move-result-object v2

    .line 514
    .local v2, "audioAttributes":Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    .line 515
    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V
    .locals 6
    .param p1, "auxEffectInfo"    # Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 460
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 461
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 462
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 463
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 464
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x5

    .line 465
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 466
    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 467
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 462
    :cond_0
    nop

    .line 461
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    :cond_1
    return-void
.end method

.method public setCameraMotionListener(Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;)V
    .locals 6
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    .line 664
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 665
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->cameraMotionListener:Landroidx/media2/exoplayer/external/video/spherical/CameraMotionListener;

    .line 666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 667
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 668
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 669
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x7

    .line 670
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 671
    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 672
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 667
    :cond_0
    nop

    .line 666
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    :cond_1
    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 1
    .param p1, "foregroundMode"    # Z

    .line 1001
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setForegroundMode(Z)V

    .line 1002
    return-void
.end method

.method public setMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V
    .locals 2
    .param p1, "output"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 778
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 779
    if-eqz p1, :cond_0

    .line 780
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V

    goto :goto_0

    .line 779
    :cond_0
    nop

    .line 782
    :goto_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2
    .param p1, "playWhenReady"    # Z

    .line 926
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 928
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleSetPlayWhenReady(ZI)I

    move-result v0

    .line 929
    .local v0, "playerCommand":I
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    .line 930
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media2/exoplayer/external/PlaybackParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 977
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 978
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    .line 979
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .param p1, "params"    # Landroid/media/PlaybackParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 589
    new-instance v0, Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/PlaybackParameters;-><init>(FF)V

    goto :goto_0

    .line 591
    :cond_0
    const/4 v0, 0x0

    .line 593
    .local v0, "playbackParameters":Landroidx/media2/exoplayer/external/PlaybackParameters;
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    .line 594
    return-void
.end method

.method public setPriorityTaskManager(Landroidx/media2/exoplayer/external/util/PriorityTaskManager;)V
    .locals 2
    .param p1, "priorityTaskManager"    # Landroidx/media2/exoplayer/external/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 561
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 562
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->remove(I)V

    goto :goto_0

    .line 565
    :cond_1
    nop

    .line 568
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->add(I)V

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    goto :goto_1

    .line 568
    :cond_2
    nop

    .line 572
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    .line 574
    :goto_1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    .line 575
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 946
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 947
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setRepeatMode(I)V

    .line 948
    return-void
.end method

.method public setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V
    .locals 1
    .param p1, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 989
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 990
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V

    .line 991
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .line 952
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 953
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setShuffleModeEnabled(Z)V

    .line 954
    return-void
.end method

.method public setTextOutput(Landroidx/media2/exoplayer/external/text/TextOutput;)V
    .locals 1
    .param p1, "output"    # Landroidx/media2/exoplayer/external/text/TextOutput;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 743
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 744
    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addTextOutput(Landroidx/media2/exoplayer/external/text/TextOutput;)V

    goto :goto_0

    .line 744
    :cond_0
    nop

    .line 747
    :goto_0
    return-void
.end method

.method public setVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 803
    if-eqz p1, :cond_0

    .line 804
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V

    goto :goto_0

    .line 803
    :cond_0
    nop

    .line 806
    :goto_0
    return-void
.end method

.method public setVideoFrameMetadataListener(Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;)V
    .locals 6
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    .line 632
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 633
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoFrameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    .line 634
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 635
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 636
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 637
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x6

    .line 638
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 639
    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 640
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 635
    :cond_0
    nop

    .line 634
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 643
    :cond_1
    return-void
.end method

.method public setVideoListener(Landroidx/media2/exoplayer/external/SimpleExoPlayer$VideoListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/SimpleExoPlayer$VideoListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 704
    if-eqz p1, :cond_0

    .line 705
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addVideoListener(Landroidx/media2/exoplayer/external/video/VideoListener;)V

    goto :goto_0

    .line 704
    :cond_0
    nop

    .line 707
    :goto_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 6
    .param p1, "videoScalingMode"    # I

    .line 293
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 294
    iput p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoScalingMode:I

    .line 295
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 296
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 297
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 298
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x4

    .line 299
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    goto :goto_1

    .line 296
    :cond_0
    nop

    .line 295
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_1
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 327
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 328
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 330
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 331
    .local v0, "newSurfaceSize":I
    :goto_0
    invoke-direct {p0, v0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    .line 332
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 336
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 337
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 338
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 339
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 340
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 341
    invoke-direct {p0, v1, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 344
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 345
    .local v2, "surface":Landroid/view/Surface;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    invoke-direct {p0, v2, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 347
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 348
    .local v0, "surfaceSize":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    .line 349
    .end local v0    # "surfaceSize":Landroid/graphics/Rect;
    goto :goto_0

    .line 345
    :cond_1
    nop

    .line 350
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 351
    invoke-direct {p0, v1, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    .line 354
    .end local v2    # "surface":Landroid/view/Surface;
    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .line 366
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 367
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 5
    .param p1, "textureView"    # Landroid/view/TextureView;

    .line 376
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 377
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 378
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 379
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 380
    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 381
    invoke-direct {p0, v2, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_2

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 384
    const-string v3, "SimpleExoPlayer"

    const-string v4, "Replacing existing SurfaceTextureListener."

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_1
    nop

    .line 386
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 387
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_1

    .line 388
    :cond_2
    move-object v3, v1

    :goto_1
    nop

    .line 389
    .local v3, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v3, :cond_3

    .line 390
    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 391
    invoke-direct {p0, v2, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_2

    .line 393
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 394
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    .line 397
    .end local v3    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :goto_2
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "audioVolume"    # F

    .line 479
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 480
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 481
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    iput p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    .line 485
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->sendVolumeToRenderers()V

    .line 486
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 487
    .local v1, "audioListener":Landroidx/media2/exoplayer/external/audio/AudioListener;
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioListener;->onVolumeChanged(F)V

    .line 488
    .end local v1    # "audioListener":Landroidx/media2/exoplayer/external/audio/AudioListener;
    goto :goto_0

    .line 489
    :cond_1
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "reset"    # Z

    .line 1006
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1007
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->stop(Z)V

    .line 1008
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 1010
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->resetForNewMediaSource()V

    .line 1011
    if-eqz p1, :cond_0

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    goto :goto_0

    .line 1011
    :cond_0
    goto :goto_0

    .line 1008
    :cond_1
    nop

    .line 1015
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleStop()V

    .line 1016
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 1017
    return-void
.end method
