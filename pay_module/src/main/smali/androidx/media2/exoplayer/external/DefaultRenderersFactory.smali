.class public Landroidx/media2/exoplayer/external/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/RenderersFactory;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private allowedVideoJoiningTimeMs:J

.field private final context:Landroid/content/Context;

.field private drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
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

.field private extensionRendererMode:I

.field private mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

.field private playClearSamplesWithoutKeys:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    .line 105
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 106
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    const-wide/16 v0, 0x1388

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;IJ)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "allowedVideoJoiningTimeMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;IJ)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    .local p2, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    .local p2, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;IJ)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extensionRendererMode"    # I
    .param p4, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    .local p2, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 170
    iput p3, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    .line 171
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 172
    iput-object p2, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    .line 173
    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 174
    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .locals 1

    .line 530
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Z[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "playClearSamplesWithoutKeys"    # Z
    .param p6, "audioProcessors"    # [Landroidx/media2/exoplayer/external/audio/AudioProcessor;
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z[",
            "Landroidx/media2/exoplayer/external/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 381
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    .local p9, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Renderer;>;"
    move v1, p2

    move-object/from16 v11, p9

    new-instance v0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    .line 389
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    move-result-object v9

    move-object v2, v0

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    .line 381
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    if-nez v1, :cond_0

    .line 393
    return-void

    .line 395
    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 396
    .local v0, "extensionRendererIndex":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 397
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_0

    .line 396
    :cond_1
    move v3, v0

    .line 403
    .end local v0    # "extensionRendererIndex":I
    .local v3, "extensionRendererIndex":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 404
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v4

    const-class v8, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    aput-object v8, v7, v6

    const-class v8, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aput-object v8, v7, v2

    .line 405
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 410
    .local v7, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v8, v5, [Ljava/lang/Object;

    aput-object p7, v8, v4

    aput-object p8, v8, v6

    aput-object p6, v8, v2

    .line 411
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media2/exoplayer/external/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 412
    .local v8, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "extensionRendererIndex":I
    .local v9, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v11, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 413
    const-string v3, "DefaultRenderersFactory"

    const-string v10, "Loaded LibopusAudioRenderer."

    invoke-static {v3, v10}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    goto :goto_2

    .line 416
    :catch_0
    move-exception v0

    move v3, v9

    goto :goto_1

    .line 414
    :catch_1
    move-exception v0

    goto :goto_2

    .line 416
    .end local v9    # "extensionRendererIndex":I
    .restart local v3    # "extensionRendererIndex":I
    :catch_2
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Error instantiating Opus extension"

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move v9, v3

    .line 419
    .end local v3    # "extensionRendererIndex":I
    .restart local v9    # "extensionRendererIndex":I
    :goto_2
    nop

    .line 424
    :try_start_2
    const-string v0, "androidx.media2.exoplayer.external.ext.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 425
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/Handler;

    aput-object v7, v3, v4

    const-class v7, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    aput-object v7, v3, v6

    const-class v7, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aput-object v7, v3, v2

    .line 426
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 431
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v7, v5, [Ljava/lang/Object;

    aput-object p7, v7, v4

    aput-object p8, v7, v6

    aput-object p6, v7, v2

    .line 432
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 433
    .local v7, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "extensionRendererIndex":I
    .local v8, "extensionRendererIndex":I
    :try_start_3
    invoke-virtual {v11, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 434
    const-string v9, "DefaultRenderersFactory"

    const-string v10, "Loaded LibflacAudioRenderer."

    invoke-static {v9, v10}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    goto :goto_4

    .line 437
    :catch_4
    move-exception v0

    move v9, v8

    goto :goto_3

    .line 435
    :catch_5
    move-exception v0

    goto :goto_4

    .line 437
    .end local v8    # "extensionRendererIndex":I
    .restart local v9    # "extensionRendererIndex":I
    :catch_6
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    move v8, v9

    .line 440
    .end local v9    # "extensionRendererIndex":I
    .restart local v8    # "extensionRendererIndex":I
    :goto_4
    nop

    .line 445
    :try_start_4
    const-string v0, "androidx.media2.exoplayer.external.ext.ffmpeg.FfmpegAudioRenderer"

    .line 446
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 447
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/Handler;

    aput-object v7, v3, v4

    const-class v7, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    aput-object v7, v3, v6

    const-class v7, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aput-object v7, v3, v2

    .line 448
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 453
    .restart local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p7, v5, v4

    aput-object p8, v5, v6

    aput-object p6, v5, v2

    .line 454
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 455
    .local v2, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :try_start_5
    invoke-virtual {v11, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 456
    const-string v5, "DefaultRenderersFactory"

    const-string v6, "Loaded FfmpegAudioRenderer."

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_6

    .line 459
    :catch_8
    move-exception v0

    move v8, v4

    goto :goto_5

    .line 457
    :catch_9
    move-exception v0

    goto :goto_6

    .line 459
    .end local v4    # "extensionRendererIndex":I
    .restart local v8    # "extensionRendererIndex":I
    :catch_a
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v0

    move v4, v8

    .line 462
    .end local v8    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :goto_6
    nop

    .line 463
    return-void
.end method

.method protected buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Renderer;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Renderer;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;

    invoke-direct {v0, p2, p3}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;-><init>(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Renderer;>;"
    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Landroidx/media2/exoplayer/external/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Landroidx/media2/exoplayer/external/text/TextOutput;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 480
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Renderer;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/text/TextRenderer;

    invoke-direct {v0, p2, p3}, Landroidx/media2/exoplayer/external/text/TextRenderer;-><init>(Landroidx/media2/exoplayer/external/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionRendererMode"    # I
    .param p3, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p4    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "playClearSamplesWithoutKeys"    # Z
    .param p6, "eventHandler"    # Landroid/os/Handler;
    .param p7, "eventListener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p8, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p4, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    .local p10, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Renderer;>;"
    move v1, p2

    move-object/from16 v2, p10

    new-instance v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    const/16 v12, 0x32

    move-object v3, v0

    move-object v4, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p8

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v12}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    if-nez v1, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 322
    .local v0, "extensionRendererIndex":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 323
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_0

    .line 322
    :cond_1
    move v4, v0

    .line 329
    .end local v0    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :goto_0
    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 330
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/os/Handler;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    .line 331
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 337
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v5, [Ljava/lang/Object;

    .line 340
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object p6, v5, v9

    aput-object p7, v5, v3

    const/16 v3, 0x32

    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v10

    .line 339
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 344
    .local v3, "renderer":Landroidx/media2/exoplayer/external/Renderer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "extensionRendererIndex":I
    .local v5, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 345
    const-string v4, "DefaultRenderersFactory"

    const-string v7, "Loaded LibvpxVideoRenderer."

    invoke-static {v4, v7}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "renderer":Landroidx/media2/exoplayer/external/Renderer;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_2

    .line 348
    :catch_0
    move-exception v0

    move v4, v5

    goto :goto_1

    .line 346
    :catch_1
    move-exception v0

    goto :goto_2

    .line 348
    .end local v5    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_2
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Error instantiating VP9 extension"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move v5, v4

    .line 351
    .end local v4    # "extensionRendererIndex":I
    .restart local v5    # "extensionRendererIndex":I
    :goto_2
    nop

    .line 352
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/text/TextOutput;Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)[Landroidx/media2/exoplayer/external/Renderer;
    .locals 14
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "videoRendererEventListener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
    .param p3, "audioRendererEventListener"    # Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
    .param p4, "textRendererOutput"    # Landroidx/media2/exoplayer/external/text/TextOutput;
    .param p5, "metadataRendererOutput"    # Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
    .param p6    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Landroidx/media2/exoplayer/external/text/TextOutput;",
            "Landroidx/media2/exoplayer/external/metadata/MetadataOutput;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)[",
            "Landroidx/media2/exoplayer/external/Renderer;"
        }
    .end annotation

    .line 247
    .local p6, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    move-object v11, p0

    if-nez p6, :cond_0

    .line 248
    iget-object v0, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    move-object v12, v0

    goto :goto_0

    .line 247
    :cond_0
    move-object/from16 v12, p6

    .line 250
    .end local p6    # "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    .local v12, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 251
    .local v13, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Renderer;>;"
    iget-object v1, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-boolean v5, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->playClearSamplesWithoutKeys:Z

    iget-wide v8, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v4, v12

    move-object v6, p1

    move-object/from16 v7, p2

    move-object v10, v13

    invoke-virtual/range {v0 .. v10}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    .line 261
    iget-object v1, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-boolean v5, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->playClearSamplesWithoutKeys:Z

    .line 267
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->buildAudioProcessors()[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    move-result-object v6

    .line 261
    move-object v7, p1

    move-object/from16 v8, p3

    move-object v9, v13

    invoke-virtual/range {v0 .. v9}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Z[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    .line 271
    iget-object v1, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p4

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Landroidx/media2/exoplayer/external/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 273
    iget-object v1, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 275
    iget-object v0, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, v0, v1, v13}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 276
    iget-object v0, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v11, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v13}, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 277
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Renderer;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/Renderer;

    return-object v0
.end method

.method public setAllowedVideoJoiningTimeMs(J)Landroidx/media2/exoplayer/external/DefaultRenderersFactory;
    .locals 0
    .param p1, "allowedVideoJoiningTimeMs"    # J

    .line 235
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 236
    return-object p0
.end method

.method public setExtensionRendererMode(I)Landroidx/media2/exoplayer/external/DefaultRenderersFactory;
    .locals 0
    .param p1, "extensionRendererMode"    # I

    .line 188
    iput p1, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->extensionRendererMode:I

    .line 189
    return-object p0
.end method

.method public setMediaCodecSelector(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;)Landroidx/media2/exoplayer/external/DefaultRenderersFactory;
    .locals 0
    .param p1, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 220
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 221
    return-object p0
.end method

.method public setPlayClearSamplesWithoutKeys(Z)Landroidx/media2/exoplayer/external/DefaultRenderersFactory;
    .locals 0
    .param p1, "playClearSamplesWithoutKeys"    # Z

    .line 207
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/DefaultRenderersFactory;->playClearSamplesWithoutKeys:Z

    .line 208
    return-object p0
.end method
