.class final Landroidx/media2/exoplayer/external/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public hasEnabledTracks:Z

.field public info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

.field private final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

.field private final mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private next:Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public prepared:Z

.field private final rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

.field private rendererPositionOffsetUs:J

.field public final sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

.field private trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

.field private trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/RendererCapabilities;JLandroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)V
    .locals 8
    .param p1, "rendererCapabilities"    # [Landroidx/media2/exoplayer/external/RendererCapabilities;
    .param p2, "rendererPositionOffsetUs"    # J
    .param p4, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p5, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p6, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p7, "info"    # Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    .line 93
    iget-wide v0, p7, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    sub-long v0, p2, v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 94
    iput-object p4, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 95
    iput-object p6, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 96
    iget-object v0, p7, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 97
    iput-object p7, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 98
    array-length v0, p1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/SampleStream;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 99
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 100
    iget-object v1, p7, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v4, p7, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v6, p7, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    .line 101
    move-object v2, p6

    move-object v3, p5

    invoke-static/range {v1 .. v7}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->createMediaPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/upstream/Allocator;JJ)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 103
    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Landroidx/media2/exoplayer/external/source/SampleStream;)V
    .locals 4
    .param p1, "sampleStreams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 397
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 398
    .local v0, "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 399
    aget-object v2, v2, v1

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/RendererCapabilities;->getTrackType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 400
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    new-instance v2, Landroidx/media2/exoplayer/external/source/EmptySampleStream;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/source/EmptySampleStream;-><init>()V

    aput-object v2, p1, v1

    goto :goto_1

    .line 400
    :cond_0
    goto :goto_1

    .line 399
    :cond_1
    nop

    .line 398
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static createMediaPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/upstream/Allocator;JJ)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 9
    .param p0, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p1, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J
    .param p5, "endPositionUs"    # J

    .line 417
    invoke-interface {p1, p0, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/MediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v7

    .line 418
    .local v7, "mediaPeriod":Landroidx/media2/exoplayer/external/source/MediaPeriod;
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p5, v0

    if-eqz v2, :cond_0

    .line 419
    new-instance v8, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    move-object v1, v7

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/source/MediaPeriod;ZJJ)V

    move-object v7, v8

    goto :goto_0

    .line 418
    :cond_0
    nop

    .line 423
    :goto_0
    return-object v7
.end method

.method private disableTrackSelectionsInResult()V
    .locals 4

    .line 365
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 366
    .local v0, "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 369
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_2

    .line 370
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    .line 371
    .local v2, "rendererEnabled":Z
    iget-object v3, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v3

    .line 372
    .local v3, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 373
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->disable()V

    goto :goto_1

    .line 372
    :cond_1
    nop

    .line 369
    .end local v2    # "rendererEnabled":Z
    .end local v3    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 366
    :cond_3
    :goto_2
    nop

    .line 367
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media2/exoplayer/external/source/SampleStream;)V
    .locals 3
    .param p1, "sampleStreams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 385
    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 386
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_1

    .line 385
    :cond_0
    nop

    .line 384
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private enableTrackSelectionsInResult()V
    .locals 4

    .line 351
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 352
    .local v0, "trackSelectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 355
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_2

    .line 356
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    .line 357
    .local v2, "rendererEnabled":Z
    iget-object v3, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v3

    .line 358
    .local v3, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 359
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->enable()V

    goto :goto_1

    .line 358
    :cond_1
    nop

    .line 355
    .end local v2    # "rendererEnabled":Z
    .end local v3    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 352
    :cond_3
    :goto_2
    nop

    .line 353
    return-void
.end method

