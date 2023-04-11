.class public Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
.super Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT:I = 0xa

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private dummySurface:Landroid/view/Surface;

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastInputTimeUs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private outputStreamOffsetUs:J

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private final pendingOutputStreamSwitchTimesUs:[J

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private reportedHeight:I

.field private reportedPixelWidthHeightRatio:F

.field private reportedUnappliedRotationDegrees:I

.field private reportedWidth:I

.field private scalingMode:I

.field private surface:Landroid/view/Surface;

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 154
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;J)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J

    .line 165
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "maxDroppedFramesToNotify"    # I

    .line 192
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J
    .param p5    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "playClearSamplesWithoutKeys"    # Z
    .param p7, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "eventListener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "maxDroppedFramesToNotify"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "J",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .line 230
    .local p5, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J
    .param p5    # Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "playClearSamplesWithoutKeys"    # Z
    .param p7, "enableDecoderFallback"    # Z
    .param p8, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "eventListener"    # Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "maxDroppedFramesToNotify"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "J",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .line 273
    .local p5, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    move-object v7, p0

    const/4 v1, 0x2

    const/high16 v6, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZF)V

    .line 280
    move-wide v0, p3

    iput-wide v0, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 281
    move/from16 v2, p10

    iput v2, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 283
    new-instance v3, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    iget-object v4, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    .line 284
    new-instance v3, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-direct {v3, v4, v5}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V

    iput-object v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    .line 285
    invoke-static {}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v3

    iput-boolean v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 286
    const/16 v3, 0xa

    new-array v6, v3, [J

    iput-object v6, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    .line 287
    new-array v3, v3, [J

    iput-object v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    .line 288
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 289
    iput-wide v8, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 290
    iput-wide v8, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 291
    const/4 v3, -0x1

    iput v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 292
    iput v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 293
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 294
    iput v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 295
    const/4 v3, 0x1

    iput v3, v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 296
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 297
    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 3

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1063
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1

    .line 1064
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    .line 1066
    .local v0, "codec":Landroid/media/MediaCodec;
    if-eqz v0, :cond_0

    .line 1067
    new-instance v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    goto :goto_0

    .line 1066
    :cond_0
    goto :goto_0

    .line 1063
    .end local v0    # "codec":Landroid/media/MediaCodec;
    :cond_1
    nop

    .line 1070
    :goto_0
    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 2

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1087
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    .line 1088
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    .line 1089
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    .line 1090
    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .locals 2
    .param p0, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p1, "tunnelingAudioSessionId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1140
    const-string/jumbo v0, "tunneled-playback"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 1141
    const-string v0, "audio-session-id"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1142
    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .locals 2

    .line 1405
    const-string v0, "NVIDIA"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I
    .locals 4
    .param p0, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1345
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    if-ne p3, v0, :cond_0

    goto/16 :goto_5

    .line 1353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1384
    return v0

    .line 1379
    :pswitch_0
    mul-int v0, p2, p3

    .line 1380
    .local v0, "maxPixels":I
    const/4 v1, 0x4

    .line 1381
    .local v1, "minCompressionRatio":I
    goto :goto_4

    .line 1374
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_1
    mul-int v0, p2, p3

    .line 1375
    .restart local v0    # "maxPixels":I
    const/4 v1, 0x2

    .line 1376
    .restart local v1    # "minCompressionRatio":I
    goto :goto_4

    .line 1360
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_2
    const-string v1, "BRAVIA 4K 2015"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Amazon"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 1361
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "KFSOWI"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 1362
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "AFTS"

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 1363
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_2

    .line 1362
    :cond_3
    goto :goto_3

    .line 1361
    :cond_4
    nop

    .line 1369
    :goto_2
    const/16 v0, 0x10

    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v0, v1, 0x10

    .line 1370
    .restart local v0    # "maxPixels":I
    const/4 v1, 0x2

    .line 1371
    .restart local v1    # "minCompressionRatio":I
    goto :goto_4

    .line 1360
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :cond_5
    nop

    .line 1366
    :goto_3
    return v0

    .line 1356
    :pswitch_3
    mul-int v0, p2, p3

    .line 1357
    .restart local v0    # "maxPixels":I
    const/4 v1, 0x2

    .line 1358
    .restart local v1    # "minCompressionRatio":I
    nop

    .line 1387
    :goto_4
    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x2

    div-int/2addr v2, v3

    return v2

    .line 1345
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :cond_6
    :goto_5
    nop

    .line 1347
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getCodecMaxSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)Landroid/graphics/Point;
    .locals 17
    .param p0, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1280
    .local v2, "isVerticalVideo":Z
    :goto_0
    if-eqz v2, :cond_1

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->height:I

    goto :goto_1

    :cond_1
    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 1281
    .local v3, "formatLongEdgePx":I
    :goto_1
    if-eqz v2, :cond_2

    iget v5, v1, Landroidx/media2/exoplayer/external/Format;->width:I

    goto :goto_2

    :cond_2
    iget v5, v1, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 1282
    .local v5, "formatShortEdgePx":I
    :goto_2
    int-to-float v6, v5

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 1283
    .local v6, "aspectRatio":F
    sget-object v7, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v8, v7

    :goto_3
    const/4 v9, 0x0

    if-ge v4, v8, :cond_c

    aget v10, v7, v4

    .line 1284
    .local v10, "longEdgePx":I
    int-to-float v11, v10

    mul-float v11, v11, v6

    float-to-int v11, v11

    .line 1285
    .local v11, "shortEdgePx":I
    if-le v10, v3, :cond_b

    if-gt v11, v5, :cond_3

    move v15, v5

    move/from16 v16, v6

    goto/16 :goto_9

    .line 1288
    :cond_3
    sget v9, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v9, v12, :cond_7

    .line 1289
    if-eqz v2, :cond_4

    move v9, v11

    goto :goto_4

    :cond_4
    move v9, v10

    .line 1290
    :goto_4
    if-eqz v2, :cond_5

    move v12, v10

    goto :goto_5

    :cond_5
    move v12, v11

    .line 1289
    :goto_5
    invoke-virtual {v0, v9, v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v9

    .line 1291
    .local v9, "alignedSize":Landroid/graphics/Point;
    iget v12, v1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 1292
    .local v12, "frameRate":F
    iget v13, v9, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->y:I

    move v15, v5

    move/from16 v16, v6

    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .local v15, "formatShortEdgePx":I
    .local v16, "aspectRatio":F
    float-to-double v5, v12

    invoke-virtual {v0, v13, v14, v5, v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1293
    return-object v9

    .line 1292
    :cond_6
    nop

    .line 1295
    .end local v9    # "alignedSize":Landroid/graphics/Point;
    .end local v12    # "frameRate":F
    goto :goto_8

    .line 1297
    .end local v15    # "formatShortEdgePx":I
    .end local v16    # "aspectRatio":F
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "aspectRatio":F
    :cond_7
    move v15, v5

    move/from16 v16, v6

    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local v15    # "formatShortEdgePx":I
    .restart local v16    # "aspectRatio":F
    const/16 v5, 0x10

    invoke-static {v10, v5}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    .line 1298
    .end local v10    # "longEdgePx":I
    .local v6, "longEdgePx":I
    invoke-static {v11, v5}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/lit8 v5, v9, 0x10

    .line 1299
    .end local v11    # "shortEdgePx":I
    .local v5, "shortEdgePx":I
    mul-int v9, v6, v5

    invoke-static {}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v10

    if-gt v9, v10, :cond_a

    .line 1300
    new-instance v4, Landroid/graphics/Point;

    if-eqz v2, :cond_8

    move v7, v5

    goto :goto_6

    :cond_8
    move v7, v6

    .line 1301
    :goto_6
    if-eqz v2, :cond_9

    move v8, v6

    goto :goto_7

    :cond_9
    move v8, v5

    :goto_7
    invoke-direct {v4, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 1300
    return-object v4

    .line 1299
    :cond_a
    nop

    .line 1283
    .end local v5    # "shortEdgePx":I
    .end local v6    # "longEdgePx":I
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move v5, v15

    move/from16 v6, v16

    goto :goto_3

    .line 1285
    .end local v15    # "formatShortEdgePx":I
    .end local v16    # "aspectRatio":F
    .local v5, "formatShortEdgePx":I
    .local v6, "aspectRatio":F
    .restart local v10    # "longEdgePx":I
    .restart local v11    # "shortEdgePx":I
    :cond_b
    move v15, v5

    move/from16 v16, v6

    .line 1287
    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local v15    # "formatShortEdgePx":I
    .restart local v16    # "aspectRatio":F
    :goto_9
    return-object v9

    .line 1305
    .end local v10    # "longEdgePx":I
    .end local v11    # "shortEdgePx":I
    .end local v15    # "formatShortEdgePx":I
    .end local v16    # "aspectRatio":F
    .restart local v5    # "formatShortEdgePx":I
    .restart local v6    # "aspectRatio":F
    :cond_c
    move v15, v5

    move/from16 v16, v6

    .end local v5    # "formatShortEdgePx":I
    .end local v6    # "aspectRatio":F
    .restart local v15    # "formatShortEdgePx":I
    .restart local v16    # "aspectRatio":F
    return-object v9
.end method

.method private static getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;
    .locals 4
    .param p0, "mediaCodecSelector"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "requiresSecureDecoder"    # Z
    .param p3, "requiresTunnelingDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/Format;",
            "ZZ)",
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

    .line 371
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 372
    invoke-interface {p0, v0, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 374
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;

    move-result-object v0

    .line 375
    const-string/jumbo v1, "video/dolby-vision"

    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 377
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 378
    invoke-static {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 379
    .local v1, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    .line 380
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 381
    .local v2, "profile":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 386
    const-string/jumbo v3, "video/avc"

    .line 387
    invoke-interface {p0, v3, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    .line 386
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 385
    :cond_1
    goto :goto_1

    .line 381
    :cond_2
    :goto_0
    nop

    .line 382
    const-string/jumbo v3, "video/hevc"

    .line 383
    invoke-interface {p0, v3, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    .line 382
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 379
    .end local v2    # "profile":I
    :cond_3
    goto :goto_1

    .line 375
    .end local v1    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    nop

    .line 392
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I
    .locals 4
    .param p0, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 1317
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "totalInitializationDataSize":I
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1322
    .local v1, "initializationDataCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1323
    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 1322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1325
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    add-int/2addr v2, v0

    return v2

    .line 1329
    .end local v0    # "totalInitializationDataSize":I
    .end local v1    # "initializationDataCount":I
    :cond_1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static isBufferLate(J)Z
    .locals 3
    .param p0, "earlyUs"    # J

    .line 1125
    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 3
    .param p0, "earlyUs"    # J

    .line 1130
    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 1114
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 1115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1116
    .local v0, "now":J
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1117
    .local v2, "elapsedMs":J
    iget-object v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    .line 1118
    const/4 v4, 0x0

    iput v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1119
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    goto :goto_0

    .line 1114
    .end local v0    # "now":J
    .end local v2    # "elapsedMs":J
    :cond_0
    nop

    .line 1121
    :goto_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .line 1093
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1097
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 1099
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    .line 1100
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    .line 1101
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    .line 1102
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    .line 1104
    :goto_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 1080
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    goto :goto_0

    .line 1080
    :cond_0
    nop

    .line 1083
    :goto_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 5

    .line 1107
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1108
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedWidth:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedHeight:I

    iget v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedUnappliedRotationDegrees:I

    iget v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->reportedPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 1111
    :goto_1
    return-void
.end method

.method private notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V
    .locals 6
    .param p1, "presentationTimeUs"    # J
    .param p3, "releaseTimeNs"    # J
    .param p5, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 841
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 842
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    .line 841
    :cond_0
    nop

    .line 845
    :goto_0
    return-void
.end method

.method private processOutputFormat(Landroid/media/MediaCodec;II)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 818
    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 819
    iput p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 820
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 821
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 825
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 826
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 827
    .local v0, "rotatedHeight":I
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 828
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 829
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 830
    .end local v0    # "rotatedHeight":I
    goto :goto_1

    .line 833
    :cond_2
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 836
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 837
    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 5

    .line 1053
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 1055
    return-void
.end method

.method private static setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0
    .param p0, "codec"    # Landroid/media/MediaCodec;
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1135
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 1136
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 527
    if-nez p1, :cond_2

    .line 529
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 530
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 533
    .local v0, "codecInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    .line 535
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    goto :goto_0

    .line 533
    :cond_1
    goto :goto_0

    .line 527
    .end local v0    # "codecInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    :cond_2
    nop

    .line 540
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_7

    .line 541
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 542
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 543
    .local v0, "state":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    .line 544
    .local v1, "codec":Landroid/media/MediaCodec;
    if-eqz v1, :cond_4

    .line 545
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_3

    .line 546
    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    goto :goto_1

    .line 545
    :cond_3
    nop

    .line 548
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 549
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeInitCodec()V

    goto :goto_1

    .line 544
    :cond_4
    nop

    .line 552
    :goto_1
    if-eqz p1, :cond_6

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v2, :cond_6

    .line 554
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 556
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 557
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 558
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_2

    .line 557
    :cond_5
    goto :goto_2

    .line 552
    :cond_6
    nop

    .line 562
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 563
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_2

    .line 565
    .end local v0    # "state":I
    .end local v1    # "codec":Landroid/media/MediaCodec;
    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_8

    .line 568
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 569
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    goto :goto_3

    .line 565
    :cond_8
    :goto_2
    nop

    .line 571
    :goto_3
    return-void
.end method

.method private shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .locals 2
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 1046
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1048
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1049
    invoke-static {v0}, Landroidx/media2/exoplayer/external/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1048
    :cond_1
    nop

    .line 1049
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 1048
    :cond_2
    goto :goto_1

    .line 1046
    :cond_3
    nop

    .line 1049
    :goto_1
    const/4 v0, 0x0

    .line 1046
    :goto_2
    return v0
.end method


# virtual methods
.method protected canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p3, "oldFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "newFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p2, p3, p4, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v0, v1, :cond_2

    iget v0, p4, Landroidx/media2/exoplayer/external/Format;->height:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt v0, v1, :cond_2

    .line 620
    invoke-static {p2, p4}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt v0, v1, :cond_1

    .line 621
    invoke-virtual {p3, p4}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x3

    goto :goto_0

    .line 623
    :cond_0
    const/4 v0, 0x2

    .line 621
    :goto_0
    return v0

    .line 620
    :cond_1
    goto :goto_1

    .line 616
    :cond_2
    nop

    .line 625
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 1431
    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1433
    return v1

    .line 1435
    :cond_0
    const-class v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    monitor-enter v0

    .line 1436
    :try_start_0
    sget-boolean v2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_8

    .line 1437
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x1b

    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    const-string v2, "dangal"

    sget-object v5, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HWEML"

    sget-object v5, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1440
    :cond_1
    sput-boolean v4, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    goto/16 :goto_5

    .line 1437
    :cond_2
    nop

    .line 1441
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v2, v3, :cond_3

    goto/16 :goto_5

    .line 1459
    :cond_3
    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :cond_4
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "HWWAS-H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "HWVNS-H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "ELUGA_Prim"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "ELUGA_Note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "ASUS_X00AD_2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "HWCAM-H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "HWBLN-H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "BRAVIA_ATV3_4K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "Infinix-X572"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "PB2-670M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x55

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "santoni"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x65

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "iball8735_9806"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "CPH1609"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v3, "woods_f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x75

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "htc_e56ml_dtul"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "EverStar_S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "hwALE-H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "itel_S41"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "LS-5017"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "panell_d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x51

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "j2xlteins"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "A7000plus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "manning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "GIONEE_WBL7519"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "GIONEE_WBL7365"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "GIONEE_WBL5708"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "QM16XE_U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x63

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "Pixi5-10_4G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x5b

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "TB3-850M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x6d

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "TB3-850F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x6c

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "TB3-730X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x6b

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "TB3-730F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x6a

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "A7020a48"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "A7010a48"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "griffin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "marino_f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "CPY83_I00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "A2016a40"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "le_x6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "i9031"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "X3_HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x77

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "V23GB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x70

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "Q4310"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x61

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "Q4260"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x5f

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "PRO7S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x5d

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "F3311"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "F3215"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "F3213"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "F3211"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "F3116"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "F3113"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "F3111"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "E5643"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "A1601"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "Aura_Note_2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "MEIZU_M5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "p212"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4e

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "mido"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x47

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "kate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "fugu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "XE2X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x78

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "Q427"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x60

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "Q350"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x5e

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "P681"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4f

    goto/16 :goto_1

    :sswitch_40
    const-string v3, "1714"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_41
    const-string v3, "1713"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_42
    const-string v3, "1601"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_43
    const-string v3, "flo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_44
    const-string v3, "deb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_45
    const-string v3, "cv3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_46
    const-string v3, "cv1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_47
    const-string v3, "Z80"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x7b

    goto/16 :goto_1

    :sswitch_48
    const-string v3, "QX1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x64

    goto/16 :goto_1

    :sswitch_49
    const-string v3, "PLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x5c

    goto/16 :goto_1

    :sswitch_4a
    const-string v3, "P85"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x50

    goto/16 :goto_1

    :sswitch_4b
    const-string v3, "MX6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_4c
    const-string v3, "M5c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_4d
    const-string v3, "JGZ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_4e
    const-string v3, "mh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x46

    goto/16 :goto_1

    :sswitch_4f
    const-string v3, "V5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x71

    goto/16 :goto_1

    :sswitch_50
    const-string v3, "V1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x6f

    goto/16 :goto_1

    :sswitch_51
    const-string v3, "Q5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x62

    goto/16 :goto_1

    :sswitch_52
    const-string v3, "C1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_53
    const-string/jumbo v3, "woods_fn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x76

    goto/16 :goto_1

    :sswitch_54
    const-string v3, "ELUGA_A3_Pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_55
    const-string v3, "Z12_PRO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x7a

    goto/16 :goto_1

    :sswitch_56
    const-string v3, "BLACK-1X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_57
    const-string v3, "taido_row"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x69

    goto/16 :goto_1

    :sswitch_58
    const-string v3, "Pixi4-7_3G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x5a

    goto/16 :goto_1

    :sswitch_59
    const-string v3, "GIONEE_GBL7360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_5a
    const-string v3, "GiONEE_CBL7513"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_5b
    const-string v3, "OnePlus5T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4d

    goto/16 :goto_1

    :sswitch_5c
    const-string/jumbo v3, "whyred"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x74

    goto/16 :goto_1

    :sswitch_5d
    const-string/jumbo v3, "watson"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x73

    goto/16 :goto_1

    :sswitch_5e
    const-string v3, "SVP-DTV15"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x67

    goto/16 :goto_1

    :sswitch_5f
    const-string v3, "A7000-a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_60
    const-string v3, "nicklaus_f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_61
    const-string v3, "tcl_eu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x6e

    goto/16 :goto_1

    :sswitch_62
    const-string v3, "ELUGA_Ray_X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_63
    const-string v3, "s905x018"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x68

    goto/16 :goto_1

    :sswitch_64
    const-string v3, "A10-70F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_65
    const-string v3, "namath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_66
    const-string v3, "Slate_Pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x66

    goto/16 :goto_1

    :sswitch_67
    const-string v3, "iris60"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_68
    const-string v3, "BRAVIA_ATV2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_69
    const-string v3, "GiONEE_GBL7319"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_6a
    const-string v3, "panell_dt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x54

    goto/16 :goto_1

    :sswitch_6b
    const-string v3, "panell_ds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x53

    goto/16 :goto_1

    :sswitch_6c
    const-string v3, "panell_dl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x52

    goto/16 :goto_1

    :sswitch_6d
    const-string/jumbo v3, "vernee_M5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x72

    goto/16 :goto_1

    :sswitch_6e
    const-string v3, "Phantom6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x59

    goto/16 :goto_1

    :sswitch_6f
    const-string v3, "ComioS1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_70
    const-string v3, "XT1663"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x79

    goto/16 :goto_1

    :sswitch_71
    const-string v3, "AquaPowerM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_72
    const-string v3, "PGN611"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x58

    goto/16 :goto_1

    :sswitch_73
    const-string v3, "PGN610"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x57

    goto :goto_1

    :sswitch_74
    const-string v3, "PGN528"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x56

    goto :goto_1

    :sswitch_75
    const-string v3, "NX573J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4c

    goto :goto_1

    :sswitch_76
    const-string v3, "NX541J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4b

    goto :goto_1

    :sswitch_77
    const-string v3, "CP8676_I02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x12

    goto :goto_1

    :sswitch_78
    const-string v3, "K50a40"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3e

    goto :goto_1

    :sswitch_79
    const-string v3, "GIONEE_SWW1631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x2c

    goto :goto_1

    :sswitch_7a
    const-string v3, "GIONEE_SWW1627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x2b

    goto :goto_1

    :sswitch_7b
    const-string v3, "GIONEE_SWW1609"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x2a

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1584
    :pswitch_0
    sput-boolean v4, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1585
    nop

    .line 1590
    :goto_2
    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v5, 0x1e9d52

    if-eq v3, v5, :cond_7

    const v1, 0x1e9d5f

    if-eq v3, v1, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    const-string v1, "AFTN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const-string v3, "AFTA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :goto_3
    const/4 v1, -0x1

    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    .line 1593
    :pswitch_1
    sput-boolean v4, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1594
    nop

    .line 1600
    :goto_5
    sput-boolean v4, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    goto :goto_6

    .line 1436
    :cond_8
    nop

    .line 1602
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    sget-boolean v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return v0

    .line 1602
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7b
        -0x7fd6c381 -> :sswitch_7a
        -0x7fd6c368 -> :sswitch_79
        -0x7d026749 -> :sswitch_78
        -0x78929d6a -> :sswitch_77
        -0x75f50a1e -> :sswitch_76
        -0x75f4fe9d -> :sswitch_75
        -0x736f875c -> :sswitch_74
        -0x736f83c2 -> :sswitch_73
        -0x736f83c1 -> :sswitch_72
        -0x7327ce1c -> :sswitch_71
        -0x651ebb62 -> :sswitch_70
        -0x6423293b -> :sswitch_6f
        -0x604f5117 -> :sswitch_6e
        -0x5ca40cc4 -> :sswitch_6d
        -0x58520ec1 -> :sswitch_6c
        -0x58520eba -> :sswitch_6b
        -0x58520eb9 -> :sswitch_6a
        -0x4eaed329 -> :sswitch_69
        -0x4892fb4f -> :sswitch_68
        -0x465b3df3 -> :sswitch_67
        -0x43e6c939 -> :sswitch_66
        -0x3ec0fcc5 -> :sswitch_65
        -0x3b33cca0 -> :sswitch_64
        -0x398ae3f6 -> :sswitch_63
        -0x391f0fb4 -> :sswitch_62
        -0x346837ae -> :sswitch_61
        -0x323788e3 -> :sswitch_60
        -0x30f57652 -> :sswitch_5f
        -0x2f88a116 -> :sswitch_5e
        -0x2f61ed98 -> :sswitch_5d
        -0x2efd0837 -> :sswitch_5c
        -0x2e9e9441 -> :sswitch_5b
        -0x2247b8b1 -> :sswitch_5a
        -0x1f0fa2b7 -> :sswitch_59
        -0x19af3b41 -> :sswitch_58
        -0x114fad3e -> :sswitch_57
        -0x10dae90b -> :sswitch_56
        -0x1084b7b7 -> :sswitch_55
        -0xa5988e9 -> :sswitch_54
        -0x35f9fbf -> :sswitch_53
        0x84e -> :sswitch_52
        0xa04 -> :sswitch_51
        0xa9b -> :sswitch_50
        0xa9f -> :sswitch_4f
        0xd9b -> :sswitch_4e
        0x11ebd -> :sswitch_4d
        0x127db -> :sswitch_4c
        0x12beb -> :sswitch_4b
        0x1334d -> :sswitch_4a
        0x135c9 -> :sswitch_49
        0x13aea -> :sswitch_48
        0x158d2 -> :sswitch_47
        0x1821e -> :sswitch_46
        0x18220 -> :sswitch_45
        0x18401 -> :sswitch_44
        0x18c69 -> :sswitch_43
        0x1716e6 -> :sswitch_42
        0x171ac8 -> :sswitch_41
        0x171ac9 -> :sswitch_40
        0x252f5f -> :sswitch_3f
        0x25981d -> :sswitch_3e
        0x259b88 -> :sswitch_3d
        0x290a13 -> :sswitch_3c
        0x3021fd -> :sswitch_3b
        0x321e47 -> :sswitch_3a
        0x332327 -> :sswitch_39
        0x33ab63 -> :sswitch_38
        0x27691fb -> :sswitch_37
        0x349f581 -> :sswitch_36
        0x3ab0ea7 -> :sswitch_35
        0x3e53ea5 -> :sswitch_34
        0x3f25a44 -> :sswitch_33
        0x3f25a46 -> :sswitch_32
        0x3f25a49 -> :sswitch_31
        0x3f25e05 -> :sswitch_30
        0x3f25e07 -> :sswitch_2f
        0x3f25e09 -> :sswitch_2e
        0x3f261c6 -> :sswitch_2d
        0x48dce49 -> :sswitch_2c
        0x48dd589 -> :sswitch_2b
        0x48dd8af -> :sswitch_2a
        0x4d36832 -> :sswitch_29
        0x4f0b0e7 -> :sswitch_28
        0x5e2479e -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .locals 7
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "crypto"    # Landroid/media/MediaCrypto;
    .param p5, "codecOperatingRate"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxValues(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 593
    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    iget v6, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 594
    move-object v1, p0

    move-object v2, p3

    move v4, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMediaFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object v0

    .line 600
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 601
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 602
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 603
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v2, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    goto :goto_0

    .line 602
    :cond_0
    nop

    .line 605
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_1

    .line 600
    :cond_1
    nop

    .line 607
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 608
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_2

    .line 609
    new-instance v1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    goto :goto_2

    .line 608
    :cond_2
    nop

    .line 611
    :goto_2
    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 1
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J

    .line 955
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 956
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 957
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 958
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 959
    return-void
.end method

.method protected flushOrReleaseCodec()Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 642
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 642
    return v1

    .line 644
    :catchall_0
    move-exception v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    throw v1
.end method

.method protected getCodecMaxValues(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 11
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "streamFormats"    # [Landroidx/media2/exoplayer/external/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1219
    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 1220
    .local v0, "maxWidth":I
    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 1221
    .local v1, "maxHeight":I
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v2

    .line 1222
    .local v2, "maxInputSize":I
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_2

    .line 1225
    if-eq v2, v5, :cond_1

    .line 1226
    iget-object v3, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v4, p2, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v6, p2, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 1227
    invoke-static {p1, v3, v4, v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result v3

    .line 1228
    .local v3, "codecMaxInputSize":I
    if-eq v3, v5, :cond_0

    .line 1232
    int-to-float v4, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 1235
    .local v4, "scaledMaxInputSize":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1228
    .end local v4    # "scaledMaxInputSize":I
    :cond_0
    goto :goto_0

    .line 1225
    .end local v3    # "codecMaxInputSize":I
    :cond_1
    nop

    .line 1238
    :goto_0
    new-instance v3, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v3, v0, v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object v3

    .line 1240
    :cond_2
    const/4 v3, 0x0

    .line 1241
    .local v3, "haveUnknownDimensions":Z
    array-length v6, p3

    const/4 v7, 0x0

    move v8, v2

    move v2, v1

    move v1, v0

    const/4 v0, 0x0

    .end local v0    # "maxWidth":I
    .local v1, "maxWidth":I
    .local v2, "maxHeight":I
    .local v8, "maxInputSize":I
    :goto_1
    if-ge v0, v6, :cond_6

    aget-object v9, p3, v0

    .line 1242
    .local v9, "streamFormat":Landroidx/media2/exoplayer/external/Format;
    invoke-virtual {p1, p2, v9, v7}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1244
    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->width:I

    if-eq v10, v5, :cond_4

    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v10, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    or-int/2addr v3, v10

    .line 1246
    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1247
    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1248
    invoke-static {p1, v9}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_4

    .line 1242
    :cond_5
    nop

    .line 1241
    .end local v9    # "streamFormat":Landroidx/media2/exoplayer/external/Format;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1251
    :cond_6
    if-eqz v3, :cond_8

    .line 1252
    const-string v0, "MediaCodecVideoRenderer"

    const/16 v4, 0x42

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)Landroid/graphics/Point;

    move-result-object v0

    .line 1254
    .local v0, "codecMaxSize":Landroid/graphics/Point;
    if-eqz v0, :cond_7

    .line 1255
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1256
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1257
    iget-object v4, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1260
    invoke-static {p1, v4, v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Ljava/lang/String;II)I

    move-result v4

    .line 1258
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1261
    const-string v4, "MediaCodecVideoRenderer"

    const/16 v5, 0x39

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Codec max resolution adjusted to: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1254
    :cond_7
    goto :goto_5

    .line 1251
    .end local v0    # "codecMaxSize":Landroid/graphics/Point;
    :cond_8
    nop

    .line 1264
    :goto_5
    new-instance v0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v0, v1, v2, v8}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object v0
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    return v0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
    .locals 6
    .param p1, "operatingRate"    # F
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "streamFormats"    # [Landroidx/media2/exoplayer/external/Format;

    .line 653
    const/high16 v0, -0x40800000    # -1.0f

    .line 654
    .local v0, "maxFrameRate":F
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, -0x40800000    # -1.0f

    if-ge v2, v1, :cond_1

    aget-object v4, p3, v2

    .line 655
    .local v4, "streamFormat":Landroidx/media2/exoplayer/external/Format;
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 656
    .local v5, "streamFrameRate":F
    cmpl-float v3, v5, v3

    if-eqz v3, :cond_0

    .line 657
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 656
    :cond_0
    nop

    .line 654
    .end local v4    # "streamFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v5    # "streamFrameRate":F
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    :cond_1
    cmpl-float v1, v0, v3

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    mul-float v3, v0, p1

    :goto_2
    return v3
.end method

.method protected getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .locals 1
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

    .line 362
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    invoke-static {p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .locals 4
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "codecMaxValues"    # Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;
    .param p3, "codecOperatingRate"    # F
    .param p4, "deviceNeedsNoPostProcessWorkaround"    # Z
    .param p5, "tunnelingAudioSessionId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1164
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 1166
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const-string v1, "mime"

    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v1, "width"

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1168
    const-string v1, "height"

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1169
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1171
    const-string v1, "frame-rate"

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1172
    const-string v1, "rotation-degrees"

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1173
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    .line 1174
    const-string/jumbo v1, "video/dolby-vision"

    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1177
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 1178
    invoke-static {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 1179
    .local v1, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1180
    const-string v2, "profile"

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 1181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1180
    invoke-static {v0, v2, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    goto :goto_0

    .line 1179
    :cond_0
    goto :goto_0

    .line 1174
    .end local v1    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    nop

    .line 1185
    :goto_0
    const-string v1, "max-width"

    iget v2, p2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1186
    const-string v1, "max-height"

    iget v2, p2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1187
    const-string v1, "max-input-size"

    iget v2, p2, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1190
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    .line 1191
    const-string v1, "priority"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1192
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_2

    .line 1193
    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 1192
    :cond_2
    goto :goto_1

    .line 1190
    :cond_3
    nop

    .line 1196
    :goto_1
    if-eqz p4, :cond_4

    .line 1197
    const-string v1, "no-post-process"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1198
    const-string v1, "auto-frc"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    .line 1196
    :cond_4
    nop

    .line 1200
    :goto_2
    if-eqz p5, :cond_5

    .line 1201
    invoke-static {v0, p5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    goto :goto_3

    .line 1200
    :cond_5
    nop

    .line 1203
    :goto_3
    return-object v0
.end method

.method protected getOutputStreamOffsetUs()J
    .locals 2

    .line 853
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

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

    .line 511
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 512
    move-object v0, p2

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 513
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 514
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 515
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    .line 516
    .local v0, "codec":Landroid/media/MediaCodec;
    if-eqz v0, :cond_1

    .line 517
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_0

    .line 516
    :cond_1
    nop

    .line 519
    .end local v0    # "codec":Landroid/media/MediaCodec;
    :goto_0
    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 520
    move-object v0, p2

    check-cast v0, Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media2/exoplayer/external/video/VideoFrameMetadataListener;

    goto :goto_1

    .line 522
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 524
    :goto_1
    return-void
.end method

.method public isReady()Z
    .locals 9

    .line 445
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_3

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    :goto_0
    goto :goto_1

    .line 445
    :cond_3
    nop

    .line 448
    :goto_1
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 449
    return v1

    .line 445
    :cond_4
    nop

    .line 450
    :goto_2
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_5

    .line 452
    return v0

    .line 453
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_6

    .line 455
    return v1

    .line 458
    :cond_6
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 459
    return v0
.end method

.method protected maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJ)Z
    .locals 4
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J
    .param p5, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0, p5, p6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result v0

    .line 976
    .local v0, "droppedSourceBufferCount":I
    if-nez v0, :cond_0

    .line 977
    const/4 v1, 0x0

    return v1

    .line 979
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v2, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 982
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 983
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    .line 984
    return v3
.end method

.method maybeNotifyRenderedFirstFrame()V
    .locals 2

    .line 1073
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 1075
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    goto :goto_0

    .line 1073
    :cond_0
    nop

    .line 1077
    :goto_0
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 667
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 668
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 480
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 481
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 483
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 484
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 485
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->disable()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 488
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 3
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 397
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 398
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 399
    .local v0, "oldTunnelingAudioSessionId":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getConfiguration()Landroidx/media2/exoplayer/external/RendererConfiguration;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 400
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 401
    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq v1, v0, :cond_1

    .line 402
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->releaseCodec()V

    goto :goto_1

    .line 401
    :cond_1
    nop

    .line 404
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->enabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 405
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->enable()V

    .line 406
    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V
    .locals 2
    .param p1, "formatHolder"    # Landroidx/media2/exoplayer/external/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 672
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    .line 673
    iget-object v0, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 674
    .local v0, "newFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 675
    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 676
    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    iput v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    .line 677
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .line 698
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "crop-left"

    .line 699
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "crop-top"

    .line 700
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 699
    :cond_1
    goto :goto_0

    .line 698
    :cond_2
    nop

    .line 700
    :goto_0
    const/4 v0, 0x0

    .line 702
    .local v0, "hasCrop":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 703
    const-string v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    goto :goto_2

    .line 704
    :cond_3
    const-string/jumbo v2, "width"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    :goto_2
    nop

    .line 706
    .local v2, "width":I
    if-eqz v0, :cond_4

    .line 707
    const-string v3, "crop-bottom"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "crop-top"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    goto :goto_3

    .line 708
    :cond_4
    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    :goto_3
    move v1, v3

    .line 709
    .local v1, "height":I
    invoke-direct {p0, p1, v2, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    .line 710
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 428
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 429
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 430
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 431
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 432
    iget v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v3, :cond_0

    .line 433
    iget-object v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v4, v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 434
    iput v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    goto :goto_0

    .line 432
    :cond_0
    nop

    .line 436
    :goto_0
    if-eqz p3, :cond_1

    .line 437
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_1

    .line 439
    :cond_1
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 441
    :goto_1
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 6
    .param p1, "presentationTimeUs"    # J
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 875
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 876
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    .line 878
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    aget-wide v4, v2, v3

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    .line 879
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 880
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    iget v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 876
    :cond_0
    nop

    .line 893
    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .locals 4
    .param p1, "presentationTimeUs"    # J

    .line 858
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 859
    .local v0, "format":Landroidx/media2/exoplayer/external/Format;
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-direct {p0, v1, v2, v3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->processOutputFormat(Landroid/media/MediaCodec;II)V

    goto :goto_0

    .line 859
    :cond_0
    nop

    .line 862
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 863
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 864
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    .line 865
    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .locals 4
    .param p1, "buffer"    # Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 687
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 688
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    .line 689
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    .line 692
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    goto :goto_0

    .line 689
    :cond_0
    nop

    .line 694
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 4

    .line 497
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 500
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 501
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_0

    .line 500
    :cond_0
    nop

    .line 503
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 504
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    goto :goto_1

    .line 499
    :cond_1
    nop

    .line 507
    :goto_1
    return-void

    .line 499
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 500
    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    .line 501
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_2

    .line 500
    :cond_2
    nop

    .line 503
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 504
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    goto :goto_3

    .line 499
    :cond_3
    nop

    .line 504
    :goto_3
    throw v1
.end method

.method protected onStarted()V
    .locals 4

    .line 465
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 469
    return-void
.end method

.method protected onStopped()V
    .locals 2

    .line 473
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 474
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 475
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 476
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

    .line 410
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 411
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    goto :goto_1

    .line 413
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 414
    const-string v2, "MediaCodecVideoRenderer"

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    const/16 v3, 0x41

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Too many stream changes, so dropping offset: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    .line 419
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetsUs:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 420
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->pendingOutputStreamSwitchTimesUs:[J

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastInputTimeUs:J

    aput-wide v2, v0, v1

    .line 422
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V

    .line 423
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
    .locals 31
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

    .line 724
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    move/from16 v14, p7

    move-wide/from16 v6, p9

    iget-wide v0, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 725
    iput-wide v9, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    goto :goto_0

    .line 724
    :cond_0
    nop

    .line 728
    :goto_0
    iget-wide v0, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->outputStreamOffsetUs:J

    sub-long v4, v6, v0

    .line 730
    .local v4, "presentationTimeUs":J
    const/4 v0, 0x1

    if-eqz p11, :cond_1

    .line 731
    invoke-virtual {v8, v13, v14, v4, v5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    .line 732
    return v0

    .line 735
    :cond_1
    sub-long v2, v6, v9

    .line 736
    .local v2, "earlyUs":J
    iget-object v1, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v15, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dummySurface:Landroid/view/Surface;

    const/16 v16, 0x0

    if-ne v1, v15, :cond_3

    .line 738
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    invoke-virtual {v8, v13, v14, v4, v5}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    .line 740
    return v0

    .line 742
    :cond_2
    return v16

    .line 745
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    .line 746
    .local v17, "elapsedRealtimeNowUs":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getState()I

    move-result v1

    const/4 v15, 0x2

    if-ne v1, v15, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    move v15, v1

    .line 747
    .local v15, "isStarted":Z
    iget-boolean v1, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-eqz v1, :cond_10

    if-eqz v15, :cond_6

    iget-wide v0, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    sub-long v0, v17, v0

    .line 749
    invoke-virtual {v8, v2, v3, v0, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v6, v4

    goto/16 :goto_7

    :cond_5
    goto :goto_2

    .line 747
    :cond_6
    nop

    .line 760
    :goto_2
    if-eqz v15, :cond_f

    iget-wide v0, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v21, v9, v0

    if-nez v21, :cond_7

    move-wide v6, v4

    goto/16 :goto_6

    .line 766
    :cond_7
    sub-long v21, v17, v11

    .line 767
    .local v21, "elapsedSinceStartOfLoopUs":J
    sub-long v2, v2, v21

    .line 770
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v23

    .line 771
    .local v23, "systemTimeNs":J
    mul-long v0, v2, v19

    add-long v9, v23, v0

    .line 774
    .local v9, "unadjustedFrameReleaseTimeNs":J
    iget-object v0, v8, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0, v6, v7, v9, v10}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v25

    .line 776
    .local v25, "adjustedReleaseTimeNs":J
    sub-long v0, v25, v23

    div-long v2, v0, v19

    .line 778
    invoke-virtual {v8, v2, v3, v11, v12}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 779
    move-object/from16 v1, p0

    move-wide/from16 v27, v9

    move-wide v9, v2

    .end local v2    # "earlyUs":J
    .local v9, "earlyUs":J
    .local v27, "unadjustedFrameReleaseTimeNs":J
    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v29, v4

    .end local v4    # "presentationTimeUs":J
    .local v29, "presentationTimeUs":J
    move-wide/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(Landroid/media/MediaCodec;IJJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 780
    return v16

    .line 779
    :cond_8
    goto :goto_3

    .line 778
    .end local v27    # "unadjustedFrameReleaseTimeNs":J
    .end local v29    # "presentationTimeUs":J
    .restart local v2    # "earlyUs":J
    .restart local v4    # "presentationTimeUs":J
    .local v9, "unadjustedFrameReleaseTimeNs":J
    :cond_9
    move-wide/from16 v29, v4

    move-wide/from16 v27, v9

    move-wide v9, v2

    .line 781
    .end local v2    # "earlyUs":J
    .end local v4    # "presentationTimeUs":J
    .local v9, "earlyUs":J
    .restart local v27    # "unadjustedFrameReleaseTimeNs":J
    .restart local v29    # "presentationTimeUs":J
    :goto_3
    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 782
    move-wide/from16 v6, v29

    .end local v29    # "presentationTimeUs":J
    .local v6, "presentationTimeUs":J
    invoke-virtual {v8, v13, v14, v6, v7}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;IJ)V

    .line 783
    const/4 v0, 0x1

    return v0

    .line 786
    .end local v6    # "presentationTimeUs":J
    .restart local v29    # "presentationTimeUs":J
    :cond_a
    move-wide/from16 v6, v29

    .end local v29    # "presentationTimeUs":J
    .restart local v6    # "presentationTimeUs":J
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    .line 788
    const-wide/32 v0, 0xc350

    cmp-long v2, v9, v0

    if-gez v2, :cond_b

    .line 789
    move-object/from16 v1, p0

    move-wide v2, v6

    move-wide/from16 v4, v25

    move-wide/from16 v29, v6

    .end local v6    # "presentationTimeUs":J
    .restart local v29    # "presentationTimeUs":J
    move-object/from16 v6, p12

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V

    .line 790
    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v4, v29

    move-wide/from16 v6, v25

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    .line 791
    const/4 v0, 0x1

    return v0

    .line 788
    .end local v29    # "presentationTimeUs":J
    .restart local v6    # "presentationTimeUs":J
    :cond_b
    move-wide/from16 v29, v6

    .end local v6    # "presentationTimeUs":J
    .restart local v29    # "presentationTimeUs":J
    goto :goto_5

    .line 795
    .end local v29    # "presentationTimeUs":J
    .restart local v6    # "presentationTimeUs":J
    :cond_c
    move-wide/from16 v29, v6

    .end local v6    # "presentationTimeUs":J
    .restart local v29    # "presentationTimeUs":J
    const-wide/16 v0, 0x7530

    cmp-long v2, v9, v0

    if-gez v2, :cond_e

    .line 796
    const-wide/16 v0, 0x2af8

    cmp-long v2, v9, v0

    if-lez v2, :cond_d

    .line 801
    const-wide/16 v0, 0x2710

    sub-long v2, v9, v0

    :try_start_0
    div-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    goto :goto_4

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 804
    return v16

    .line 796
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_d
    nop

    .line 807
    :goto_4
    move-object/from16 v1, p0

    move-wide/from16 v2, v29

    move-wide/from16 v4, v25

    move-object/from16 v6, p12

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V

    .line 808
    move-wide/from16 v6, v29

    .end local v29    # "presentationTimeUs":J
    .restart local v6    # "presentationTimeUs":J
    invoke-virtual {v8, v13, v14, v6, v7}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    .line 809
    const/4 v0, 0x1

    return v0

    .line 795
    .end local v6    # "presentationTimeUs":J
    .restart local v29    # "presentationTimeUs":J
    :cond_e
    move-wide/from16 v6, v29

    .line 814
    .end local v29    # "presentationTimeUs":J
    .restart local v6    # "presentationTimeUs":J
    :goto_5
    return v16

    .line 760
    .end local v6    # "presentationTimeUs":J
    .end local v9    # "earlyUs":J
    .end local v21    # "elapsedSinceStartOfLoopUs":J
    .end local v23    # "systemTimeNs":J
    .end local v25    # "adjustedReleaseTimeNs":J
    .end local v27    # "unadjustedFrameReleaseTimeNs":J
    .restart local v2    # "earlyUs":J
    .restart local v4    # "presentationTimeUs":J
    :cond_f
    move-wide v6, v4

    .line 761
    .end local v4    # "presentationTimeUs":J
    .restart local v6    # "presentationTimeUs":J
    :goto_6
    return v16

    .line 747
    .end local v6    # "presentationTimeUs":J
    .restart local v4    # "presentationTimeUs":J
    :cond_10
    move-wide v6, v4

    .line 750
    .end local v4    # "presentationTimeUs":J
    .restart local v6    # "presentationTimeUs":J
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 751
    .local v9, "releaseTimeNs":J
    move-object/from16 v1, p0

    move-wide/from16 v19, v2

    .end local v2    # "earlyUs":J
    .local v19, "earlyUs":J
    move-wide v2, v6

    move-wide v4, v9

    move-wide/from16 v29, v6

    .end local v6    # "presentationTimeUs":J
    .restart local v29    # "presentationTimeUs":J
    move-object/from16 v6, p12

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media2/exoplayer/external/Format;)V

    .line 752
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 753
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v4, v29

    move-wide v6, v9

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    move-wide/from16 v1, v29

    goto :goto_8

    .line 755
    :cond_11
    move-wide/from16 v1, v29

    .end local v29    # "presentationTimeUs":J
    .local v1, "presentationTimeUs":J
    invoke-virtual {v8, v13, v14, v1, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    .line 757
    :goto_8
    const/4 v0, 0x1

    return v0
.end method

.method protected releaseCodec()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 632
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 635
    nop

    .line 636
    return-void

    .line 634
    :catchall_0
    move-exception v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    throw v1
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J

    .line 1013
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 1014
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1015
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1016
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1018
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v2, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v2, v0

    iput v2, v1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1019
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1020
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1021
    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V
    .locals 4
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J
    .param p5, "releaseTimeNs"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1035
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 1036
    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 1038
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 1039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->lastRenderTimeUs:J

    .line 1040
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1041
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1042
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1043
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 1
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 917
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result v0

    return v0
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 1
    .param p1, "earlyUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 904
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    return v0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 3
    .param p1, "earlyUs"    # J
    .param p3, "elapsedSinceLastRenderUs"    # J

    .line 930
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x186a0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected shouldInitCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .locals 1
    .param p1, "codecInfo"    # Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 575
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

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

.method protected skipOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "presentationTimeUs"    # J

    .line 941
    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 942
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 943
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 944
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 945
    return-void
.end method

.method protected supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I
    .locals 11
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

    .line 303
    .local p2, "drmSessionManager":Landroidx/media2/exoplayer/external/drm/DrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 304
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 305
    return v2

    .line 307
    :cond_0
    iget-object v1, p3, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 309
    .local v1, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 310
    .local v4, "requiresSecureDecryption":Z
    :goto_0
    nop

    .line 311
    invoke-static {p1, p3, v4, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v5

    .line 316
    .local v5, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    nop

    .line 319
    invoke-static {p1, p3, v2, v2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 316
    :cond_2
    nop

    .line 325
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 326
    return v3

    .line 328
    :cond_3
    invoke-static {p2, v1}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->supportsFormatDrm(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 329
    const/4 v2, 0x2

    return v2

    .line 332
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 333
    .local v6, "decoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    invoke-virtual {v6, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v7

    .line 335
    .local v7, "isFormatSupported":Z
    invoke-virtual {v6, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 336
    const/16 v8, 0x10

    goto :goto_2

    .line 337
    :cond_5
    const/16 v8, 0x8

    :goto_2
    nop

    .line 338
    .local v8, "adaptiveSupport":I
    const/4 v9, 0x0

    .line 339
    .local v9, "tunnelingSupport":I
    if-eqz v7, :cond_9

    .line 340
    nop

    .line 341
    invoke-static {p1, p3, v4, v3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 346
    .local v3, "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 347
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 348
    .local v2, "tunnelingDecoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    invoke-virtual {v2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 349
    invoke-virtual {v2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 350
    const/16 v9, 0x20

    goto :goto_3

    .line 349
    :cond_6
    goto :goto_3

    .line 348
    :cond_7
    goto :goto_3

    .line 346
    .end local v2    # "tunnelingDecoderInfo":Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    :cond_8
    goto :goto_3

    .line 339
    .end local v3    # "tunnelingDecoderInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;>;"
    :cond_9
    nop

    .line 354
    :goto_3
    if-eqz v7, :cond_a

    const/4 v2, 0x4

    goto :goto_4

    :cond_a
    const/4 v2, 0x3

    .line 355
    .local v2, "formatSupport":I
    :goto_4
    or-int v3, v8, v9

    or-int/2addr v3, v2

    return v3
.end method

.method protected updateDroppedBufferCounters(I)V
    .locals 3
    .param p1, "droppedBufferCount"    # I

    .line 994
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->droppedBufferCount:I

    .line 995
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 996
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 997
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v2, v2, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 999
    iget v0, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez v0, :cond_0

    iget v1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt v1, v0, :cond_0

    .line 1000
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    goto :goto_0

    .line 999
    :cond_0
    nop

    .line 1002
    :goto_0
    return-void
.end method
