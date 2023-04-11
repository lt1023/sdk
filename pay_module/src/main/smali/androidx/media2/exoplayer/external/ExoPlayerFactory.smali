.class public final Landroidx/media2/exoplayer/external/ExoPlayerFactory;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static singletonBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getDefaultBandwidthMeter(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroidx/media2/exoplayer/external/ExoPlayerFactory;

    monitor-enter v0

    .line 451
    :try_start_0
    sget-object v1, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->singletonBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    if-nez v1, :cond_0

    .line 452
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;->build()Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    move-result-object v1

    sput-object v1, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->singletonBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    goto :goto_0

    .line 451
    :cond_0
    nop

    .line 454
    :goto_0
    sget-object v1, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->singletonBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 450
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstance(Landroid/content/Context;[Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;)Landroidx/media2/exoplayer/external/ExoPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 391
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newInstance(Landroid/content/Context;[Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;)Landroidx/media2/exoplayer/external/ExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;[Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;)Landroidx/media2/exoplayer/external/ExoPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;

    .line 404
    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newInstance(Landroid/content/Context;[Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/ExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;[Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/ExoPlayer;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 423
    nop

    .line 424
    invoke-static {p0}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->getDefaultBandwidthMeter(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    move-result-object v4

    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newInstance(Landroid/content/Context;[Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/ExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;[Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/ExoPlayer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p5, "looper"    # Landroid/os/Looper;

    .line 446
    new-instance v7, Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    sget-object v5, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;-><init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V

    return-object v7
.end method

.method public static newSimpleInstance(Landroid/content/Context;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>()V

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 133
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;

    .line 199
    nop

    .line 205
    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v5

    .line 199
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 224
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    nop

    .line 225
    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v5

    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "looper"    # Landroid/os/Looper;
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
            "Landroid/os/Looper;",
            ")",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 305
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v5, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "analyticsCollectorFactory"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
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
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;",
            ")",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 276
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    nop

    .line 283
    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "analyticsCollectorFactory"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
    .param p6, "looper"    # Landroid/os/Looper;
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
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;",
            "Landroid/os/Looper;",
            ")",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 337
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    nop

    .line 343
    invoke-static {p0}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->getDefaultBandwidthMeter(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    move-result-object v5

    .line 337
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
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
            ")",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 246
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v6, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;

    invoke-direct {v6}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;-><init>()V

    .line 254
    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .param p6, "analyticsCollectorFactory"    # Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
    .param p7, "looper"    # Landroid/os/Looper;
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
            ")",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 371
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v9, Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)V

    return-object v9
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderersFactory"    # Landroidx/media2/exoplayer/external/RenderersFactory;
    .param p2, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 182
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 121
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p2, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;

    .line 145
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "renderersFactory":Landroidx/media2/exoplayer/external/RenderersFactory;
    invoke-static {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p2, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 163
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "renderersFactory":Landroidx/media2/exoplayer/external/RenderersFactory;
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;I)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p2, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;I)",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->setExtensionRendererMode(I)Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    move-result-object v0

    .line 69
    .local v0, "renderersFactory":Landroidx/media2/exoplayer/external/RenderersFactory;
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;IJ)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p2, "loadControl"    # Landroidx/media2/exoplayer/external/LoadControl;
    .param p3    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "extensionRendererMode"    # I
    .param p5, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;IJ)",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    .local p3, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, p4}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->setExtensionRendererMode(I)Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p5, p6}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->setAllowedVideoJoiningTimeMs(J)Landroidx/media2/exoplayer/external/DefaultRenderersFactory;

    move-result-object v0

    .line 101
    .local v0, "renderersFactory":Landroidx/media2/exoplayer/external/RenderersFactory;
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method