.method private isLoadingMediaPeriod()Z
    .locals 1

    .line 407
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->next:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static releaseMediaPeriod(JLandroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 3
    .param p0, "endPositionUs"    # J
    .param p2, "mediaSource"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p3, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 430
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 431
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {p2, v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    goto :goto_0

    .line 430
    :cond_0
    nop

    .line 433
    invoke-interface {p2, p3}, Landroidx/media2/exoplayer/external/source/MediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    goto :goto_1

    .line 435
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method


# virtual methods
.method public applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ)J
    .locals 7
    .param p1, "trackSelectorResult"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .param p2, "positionUs"    # J
    .param p4, "forceRecreateStreams"    # Z

    .line 241
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 13
    .param p1, "newTrackSelectorResult"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .param p2, "positionUs"    # J
    .param p4, "forceRecreateStreams"    # Z
    .param p5, "streamResetFlags"    # [Z

    .line 265
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->length:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 266
    iget-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p4, :cond_1

    iget-object v6, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 267
    invoke-virtual {p1, v6, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    goto :goto_1

    .line 266
    :cond_1
    nop

    .line 267
    :goto_1
    nop

    :goto_2
    aput-boolean v4, v3, v2

    .line 265
    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 272
    .end local v2    # "i":I
    nop

    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media2/exoplayer/external/source/SampleStream;)V

    .line 273
    nop

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 274
    nop

    iput-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 275
    nop

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    .line 277
    nop

    iget-object v2, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 278
    .local v2, "trackSelections":Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    nop

    iget-object v6, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 280
    nop

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->getAll()[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v7

    iget-object v8, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v9, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 279
    nop

    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J

    move-result-wide v6

    .line 285
    .end local p2    # "positionUs":J
    .local v6, "positionUs":J
    nop

    iget-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Landroidx/media2/exoplayer/external/source/SampleStream;)V

    .line 288
    nop

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->hasEnabledTracks:Z

    .line 289
    nop

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    nop

    iget-object v8, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    array-length v9, v8

    if-ge v3, v9, :cond_6

    .line 290
    nop

    aget-object v8, v8, v3

    if-eqz v8, :cond_4

    .line 291
    nop

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v8

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 293
    nop

    iget-object v8, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroidx/media2/exoplayer/external/RendererCapabilities;->getTrackType()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_3

    .line 294
    nop

    iput-boolean v5, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_5

    .line 293
    :cond_3
    nop

    goto :goto_5

    .line 297
    :cond_4
    nop

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v8

    if-nez v8, :cond_5

    nop

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    nop

    const/4 v8, 0x0

    :goto_4
    nop

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 289
    :goto_5
    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 300
    .end local v3    # "i":I
    nop

    return-wide v6
.end method

.method public continueLoading(J)V
    .locals 3
    .param p1, "rendererPositionUs"    # J

    .line 199
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 200
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 201
    .local v0, "loadingPeriodPositionUs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v2, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->continueLoading(J)Z

    .line 202
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 5

    .line 144
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    .line 148
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 149
    .local v3, "bufferedPositionUs":J
    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :goto_1
    return-wide v0
.end method

.method public getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 331
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->next:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 157
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getRendererOffset()J
    .locals 2

    .line 123
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public getStartPositionRendererTime()J
    .locals 4

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 339
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .locals 1

    .line 347
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    return-object v0
.end method

.method public handlePrepared(FLandroidx/media2/exoplayer/external/Timeline;)V
    .locals 7
    .param p1, "playbackSpeed"    # F
    .param p2, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    .line 169
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 170
    nop

    .line 171
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->selectTracks(FLandroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 172
    .local v0, "selectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    .line 173
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ)J

    move-result-wide v1

    .line 175
    .local v1, "newStartPositionUs":J
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v5, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 176
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 177
    return-void
.end method

.method public isFullyBuffered()Z
    .locals 5

    .line 133
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 134
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 133
    :cond_1
    nop

    .line 134
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 133
    :cond_2
    nop

    .line 134
    :goto_1
    const/4 v0, 0x0

    .line 133
    :goto_2
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 3
    .param p1, "rendererPositionUs"    # J

    .line 186
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 187
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->reevaluateBuffer(J)V

    goto :goto_0

    .line 187
    :cond_0
    nop

    .line 190
    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 305
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->releaseMediaPeriod(JLandroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 308
    return-void
.end method

.method public selectTracks(FLandroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .locals 5
    .param p1, "playbackSpeed"    # F
    .param p2, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    .line 217
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2, v3, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->selectTracks([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 218
    .local v0, "selectorResult":Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const/4 v1, 0x0

    return-object v1

    .line 221
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->getAll()[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 222
    .local v4, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-eqz v4, :cond_1

    .line 223
    invoke-interface {v4, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->onPlaybackSpeed(F)V

    goto :goto_1

    .line 222
    :cond_1
    nop

    .line 221
    .end local v4    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_2
    return-object v0
.end method

.method public setNext(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V
    .locals 1
    .param p1, "nextMediaPeriodHolder"    # Landroidx/media2/exoplayer/external/MediaPeriodHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->next:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-ne p1, v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 321
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->next:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 322
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    .line 323
    return-void
.end method

.method public toPeriodTime(J)J
    .locals 2
    .param p1, "rendererTimeUs"    # J

    .line 118
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public toRendererTime(J)J
    .locals 2
    .param p1, "periodTimeUs"    # J

    .line 110
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method
