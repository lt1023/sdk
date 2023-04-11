.class public Landroidx/media2/exoplayer/external/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/LoadControl;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = true

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private hasVideo:Z

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferAudioUs:J

.field private final minBufferVideoUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final retainBackBufferFromKeyframe:Z

.field private final targetBufferBytesOverwrite:I

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 243
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;)V
    .locals 11
    .param p1, "allocator"    # Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    const/16 v2, 0x3a98

    const v3, 0xc350

    const v4, 0xc350

    const/16 v5, 0x9c4

    const/16 v6, 0x1388

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;IIIIIIZIZ)V

    .line 260
    return-void
.end method

.method protected constructor <init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;IIIIIIZIZ)V
    .locals 3
    .param p1, "allocator"    # Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    .param p2, "minBufferAudioMs"    # I
    .param p3, "minBufferVideoMs"    # I
    .param p4, "maxBufferMs"    # I
    .param p5, "bufferForPlaybackMs"    # I
    .param p6, "bufferForPlaybackAfterRebufferMs"    # I
    .param p7, "targetBufferBytes"    # I
    .param p8, "prioritizeTimeOverSizeThresholds"    # Z
    .param p9, "backBufferDurationMs"    # I
    .param p10, "retainBackBufferFromKeyframe"    # Z

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const-string v0, "bufferForPlaybackMs"

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {p5, v2, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "bufferForPlaybackAfterRebufferMs"

    const-string v1, "0"

    invoke-static {p6, v2, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "minBufferAudioMs"

    const-string v1, "bufferForPlaybackMs"

    invoke-static {p2, p5, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "minBufferVideoMs"

    const-string v1, "bufferForPlaybackMs"

    invoke-static {p3, p5, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "minBufferAudioMs"

    const-string v1, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p2, p6, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "minBufferVideoMs"

    const-string v1, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p3, p6, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "maxBufferMs"

    const-string v1, "minBufferAudioMs"

    invoke-static {p4, p2, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "maxBufferMs"

    const-string v1, "minBufferVideoMs"

    invoke-static {p4, p3, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "backBufferDurationMs"

    const-string v1, "0"

    invoke-static {p9, v2, v0, v1}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    .line 318
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferAudioUs:J

    .line 319
    int-to-long v0, p3

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferVideoUs:J

    .line 320
    int-to-long v0, p4

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->maxBufferUs:J

    .line 321
    int-to-long v0, p5

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 322
    int-to-long v0, p6

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 323
    iput p7, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 324
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 325
    int-to-long v0, p9

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->backBufferDurationUs:J

    .line 326
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    .line 327
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;IIIIIZ)V
    .locals 11
    .param p1, "allocator"    # Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "maxBufferMs"    # I
    .param p4, "bufferForPlaybackMs"    # I
    .param p5, "bufferForPlaybackAfterRebufferMs"    # I
    .param p6, "targetBufferBytes"    # I
    .param p7, "prioritizeTimeOverSizeThresholds"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;IIIIIIZIZ)V

    .line 283
    return-void
.end method

.method static synthetic access$000(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 34
    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "value1"    # I
    .param p1, "value2"    # I
    .param p2, "name1"    # Ljava/lang/String;
    .param p3, "name2"    # Ljava/lang/String;

    .line 437
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be less than "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 438
    return-void
.end method

.method private static hasVideo([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)Z
    .locals 3
    .param p0, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p1, "trackSelectionArray"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 429
    aget-object v1, p0, v0

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x1

    return v1

    .line 429
    :cond_0
    nop

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private reset(Z)V
    .locals 1
    .param p1, "resetAllocator"    # Z

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    .line 421
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    .line 422
    if-eqz p1, :cond_0

    .line 423
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->reset()V

    goto :goto_0

    .line 422
    :cond_0
    nop

    .line 425
    :goto_0
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferSize([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)I
    .locals 3
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackSelectionArray"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "targetBufferSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 412
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 413
    aget-object v2, p1, v1

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 412
    :cond_0
    nop

    .line 411
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getAllocator()Landroidx/media2/exoplayer/external/upstream/Allocator;
    .locals 1

    .line 357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    .line 362
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->reset(Z)V

    .line 332
    return-void
.end method

.method public onReleased()V
    .locals 1

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->reset(Z)V

    .line 353
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->reset(Z)V

    .line 348
    return-void
.end method

.method public onTracksSelected([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .locals 2
    .param p1, "renderers"    # [Landroidx/media2/exoplayer/external/Renderer;
    .param p2, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "trackSelections"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 337
    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->hasVideo([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->hasVideo:Z

    .line 338
    nop

    .line 339
    iget v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p0, p1, p3}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->calculateTargetBufferSize([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)I

    move-result v0

    goto :goto_0

    .line 341
    :cond_0
    nop

    :goto_0
    iput v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    .line 342
    nop

    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    iget v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 343
    nop

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public shouldContinueLoading(JF)Z
    .locals 10
    .param p1, "bufferedDurationUs"    # J
    .param p3, "playbackSpeed"    # F

    .line 372
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, "targetBufferSizeReached":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->hasVideo:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferVideoUs:J

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferAudioUs:J

    .line 374
    .local v4, "minBufferUs":J
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 377
    nop

    .line 378
    invoke-static {v4, v5, p3}, Landroidx/media2/exoplayer/external/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v6

    .line 379
    .local v6, "mediaDurationMinBufferUs":J
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_2

    .line 374
    .end local v6    # "mediaDurationMinBufferUs":J
    :cond_2
    nop

    .line 381
    :goto_2
    cmp-long v1, p1, v4

    if-gez v1, :cond_5

    .line 382
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    nop

    :cond_4
    :goto_3
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    goto :goto_5

    .line 383
    :cond_5
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->maxBufferUs:J

    cmp-long v6, p1, v1

    if-gez v6, :cond_7

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    goto :goto_5

    .line 384
    :cond_7
    :goto_4
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    .line 386
    :goto_5
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    return v1
.end method

.method public shouldStartPlayback(JFZ)Z
    .locals 5
    .param p1, "bufferedDurationUs"    # J
    .param p3, "playbackSpeed"    # F
    .param p4, "rebuffering"    # Z

    .line 392
    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    .line 393
    if-eqz p4, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 394
    .local v0, "minBufferDurationUs":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    .line 397
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v2

    iget v3, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_1

    .line 394
    :cond_2
    nop

    .line 397
    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    .line 394
    :cond_3
    nop

    .line 397
    :goto_2
    const/4 v2, 0x1

    .line 394
    :goto_3
    return v2
.end method
