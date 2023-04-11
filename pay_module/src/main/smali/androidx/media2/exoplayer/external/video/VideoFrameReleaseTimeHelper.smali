.class public final Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;,
        Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private final displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private vsyncDurationNs:J

.field private vsyncOffsetNs:J

.field private final vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 82
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    goto :goto_0

    .line 84
    :cond_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    .line 86
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 87
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->maybeBuildDefaultDisplayListenerV17(Landroid/content/Context;)Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    move-result-object v0

    nop

    :cond_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 88
    invoke-static {}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    goto :goto_1

    .line 90
    :cond_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 91
    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    .line 93
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 94
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    .line 95
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;

    .line 41
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->updateDefaultDisplayRefreshRateParams()V

    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 14
    .param p0, "releaseTime"    # J
    .param p2, "sampledVsyncTime"    # J
    .param p4, "vsyncDuration"    # J

    .line 219
    sub-long v0, p0, p2

    div-long v0, v0, p4

    .line 220
    .local v0, "vsyncCount":J
    mul-long v2, p4, v0

    add-long v2, p2, v2

    .line 223
    .local v2, "snappedTimeNs":J
    cmp-long v4, p0, v2

    if-gtz v4, :cond_0

    .line 224
    sub-long v4, v2, p4

    .line 225
    .local v4, "snappedBeforeNs":J
    move-wide v6, v2

    goto :goto_0

    .line 227
    .end local v4    # "snappedBeforeNs":J
    :cond_0
    move-wide v4, v2

    .line 228
    .restart local v4    # "snappedBeforeNs":J
    add-long v6, v2, p4

    .line 230
    .local v6, "snappedAfterNs":J
    :goto_0
    sub-long v8, v6, p0

    .line 231
    .local v8, "snappedAfterDiff":J
    sub-long v10, p0, v4

    .line 232
    .local v10, "snappedBeforeDiff":J
    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    move-wide v12, v6

    goto :goto_1

    :cond_1
    move-wide v12, v4

    :goto_1
    return-wide v12
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 9
    .param p1, "frameTimeNs"    # J
    .param p3, "releaseTimeNs"    # J

    .line 213
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, p1, v0

    .line 214
    .local v0, "elapsedFrameTimeNs":J
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long v2, p3, v2

    .line 215
    .local v2, "elapsedReleaseTimeNs":J
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1312d00

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private maybeBuildDefaultDisplayListenerV17(Landroid/content/Context;)Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 198
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 199
    .local v0, "manager":Landroid/hardware/display/DisplayManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;-><init>(Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-object v1
.end method

.method private updateDefaultDisplayRefreshRateParams()V
    .locals 7

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 205
    .local v0, "defaultDisplay":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    float-to-double v1, v1

    .line 207
    .local v1, "defaultDisplayRefreshRate":D
    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    double-to-long v3, v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 208
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v5, 0x50

    mul-long v3, v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_0

    .line 205
    .end local v1    # "defaultDisplayRefreshRate":D
    :cond_0
    nop

    .line 210
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 22
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "unadjustedReleaseTimeNs"    # J

    .line 133
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v1

    .line 136
    .local v5, "framePresentationTimeNs":J
    move-wide v7, v5

    .line 137
    .local v7, "adjustedFrameTimeNs":J
    move-wide/from16 v9, p3

    .line 139
    .local v9, "adjustedReleaseTimeNs":J
    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v11, :cond_4

    .line 141
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v13, v1, v11

    if-eqz v13, :cond_0

    .line 142
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 143
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    iput-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    goto :goto_0

    .line 141
    :cond_0
    nop

    .line 145
    :goto_0
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v13, 0x6

    const/4 v15, 0x0

    cmp-long v16, v11, v13

    if-ltz v16, :cond_2

    .line 150
    iget-wide v13, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v13, v5, v13

    div-long/2addr v13, v11

    .line 153
    .local v13, "averageFrameDurationNs":J
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long/2addr v11, v13

    .line 155
    .local v11, "candidateAdjustedFrameTimeNs":J
    invoke-direct {v0, v11, v12, v3, v4}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 156
    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_1

    .line 158
    :cond_1
    move-wide v7, v11

    .line 159
    move-wide/from16 v16, v9

    .end local v9    # "adjustedReleaseTimeNs":J
    .local v16, "adjustedReleaseTimeNs":J
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v9, v7

    move-wide/from16 v18, v7

    .end local v7    # "adjustedFrameTimeNs":J
    .local v18, "adjustedFrameTimeNs":J
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long/2addr v9, v7

    move-wide/from16 v7, v18

    .line 162
    .end local v11    # "candidateAdjustedFrameTimeNs":J
    .end local v13    # "averageFrameDurationNs":J
    .end local v16    # "adjustedReleaseTimeNs":J
    .end local v18    # "adjustedFrameTimeNs":J
    .restart local v7    # "adjustedFrameTimeNs":J
    .restart local v9    # "adjustedReleaseTimeNs":J
    :goto_1
    move-wide/from16 v16, v9

    goto :goto_2

    .line 165
    :cond_2
    move-wide/from16 v16, v9

    .end local v9    # "adjustedReleaseTimeNs":J
    .restart local v16    # "adjustedReleaseTimeNs":J
    invoke-direct {v0, v5, v6, v3, v4}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 166
    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_2

    .line 165
    :cond_3
    goto :goto_2

    .line 139
    .end local v16    # "adjustedReleaseTimeNs":J
    .restart local v9    # "adjustedReleaseTimeNs":J
    :cond_4
    move-wide/from16 v16, v9

    .line 172
    .end local v9    # "adjustedReleaseTimeNs":J
    .restart local v16    # "adjustedReleaseTimeNs":J
    :goto_2
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v9, :cond_5

    .line 173
    iput-wide v5, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    .line 174
    iput-wide v3, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    .line 175
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 176
    const/4 v9, 0x1

    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_3

    .line 172
    :cond_5
    nop

    .line 179
    :goto_3
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    .line 180
    iput-wide v7, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 182
    iget-object v9, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v9, :cond_8

    iget-wide v10, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v10, v12

    if-nez v14, :cond_6

    goto :goto_4

    .line 185
    :cond_6
    iget-wide v14, v9, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 186
    .local v14, "sampledVsyncTimeNs":J
    cmp-long v9, v14, v12

    if-nez v9, :cond_7

    .line 187
    return-wide v16

    .line 191
    :cond_7
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    move-wide/from16 v9, v16

    move-wide/from16 v18, v11

    move-wide v11, v14

    move-wide/from16 v20, v14

    .end local v14    # "sampledVsyncTimeNs":J
    .local v20, "sampledVsyncTimeNs":J
    move-wide/from16 v13, v18

    invoke-static/range {v9 .. v14}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v9

    .line 193
    .local v9, "snappedTimeNs":J
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long v11, v9, v11

    return-wide v11

    .line 182
    .end local v9    # "snappedTimeNs":J
    .end local v20    # "sampledVsyncTimeNs":J
    :cond_8
    :goto_4
    nop

    .line 183
    return-wide v16
.end method

.method public disable()V
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->unregister()V

    goto :goto_0

    .line 116
    :cond_0
    nop

    .line 119
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    goto :goto_1

    .line 115
    :cond_1
    nop

    .line 121
    :goto_1
    return-void
.end method

.method public enable()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->displayListener:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->register()V

    goto :goto_0

    .line 104
    :cond_0
    nop

    .line 107
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;->updateDefaultDisplayRefreshRateParams()V

    goto :goto_1

    .line 102
    :cond_1
    nop

    .line 109
    :goto_1
    return-void
.end method
