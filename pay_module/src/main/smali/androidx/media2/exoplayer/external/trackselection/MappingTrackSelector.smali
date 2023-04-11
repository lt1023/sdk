.class public abstract Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
.super Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;-><init>()V

    return-void
.end method

.method private static findRenderer([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)I
    .locals 7
    .param p0, "rendererCapabilities"    # [Landroidx/media2/exoplayer/external/RendererCapabilities;
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 454
    array-length v0, p0

    .line 455
    .local v0, "bestRendererIndex":I
    const/4 v1, 0x0

    .line 456
    .local v1, "bestFormatSupportLevel":I
    const/4 v2, 0x0

    .local v2, "rendererIndex":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 457
    aget-object v3, p0, v2

    .line 458
    .local v3, "rendererCapability":Landroidx/media2/exoplayer/external/RendererCapabilities;
    const/4 v4, 0x0

    .local v4, "trackIndex":I
    :goto_1
    iget v5, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_2

    .line 459
    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    invoke-interface {v3, v5}, Landroidx/media2/exoplayer/external/RendererCapabilities;->supportsFormat(Landroidx/media2/exoplayer/external/Format;)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    .line 461
    .local v5, "formatSupportLevel":I
    if-le v5, v1, :cond_1

    .line 462
    move v0, v2

    .line 463
    move v1, v5

    .line 464
    const/4 v6, 0x4

    if-ne v1, v6, :cond_0

    .line 466
    return v0

    .line 464
    :cond_0
    goto :goto_2

    .line 461
    :cond_1
    nop

    .line 458
    .end local v5    # "formatSupportLevel":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 456
    .end local v3    # "rendererCapability":Landroidx/media2/exoplayer/external/RendererCapabilities;
    .end local v4    # "trackIndex":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "rendererIndex":I
    :cond_3
    return v0
.end method

.method private static getFormatSupport(Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # Landroidx/media2/exoplayer/external/RendererCapabilities;
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 486
    iget v0, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v0, v0, [I

    .line 487
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 488
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/media2/exoplayer/external/RendererCapabilities;->supportsFormat(Landroidx/media2/exoplayer/external/Format;)I

    move-result v2

    aput v2, v0, v1

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupports([Landroidx/media2/exoplayer/external/RendererCapabilities;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # [Landroidx/media2/exoplayer/external/RendererCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 504
    array-length v0, p0

    new-array v0, v0, [I

    .line 505
    .local v0, "mixedMimeTypeAdaptationSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 506
    aget-object v2, p0, v1

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v0, v1

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getCurrentMappedTrackInfo()Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 328
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 335
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 336
    return-void
.end method

.method protected abstract selectTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Landroidx/media2/exoplayer/external/RendererConfiguration;",
            "[",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final selectTracks([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .locals 16
    .param p1, "rendererCapabilities"    # [Landroidx/media2/exoplayer/external/RendererCapabilities;
    .param p2, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "periodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p4, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 348
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 349
    .local v2, "rendererTrackGroupCounts":[I
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [[Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 350
    .local v3, "rendererTrackGroups":[[Landroidx/media2/exoplayer/external/source/TrackGroup;
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [[[I

    .line 351
    .local v4, "rendererFormatSupports":[[[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 352
    iget v6, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v6, v6, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v6, v3, v5

    .line 353
    iget v6, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v6, v6, [[I

    aput-object v6, v4, v5

    .line 351
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 357
    .end local v5    # "i":I
    :cond_0
    nop

    .line 358
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Landroidx/media2/exoplayer/external/RendererCapabilities;)[I

    move-result-object v11

    .line 362
    .local v11, "rendererMixedMimeTypeAdaptationSupports":[I
    const/4 v5, 0x0

    .local v5, "groupIndex":I
    :goto_1
    iget v6, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_2

    .line 363
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    .line 365
    .local v6, "group":Landroidx/media2/exoplayer/external/source/TrackGroup;
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->findRenderer([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v7

    .line 367
    .local v7, "rendererIndex":I
    array-length v8, v0

    if-ne v7, v8, :cond_1

    .line 368
    iget v8, v6, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v8, v8, [I

    goto :goto_2

    :cond_1
    aget-object v8, v0, v7

    invoke-static {v8, v6}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->getFormatSupport(Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)[I

    move-result-object v8

    .line 370
    .local v8, "rendererFormatSupport":[I
    :goto_2
    aget v9, v2, v7

    .line 371
    .local v9, "rendererTrackGroupCount":I
    aget-object v10, v3, v7

    aput-object v6, v10, v9

    .line 372
    aget-object v10, v4, v7

    aput-object v8, v10, v9

    .line 373
    aget v10, v2, v7

    add-int/lit8 v10, v10, 0x1

    aput v10, v2, v7

    .line 362
    .end local v6    # "group":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v7    # "rendererIndex":I
    .end local v8    # "rendererFormatSupport":[I
    .end local v9    # "rendererTrackGroupCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 377
    .end local v5    # "groupIndex":I
    :cond_2
    array-length v5, v0

    new-array v12, v5, [Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 378
    .local v12, "rendererTrackGroupArrays":[Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    array-length v5, v0

    new-array v13, v5, [I

    .line 379
    .local v13, "rendererTrackTypes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 380
    aget v6, v2, v5

    .line 381
    .local v6, "rendererTrackGroupCount":I
    new-instance v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v8, v3, v5

    .line 383
    invoke-static {v8, v6}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v7, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    aput-object v7, v12, v5

    .line 384
    aget-object v7, v4, v5

    .line 385
    invoke-static {v7, v6}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    aput-object v7, v4, v5

    .line 386
    aget-object v7, v0, v5

    invoke-interface {v7}, Landroidx/media2/exoplayer/external/RendererCapabilities;->getTrackType()I

    move-result v7

    aput v7, v13, v5

    .line 379
    .end local v6    # "rendererTrackGroupCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 390
    .end local v5    # "i":I
    :cond_3
    array-length v5, v0

    aget v14, v2, v5

    .line 391
    .local v14, "unmappedTrackGroupCount":I
    new-instance v10, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    array-length v5, v0

    aget-object v5, v3, v5

    .line 393
    invoke-static {v5, v14}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v10, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    .line 397
    .local v10, "unmappedTrackGroupArray":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    new-instance v15, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v5, v15

    move-object v6, v13

    move-object v7, v12

    move-object v8, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    .line 405
    .local v5, "mappedTrackInfo":Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    nop

    .line 406
    move-object/from16 v6, p0

    invoke-virtual {v6, v5, v4, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->selectTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;

    move-result-object v7

    .line 408
    .local v7, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;>;"
    new-instance v8, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    iget-object v15, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-direct {v8, v9, v15, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;-><init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Ljava/lang/Object;)V

    return-object v8
.end method
