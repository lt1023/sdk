.class public Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.super Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I

.field private static final WITHIN_RENDERER_CAPABILITIES_BONUS:I = 0x3e8


# instance fields
.field private allowMultipleAdaptiveSelections:Z

.field private final parametersReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelectionFactory:Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1286
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1295
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;)V

    .line 1296
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;)V
    .locals 2
    .param p1, "trackSelectionFactory"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;

    .line 1309
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;-><init>()V

    .line 1310
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->trackSelectionFactory:Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;

    .line 1311
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1312
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V
    .locals 1
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1305
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;)V

    .line 1306
    return-void
.end method

.method static synthetic access$300(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 162
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareInts(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 162
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    return v0
.end method

.method private static compareFormatValues(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 2262
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 2263
    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    goto :goto_0

    .line 2264
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    .line 2262
    :goto_0
    return v0
.end method

.method private static compareInts(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 2496
    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V
    .locals 12
    .param p0, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1775
    .local p8, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p8

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1776
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1777
    .local v2, "trackIndex":I
    nop

    .line 1778
    move-object v3, p0

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aget v6, p1, v2

    .line 1777
    move-object v5, p3

    move v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v4 .. v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1786
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1777
    :cond_0
    nop

    .line 1775
    .end local v2    # "trackIndex":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 1789
    .end local v1    # "i":I
    return-void
.end method

.method protected static formatHasNoLanguage(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 1
    .param p0, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 2288
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->stringDefinesNoLanguage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getAdaptiveAudioTrackCount(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)I
    .locals 4
    .param p0, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "configuration"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    .param p3, "allowMixedMimeTypeAdaptiveness"    # Z
    .param p4, "allowMixedSampleRateAdaptiveness"    # Z

    .line 2009
    const/4 v0, 0x0

    .line 2010
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_1

    .line 2011
    nop

    .line 2012
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    aget v3, p1, v1

    .line 2011
    invoke-static {v2, v3, p2, p3, p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2017
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2011
    :cond_0
    nop

    .line 2010
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2020
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static getAdaptiveAudioTracks(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZZ)[I
    .locals 9
    .param p0, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypeAdaptiveness"    # Z
    .param p3, "allowMixedSampleRateAdaptiveness"    # Z

    .line 1962
    const/4 v0, 0x0

    .line 1963
    .local v0, "selectedConfigurationTrackCount":I
    const/4 v1, 0x0

    .line 1964
    .local v1, "selectedConfiguration":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1965
    .local v2, "seenConfigurationTuples":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_2

    .line 1966
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 1967
    .local v4, "format":Landroidx/media2/exoplayer/external/Format;
    new-instance v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget-object v8, v4, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 1970
    .local v5, "configuration":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1971
    nop

    .line 1972
    invoke-static {p0, p1, v5, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveAudioTrackCount(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)I

    move-result v6

    .line 1978
    .local v6, "configurationCount":I
    if-le v6, v0, :cond_0

    .line 1979
    move-object v1, v5

    .line 1980
    move v0, v6

    goto :goto_1

    .line 1978
    :cond_0
    goto :goto_1

    .line 1970
    .end local v6    # "configurationCount":I
    :cond_1
    nop

    .line 1965
    .end local v4    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v5    # "configuration":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1985
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x1

    if-le v0, v3, :cond_5

    .line 1986
    new-array v3, v0, [I

    .line 1987
    .local v3, "adaptiveIndices":[I
    const/4 v4, 0x0

    .line 1988
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v6, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_4

    .line 1989
    nop

    .line 1990
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    aget v7, p1, v5

    .line 1992
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 1989
    invoke-static {v6, v7, v8, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1995
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "index":I
    .local v6, "index":I
    aput v5, v3, v4

    move v4, v6

    goto :goto_3

    .line 1989
    .end local v6    # "index":I
    .restart local v4    # "index":I
    :cond_3
    nop

    .line 1988
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1998
    .end local v5    # "i":I
    :cond_4
    return-object v3

    .line 2000
    .end local v3    # "adaptiveIndices":[I
    .end local v4    # "index":I
    :cond_5
    sget-object v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v3
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I
    .locals 13
    .param p0, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1747
    .local p8, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1748
    .local v0, "adaptiveTrackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1749
    move-object/from16 v2, p8

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1750
    .local v3, "trackIndex":I
    nop

    .line 1751
    move-object v4, p0

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    aget v7, p1, v3

    .line 1750
    move-object/from16 v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v5 .. v12}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1750
    :cond_0
    nop

    .line 1748
    .end local v3    # "trackIndex":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, p0

    move-object/from16 v2, p8

    .line 1762
    .end local v1    # "i":I
    return v0
.end method

.method private static getAdaptiveVideoTracksForGroup(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZIIIIIIIZ)[I
    .locals 20
    .param p0, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I
    .param p8, "viewportWidth"    # I
    .param p9, "viewportHeight"    # I
    .param p10, "viewportOrientationMayChange"    # Z

    .line 1684
    move-object/from16 v9, p0

    iget v0, v9, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    const/4 v10, 0x2

    if-ge v0, v10, :cond_0

    .line 1685
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    .line 1688
    :cond_0
    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-static {v9, v11, v12, v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v14

    .line 1690
    .local v14, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_1

    .line 1691
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    .line 1694
    :cond_1
    const/4 v0, 0x0

    .line 1695
    .local v0, "selectedMimeType":Ljava/lang/String;
    if-nez p2, :cond_5

    .line 1697
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v15, v1

    .line 1698
    .local v15, "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1699
    .local v1, "selectedMimeTypeTrackCount":I
    const/4 v2, 0x0

    move-object/from16 v16, v0

    move v7, v1

    move v8, v2

    .end local v0    # "selectedMimeType":Ljava/lang/String;
    .end local v1    # "selectedMimeTypeTrackCount":I
    .local v7, "selectedMimeTypeTrackCount":I
    .local v8, "i":I
    .local v16, "selectedMimeType":Ljava/lang/String;
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1700
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1701
    .local v6, "trackIndex":I
    invoke-virtual {v9, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iget-object v5, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1702
    .local v5, "sampleMimeType":Ljava/lang/String;
    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1703
    nop

    .line 1704
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v5

    move/from16 v4, p4

    move-object/from16 v17, v5

    .end local v5    # "sampleMimeType":Ljava/lang/String;
    .local v17, "sampleMimeType":Ljava/lang/String;
    move/from16 v5, p5

    move/from16 v18, v6

    .end local v6    # "trackIndex":I
    .local v18, "trackIndex":I
    move/from16 v6, p6

    move v10, v7

    .end local v7    # "selectedMimeTypeTrackCount":I
    .local v10, "selectedMimeTypeTrackCount":I
    move/from16 v7, p7

    move/from16 v19, v8

    .end local v8    # "i":I
    .local v19, "i":I
    move-object v8, v14

    invoke-static/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I

    move-result v0

    .line 1714
    .local v0, "countForMimeType":I
    if-le v0, v10, :cond_2

    .line 1715
    move-object/from16 v1, v17

    .line 1716
    .end local v16    # "selectedMimeType":Ljava/lang/String;
    .local v1, "selectedMimeType":Ljava/lang/String;
    move v2, v0

    move-object/from16 v16, v1

    move v7, v2

    goto :goto_2

    .line 1714
    .end local v1    # "selectedMimeType":Ljava/lang/String;
    .restart local v16    # "selectedMimeType":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1702
    .end local v0    # "countForMimeType":I
    .end local v10    # "selectedMimeTypeTrackCount":I
    .end local v17    # "sampleMimeType":Ljava/lang/String;
    .end local v18    # "trackIndex":I
    .end local v19    # "i":I
    .restart local v5    # "sampleMimeType":Ljava/lang/String;
    .restart local v6    # "trackIndex":I
    .restart local v7    # "selectedMimeTypeTrackCount":I
    .restart local v8    # "i":I
    :cond_3
    move-object/from16 v17, v5

    move/from16 v18, v6

    move v10, v7

    move/from16 v19, v8

    .line 1699
    .end local v5    # "sampleMimeType":Ljava/lang/String;
    .end local v6    # "trackIndex":I
    .end local v7    # "selectedMimeTypeTrackCount":I
    .end local v8    # "i":I
    .restart local v10    # "selectedMimeTypeTrackCount":I
    .restart local v19    # "i":I
    :goto_1
    move v7, v10

    .end local v10    # "selectedMimeTypeTrackCount":I
    .restart local v7    # "selectedMimeTypeTrackCount":I
    :goto_2
    add-int/lit8 v8, v19, 0x1

    const/4 v10, 0x2

    goto :goto_0

    .end local v19    # "i":I
    .restart local v8    # "i":I
    :cond_4
    move v10, v7

    move/from16 v19, v8

    .end local v7    # "selectedMimeTypeTrackCount":I
    .end local v8    # "i":I
    .restart local v10    # "selectedMimeTypeTrackCount":I
    .restart local v19    # "i":I
    goto :goto_3

    .line 1695
    .end local v10    # "selectedMimeTypeTrackCount":I
    .end local v15    # "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "selectedMimeType":Ljava/lang/String;
    .end local v19    # "i":I
    .local v0, "selectedMimeType":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v0

    .line 1723
    .end local v0    # "selectedMimeType":Ljava/lang/String;
    .restart local v16    # "selectedMimeType":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v16

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v14

    invoke-static/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V

    .line 1734
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_4

    :cond_6
    invoke-static {v14}, Landroidx/media2/exoplayer/external/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method protected static getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I
    .locals 3
    .param p0, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "language"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2311
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    .line 2314
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 2315
    return v2

    .line 2318
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2322
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_5

    .line 2323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 2324
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2325
    const/4 v0, 0x1

    return v0

    .line 2324
    :cond_3
    goto :goto_0

    .line 2323
    :cond_4
    goto :goto_0

    .line 2322
    :cond_5
    nop

    .line 2327
    :goto_0
    return v1

    .line 2318
    :cond_6
    :goto_1
    nop

    .line 2319
    const/4 v0, 0x2

    return v0

    .line 2311
    :cond_7
    :goto_2
    nop

    .line 2312
    return v1
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 3
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .line 2383
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_2

    .line 2385
    move v0, p1

    .line 2386
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 2387
    move p2, v0

    goto :goto_2

    .line 2383
    .end local v0    # "tempViewportWidth":I
    :cond_2
    nop

    .line 2390
    :goto_2
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    .line 2392
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 2395
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static getViewportFilteredTrackIndices(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 10
    .param p0, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2333
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2334
    .local v0, "selectedTrackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 2335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2338
    .end local v1    # "i":I
    :cond_0
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_9

    if-ne p2, v1, :cond_1

    goto/16 :goto_7

    .line 2343
    :cond_1
    const v2, 0x7fffffff

    .line 2344
    .local v2, "maxVideoPixelsToRetain":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_4

    .line 2345
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 2349
    .local v4, "format":Landroidx/media2/exoplayer/external/Format;
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    if-lez v5, :cond_3

    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    if-lez v5, :cond_3

    .line 2350
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {p3, p1, p2, v5, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 2352
    .local v5, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    mul-int v6, v6, v7

    .line 2353
    .local v6, "videoPixels":I
    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    if-ge v6, v2, :cond_2

    .line 2356
    move v2, v6

    goto :goto_2

    .line 2353
    :cond_2
    goto :goto_2

    .line 2349
    .end local v5    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v6    # "videoPixels":I
    :cond_3
    nop

    .line 2344
    .end local v4    # "format":Landroidx/media2/exoplayer/external/Format;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2364
    .end local v3    # "i":I
    :cond_4
    if-eq v2, v1, :cond_8

    .line 2365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_7

    .line 2366
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 2367
    .local v3, "format":Landroidx/media2/exoplayer/external/Format;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result v4

    .line 2368
    .local v4, "pixelCount":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    if-le v4, v2, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_5

    .line 2369
    :cond_6
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2365
    .end local v3    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v4    # "pixelCount":I
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    goto :goto_6

    .line 2364
    .end local v1    # "i":I
    :cond_8
    nop

    .line 2374
    :goto_6
    return-object v0

    .line 2338
    .end local v2    # "maxVideoPixelsToRetain":I
    :cond_9
    :goto_7
    nop

    .line 2340
    return-object v0
.end method

.method protected static isSupported(IZ)Z
    .locals 2
    .param p0, "formatSupport"    # I
    .param p1, "allowExceedsCapabilities"    # Z

    .line 2281
    and-int/lit8 v0, p0, 0x7

    .line 2282
    .local v0, "maskedSupport":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isSupportedAdaptiveAudioTrack(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)Z
    .locals 4
    .param p0, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "formatSupport"    # I
    .param p2, "configuration"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    .param p3, "allowMixedMimeTypeAdaptiveness"    # Z
    .param p4, "allowMixedSampleRateAdaptiveness"    # Z

    .line 2029
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne v1, v3, :cond_3

    if-nez p3, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    .line 2034
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2029
    :cond_0
    nop

    .line 2034
    :goto_0
    if-nez p4, :cond_2

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v2, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 2029
    :cond_3
    nop

    .line 2034
    :goto_2
    nop

    .line 2029
    :goto_3
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z
    .locals 4
    .param p0, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "mimeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "formatSupport"    # I
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I

    .line 1800
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    and-int v1, p2, p3

    if-eqz v1, :cond_6

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1802
    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1800
    :cond_1
    nop

    .line 1802
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    if-gt v1, p4, :cond_0

    :cond_2
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gt v1, p5, :cond_0

    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    int-to-float v3, p6

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    :cond_4
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-gt v1, p7, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 1800
    :cond_6
    nop

    .line 1802
    :goto_1
    nop

    .line 1800
    :goto_2
    return v0
.end method

.method private static maybeConfigureRenderersForTunneling(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;I)V
    .locals 10
    .param p0, "mappedTrackInfo"    # Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "renderererFormatSupports"    # [[[I
    .param p2, "rendererConfigurations"    # [Landroidx/media2/exoplayer/external/RendererConfiguration;
    .param p3, "trackSelections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p4, "tunnelingAudioSessionId"    # I

    .line 2185
    if-nez p4, :cond_0

    .line 2186
    return-void

    .line 2190
    :cond_0
    const/4 v0, -0x1

    .line 2191
    .local v0, "tunnelingAudioRendererIndex":I
    const/4 v1, -0x1

    .line 2192
    .local v1, "tunnelingVideoRendererIndex":I
    const/4 v2, 0x1

    .line 2193
    .local v2, "enableTunneling":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ge v3, v4, :cond_7

    .line 2194
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    .line 2195
    .local v4, "rendererType":I
    aget-object v7, p3, v3

    .line 2196
    .local v7, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    if-eq v4, v5, :cond_1

    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    :cond_1
    if-eqz v7, :cond_6

    .line 2198
    aget-object v8, p1, v3

    .line 2199
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v9

    .line 2198
    invoke-static {v8, v9, v7}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2200
    if-ne v4, v5, :cond_3

    .line 2201
    if-eq v0, v6, :cond_2

    .line 2202
    const/4 v2, 0x0

    .line 2203
    goto :goto_2

    .line 2205
    :cond_2
    move v0, v3

    goto :goto_1

    .line 2208
    :cond_3
    if-eq v1, v6, :cond_4

    .line 2209
    const/4 v2, 0x0

    .line 2210
    goto :goto_2

    .line 2212
    :cond_4
    move v1, v3

    goto :goto_1

    .line 2198
    :cond_5
    goto :goto_1

    .line 2196
    :cond_6
    nop

    .line 2193
    .end local v4    # "rendererType":I
    .end local v7    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2218
    .end local v3    # "i":I
    :cond_7
    :goto_2
    if-eq v0, v6, :cond_8

    if-eq v1, v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    and-int/2addr v2, v5

    .line 2219
    if-eqz v2, :cond_9

    .line 2220
    new-instance v3, Landroidx/media2/exoplayer/external/RendererConfiguration;

    invoke-direct {v3, p4}, Landroidx/media2/exoplayer/external/RendererConfiguration;-><init>(I)V

    .line 2222
    .local v3, "tunnelingRendererConfiguration":Landroidx/media2/exoplayer/external/RendererConfiguration;
    aput-object v3, p2, v0

    .line 2223
    aput-object v3, p2, v1

    goto :goto_4

    .line 2219
    .end local v3    # "tunnelingRendererConfiguration":Landroidx/media2/exoplayer/external/RendererConfiguration;
    :cond_9
    nop

    .line 2225
    :goto_4
    return-void
.end method

.method private static rendererSupportsTunneling([[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)Z
    .locals 6
    .param p0, "formatSupports"    # [[I
    .param p1, "trackGroups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "selection"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 2238
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2239
    return v0

    .line 2241
    :cond_0
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v1

    .line 2242
    .local v1, "trackGroupIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2243
    aget-object v3, p0, v1

    invoke-interface {p2, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    aget v3, v3, v4

    .line 2244
    .local v3, "trackFormatSupport":I
    and-int/lit8 v4, v3, 0x20

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 2246
    return v0

    .line 2244
    :cond_1
    nop

    .line 2242
    .end local v3    # "trackFormatSupport":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2249
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static selectAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .locals 16
    .param p0, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p1, "formatSupport"    # [[I
    .param p2, "mixedMimeTypeAdaptationSupports"    # I
    .param p3, "params"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1644
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz v2, :cond_0

    .line 1645
    const/16 v2, 0x18

    goto :goto_0

    .line 1646
    :cond_0
    const/16 v2, 0x10

    :goto_0
    nop

    .line 1647
    .local v2, "requiredAdaptiveSupport":I
    iget-boolean v3, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-eqz v3, :cond_1

    and-int v3, p2, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1650
    .local v5, "allowMixedMimeTypes":Z
    :goto_1
    const/4 v3, 0x0

    move v14, v3

    .local v14, "i":I
    :goto_2
    iget v3, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v14, v3, :cond_3

    .line 1651
    invoke-virtual {v0, v14}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v15

    .line 1652
    .local v15, "group":Landroidx/media2/exoplayer/external/source/TrackGroup;
    aget-object v4, p1, v14

    iget v7, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v8, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v9, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iget v10, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget v11, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    .line 1653
    move-object v3, v15

    move v6, v2

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZIIIIIIIZ)[I

    move-result-object v3

    .line 1665
    .local v3, "adaptiveTracks":[I
    array-length v4, v3

    if-lez v4, :cond_2

    .line 1666
    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    invoke-direct {v4, v15, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    return-object v4

    .line 1665
    :cond_2
    nop

    .line 1650
    .end local v3    # "adaptiveTracks":[I
    .end local v15    # "group":Landroidx/media2/exoplayer/external/source/TrackGroup;
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1669
    .end local v14    # "i":I
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private static selectFixedVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .locals 21
    .param p0, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p1, "formatSupports"    # [[I
    .param p2, "params"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1812
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1813
    .local v2, "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v3, 0x0

    .line 1814
    .local v3, "selectedTrackIndex":I
    const/4 v4, 0x0

    .line 1815
    .local v4, "selectedTrackScore":I
    const/4 v5, -0x1

    .line 1816
    .local v5, "selectedBitrate":I
    const/4 v6, -0x1

    .line 1817
    .local v6, "selectedPixelCount":I
    const/4 v7, 0x0

    .local v7, "groupIndex":I
    :goto_0
    iget v8, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_12

    .line 1818
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    .line 1819
    .local v8, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    iget v11, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static {v8, v11, v12, v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    .line 1821
    .local v11, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v12, p1, v7

    .line 1822
    .local v12, "trackFormatSupport":[I
    const/4 v13, 0x0

    .local v13, "trackIndex":I
    :goto_1
    iget v14, v8, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v13, v14, :cond_11

    .line 1823
    aget v14, v12, v13

    iget-boolean v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v14, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1825
    invoke-virtual {v8, v13}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v14

    .line 1826
    .local v14, "format":Landroidx/media2/exoplayer/external/Format;
    nop

    .line 1827
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget v15, v14, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v10, -0x1

    if-eq v15, v10, :cond_0

    iget v15, v14, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v9, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-gt v15, v9, :cond_4

    :cond_0
    iget v9, v14, Landroidx/media2/exoplayer/external/Format;->height:I

    if-eq v9, v10, :cond_1

    iget v9, v14, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-gt v9, v15, :cond_4

    :cond_1
    iget v9, v14, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v9, v9, v15

    if-eqz v9, :cond_2

    iget v9, v14, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    int-to-float v15, v15

    cmpg-float v9, v9, v15

    if-gtz v9, :cond_4

    :cond_2
    iget v9, v14, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-eq v9, v10, :cond_3

    iget v9, v14, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v10, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-gt v9, v10, :cond_4

    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 1834
    .local v9, "isWithinConstraints":Z
    :goto_2
    if-nez v9, :cond_5

    iget-boolean v10, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v10, :cond_5

    .line 1836
    move-object/from16 v17, v2

    goto/16 :goto_b

    .line 1834
    :cond_5
    nop

    .line 1838
    if-eqz v9, :cond_6

    const/4 v10, 0x2

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    .line 1839
    .local v10, "trackScore":I
    :goto_3
    aget v15, v12, v13

    const/4 v0, 0x0

    invoke-static {v15, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v15

    .line 1840
    .local v15, "isWithinCapabilities":Z
    if-eqz v15, :cond_7

    .line 1841
    add-int/lit16 v10, v10, 0x3e8

    goto :goto_4

    .line 1840
    :cond_7
    nop

    .line 1843
    :goto_4
    if-le v10, v4, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    .line 1844
    .local v0, "selectTrack":Z
    :goto_5
    if-ne v10, v4, :cond_e

    .line 1845
    move/from16 v16, v0

    .end local v0    # "selectTrack":Z
    .local v16, "selectTrack":Z
    iget v0, v14, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-static {v0, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    .line 1846
    .local v0, "bitrateComparison":I
    move-object/from16 v17, v2

    .end local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .local v17, "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 1848
    if-gez v0, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    move/from16 v16, v2

    goto :goto_a

    .line 1846
    :cond_a
    nop

    .line 1854
    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result v2

    .line 1855
    .local v2, "formatPixelCount":I
    if-eq v2, v6, :cond_b

    .line 1856
    invoke-static {v2, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v18

    move/from16 v20, v18

    move/from16 v18, v0

    move/from16 v0, v20

    goto :goto_7

    .line 1857
    :cond_b
    move/from16 v18, v0

    .end local v0    # "bitrateComparison":I
    .local v18, "bitrateComparison":I
    iget v0, v14, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-static {v0, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    :goto_7
    nop

    .line 1858
    .local v0, "comparisonResult":I
    if-eqz v15, :cond_c

    if-eqz v9, :cond_c

    .line 1859
    if-lez v0, :cond_d

    goto :goto_8

    .line 1858
    :cond_c
    nop

    .line 1859
    if-gez v0, :cond_d

    :goto_8
    const/16 v19, 0x1

    goto :goto_9

    :cond_d
    const/16 v19, 0x0

    :goto_9
    move/from16 v16, v19

    goto :goto_a

    .line 1844
    .end local v16    # "selectTrack":Z
    .end local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v18    # "bitrateComparison":I
    .local v0, "selectTrack":Z
    .local v2, "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :cond_e
    move/from16 v16, v0

    move-object/from16 v17, v2

    .line 1862
    .end local v0    # "selectTrack":Z
    .end local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .restart local v16    # "selectTrack":Z
    .restart local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :goto_a
    if-eqz v16, :cond_f

    .line 1863
    move-object v2, v8

    .line 1864
    .end local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .restart local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    move v3, v13

    .line 1865
    move v4, v10

    .line 1866
    iget v5, v14, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 1867
    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result v6

    goto :goto_c

    .line 1862
    .end local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .restart local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :cond_f
    goto :goto_b

    .line 1823
    .end local v9    # "isWithinConstraints":Z
    .end local v10    # "trackScore":I
    .end local v14    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v15    # "isWithinCapabilities":Z
    .end local v16    # "selectTrack":Z
    .end local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .restart local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :cond_10
    move-object/from16 v17, v2

    .line 1822
    .end local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .restart local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :goto_b
    move-object/from16 v2, v17

    .end local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .restart local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :goto_c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_11
    move-object/from16 v17, v2

    .line 1817
    .end local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v8    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v11    # "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "trackFormatSupport":[I
    .end local v13    # "trackIndex":I
    .restart local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 1872
    .end local v7    # "groupIndex":I
    .end local v17    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .restart local v2    # "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :cond_12
    if-nez v2, :cond_13

    .line 1873
    const/4 v0, 0x0

    goto :goto_d

    .line 1874
    :cond_13
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    invoke-direct {v0, v2, v7}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 1872
    :goto_d
    return-object v0
.end method

.method protected static stringDefinesNoLanguage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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


# virtual methods
.method public buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 1346
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1387
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1388
    return-void
.end method

.method public final clearSelectionOverrides()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1399
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1400
    return-void
.end method

.method public final clearSelectionOverrides(I)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1393
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1394
    return-void
.end method

.method public experimental_allowMultipleAdaptiveSelections()V
    .locals 1

    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->allowMultipleAdaptiveSelections:Z

    .line 1415
    return-void
.end method

.method public getParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 1341
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1
    .param p1, "rendererIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1358
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v0

    return v0
.end method

.method public final getSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1381
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v0

    return-object v0
.end method

.method public final hasSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Z
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1374
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Z

    move-result v0

    return v0
.end method

.method protected selectAllTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .locals 21
    .param p1, "mappedTrackInfo"    # Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .param p4, "params"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1507
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v9

    .line 1508
    .local v9, "rendererCount":I
    new-array v10, v9, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    .line 1511
    .local v10, "definitions":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    const/4 v0, 0x0

    .line 1512
    .local v0, "seenVideoRendererWithMappedTracks":Z
    const/4 v1, 0x0

    .line 1513
    .local v1, "selectedVideoTracks":Z
    const/4 v2, 0x0

    move v13, v0

    move v12, v1

    move v11, v2

    .end local v0    # "seenVideoRendererWithMappedTracks":Z
    .end local v1    # "selectedVideoTracks":Z
    .local v11, "i":I
    .local v12, "selectedVideoTracks":Z
    .local v13, "seenVideoRendererWithMappedTracks":Z
    :goto_0
    const/4 v15, 0x1

    if-ge v11, v9, :cond_4

    .line 1514
    const/4 v0, 0x2

    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1515
    if-nez v12, :cond_1

    .line 1516
    nop

    .line 1518
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v11

    aget v3, p3, v11

    const/4 v5, 0x1

    .line 1517
    move-object/from16 v0, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object v0

    aput-object v0, v10, v11

    .line 1523
    aget-object v0, v10, v11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move v12, v0

    goto :goto_2

    .line 1515
    :cond_1
    nop

    .line 1525
    :goto_2
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-lez v0, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    or-int v0, v13, v14

    move v13, v0

    goto :goto_4

    .line 1514
    :cond_3
    nop

    .line 1513
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1529
    .end local v11    # "i":I
    :cond_4
    const/4 v0, 0x0

    .line 1530
    .local v0, "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    const/4 v1, 0x0

    .line 1531
    .local v1, "selectedAudioLanguage":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1532
    .local v2, "selectedAudioRendererIndex":I
    const/4 v3, 0x0

    move-object v4, v0

    move v11, v3

    move-object v3, v1

    .end local v0    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .end local v1    # "selectedAudioLanguage":Ljava/lang/String;
    .local v3, "selectedAudioLanguage":Ljava/lang/String;
    .local v4, "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .restart local v11    # "i":I
    :goto_5
    const/16 v16, 0x0

    const/4 v1, -0x1

    if-ge v11, v9, :cond_c

    .line 1533
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v0

    if-ne v15, v0, :cond_b

    .line 1534
    iget-boolean v0, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->allowMultipleAdaptiveSelections:Z

    if-nez v0, :cond_6

    if-nez v13, :cond_5

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v5, 0x1

    .line 1536
    .local v5, "enableAdaptiveTrackSelection":Z
    :goto_7
    nop

    .line 1538
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v17

    aget-object v18, p2, v11

    aget v19, p3, v11

    .line 1537
    move-object/from16 v0, p0

    const/4 v15, -0x1

    move-object/from16 v1, v17

    move v14, v2

    .end local v2    # "selectedAudioRendererIndex":I
    .local v14, "selectedAudioRendererIndex":I
    move-object/from16 v2, v18

    move-object/from16 v20, v3

    .end local v3    # "selectedAudioLanguage":Ljava/lang/String;
    .local v20, "selectedAudioLanguage":Ljava/lang/String;
    move/from16 v3, v19

    move-object v15, v4

    .end local v4    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .local v15, "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectAudioTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;

    move-result-object v0

    .line 1543
    .local v0, "audioSelection":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;>;"
    if-eqz v0, :cond_a

    if-eqz v15, :cond_8

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 1545
    invoke-virtual {v1, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v1

    if-lez v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    goto :goto_a

    .line 1543
    :cond_8
    nop

    .line 1546
    :goto_8
    const/4 v1, -0x1

    if-eq v14, v1, :cond_9

    .line 1549
    aput-object v16, v10, v14

    goto :goto_9

    .line 1546
    :cond_9
    nop

    .line 1551
    :goto_9
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    .line 1552
    .local v1, "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    aput-object v1, v10, v11

    .line 1554
    iget-object v2, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 1555
    .end local v20    # "selectedAudioLanguage":Ljava/lang/String;
    .local v2, "selectedAudioLanguage":Ljava/lang/String;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 1556
    .end local v15    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .local v3, "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    move v14, v11

    move-object v15, v3

    move-object v3, v2

    move v2, v14

    goto :goto_b

    .line 1543
    .end local v1    # "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .end local v2    # "selectedAudioLanguage":Ljava/lang/String;
    .end local v3    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .restart local v15    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .restart local v20    # "selectedAudioLanguage":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 1533
    .end local v0    # "audioSelection":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;>;"
    .end local v5    # "enableAdaptiveTrackSelection":Z
    .end local v14    # "selectedAudioRendererIndex":I
    .end local v15    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .end local v20    # "selectedAudioLanguage":Ljava/lang/String;
    .local v2, "selectedAudioRendererIndex":I
    .local v3, "selectedAudioLanguage":Ljava/lang/String;
    .restart local v4    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    :cond_b
    move v14, v2

    move-object/from16 v20, v3

    move-object v15, v4

    const/4 v4, 0x0

    .line 1532
    .end local v2    # "selectedAudioRendererIndex":I
    .end local v3    # "selectedAudioLanguage":Ljava/lang/String;
    .end local v4    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .restart local v14    # "selectedAudioRendererIndex":I
    .restart local v15    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .restart local v20    # "selectedAudioLanguage":Ljava/lang/String;
    :goto_a
    move v2, v14

    move-object/from16 v3, v20

    .end local v14    # "selectedAudioRendererIndex":I
    .end local v20    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v2    # "selectedAudioRendererIndex":I
    .restart local v3    # "selectedAudioLanguage":Ljava/lang/String;
    :goto_b
    add-int/lit8 v11, v11, 0x1

    move-object v4, v15

    const/4 v15, 0x1

    goto :goto_5

    .end local v15    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .restart local v4    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    :cond_c
    move v14, v2

    move-object/from16 v20, v3

    move-object v15, v4

    .line 1561
    .end local v2    # "selectedAudioRendererIndex":I
    .end local v3    # "selectedAudioLanguage":Ljava/lang/String;
    .end local v4    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .end local v11    # "i":I
    .restart local v14    # "selectedAudioRendererIndex":I
    .restart local v15    # "selectedAudioTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    .restart local v20    # "selectedAudioLanguage":Ljava/lang/String;
    const/high16 v0, -0x80000000

    .line 1562
    .local v0, "selectedTextTrackScore":I
    const/4 v1, -0x1

    .line 1563
    .local v1, "selectedTextRendererIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v9, :cond_f

    .line 1564
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    .line 1565
    .local v3, "trackType":I
    packed-switch v3, :pswitch_data_0

    .line 1589
    move-object/from16 v11, v20

    .line 1591
    .end local v20    # "selectedAudioLanguage":Ljava/lang/String;
    .local v11, "selectedAudioLanguage":Ljava/lang/String;
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v4

    aget-object v5, p2, v2

    .line 1590
    invoke-virtual {v6, v3, v4, v5, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectOtherTrack(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object v4

    aput-object v4, v10, v2

    goto :goto_e

    .line 1571
    .end local v11    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v20    # "selectedAudioLanguage":Ljava/lang/String;
    :pswitch_0
    nop

    .line 1573
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v4

    aget-object v5, p2, v2

    .line 1572
    move-object/from16 v11, v20

    .end local v20    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v11    # "selectedAudioLanguage":Ljava/lang/String;
    invoke-virtual {v6, v4, v5, v8, v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectTextTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 1577
    .local v4, "textSelection":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_e

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_e

    .line 1578
    const/4 v5, -0x1

    if-eq v1, v5, :cond_d

    .line 1581
    aput-object v16, v10, v1

    goto :goto_d

    .line 1578
    :cond_d
    nop

    .line 1583
    :goto_d
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    aput-object v5, v10, v2

    .line 1584
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1585
    move v1, v2

    goto :goto_e

    .line 1577
    :cond_e
    goto :goto_e

    .line 1569
    .end local v4    # "textSelection":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Ljava/lang/Integer;>;"
    .end local v11    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v20    # "selectedAudioLanguage":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v11, v20

    .line 1563
    .end local v3    # "trackType":I
    .end local v20    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v11    # "selectedAudioLanguage":Ljava/lang/String;
    :goto_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v20, v11

    goto :goto_c

    .end local v11    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v20    # "selectedAudioLanguage":Ljava/lang/String;
    :cond_f
    move-object/from16 v11, v20

    .line 1596
    .end local v2    # "i":I
    .end local v20    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local v11    # "selectedAudioLanguage":Ljava/lang/String;
    return-object v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected selectAudioTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;
    .locals 10
    .param p1, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "formatSupports"    # [[I
    .param p3, "mixedMimeTypeAdaptationSupports"    # I
    .param p4, "params"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "enableAdaptiveTrackSelection"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "[[II",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1903
    const/4 v0, -0x1

    .line 1904
    .local v0, "selectedTrackIndex":I
    const/4 v1, -0x1

    .line 1905
    .local v1, "selectedGroupIndex":I
    const/4 v2, 0x0

    .line 1906
    .local v2, "selectedTrackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_0
    iget v4, p1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_5

    .line 1907
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    .line 1908
    .local v4, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    aget-object v5, p2, v3

    .line 1909
    .local v5, "trackFormatSupport":[I
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v7, v4, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_4

    .line 1910
    aget v7, v5, v6

    iget-boolean v8, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1912
    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 1913
    .local v7, "format":Landroidx/media2/exoplayer/external/Format;
    new-instance v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    aget v9, v5, v6

    invoke-direct {v8, v7, p4, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 1915
    .local v8, "trackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    iget-boolean v9, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-nez v9, :cond_0

    iget-boolean v9, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-nez v9, :cond_0

    .line 1917
    goto :goto_3

    .line 1915
    :cond_0
    nop

    .line 1919
    if-eqz v2, :cond_2

    invoke-virtual {v8, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v9

    if-lez v9, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_3

    .line 1920
    :cond_2
    :goto_2
    move v1, v3

    .line 1921
    move v0, v6

    .line 1922
    move-object v2, v8

    goto :goto_3

    .line 1910
    .end local v7    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v8    # "trackScore":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
    :cond_3
    nop

    .line 1909
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1906
    .end local v4    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v5    # "trackFormatSupport":[I
    .end local v6    # "trackIndex":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1928
    .end local v3    # "groupIndex":I
    :cond_5
    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 1929
    const/4 v3, 0x0

    return-object v3

    .line 1932
    :cond_6
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    .line 1934
    .local v3, "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v4, 0x0

    .line 1935
    .local v4, "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    iget-boolean v5, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v5, :cond_8

    iget-boolean v5, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v5, :cond_8

    if-eqz p5, :cond_8

    .line 1939
    aget-object v5, p2, v1

    iget-boolean v6, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v7, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1940
    invoke-static {v3, v5, v6, v7}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZZ)[I

    move-result-object v5

    .line 1945
    .local v5, "adaptiveTracks":[I
    array-length v6, v5

    if-lez v6, :cond_7

    .line 1946
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    invoke-direct {v6, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    move-object v4, v6

    goto :goto_4

    .line 1945
    :cond_7
    goto :goto_4

    .line 1935
    .end local v5    # "adaptiveTracks":[I
    :cond_8
    nop

    .line 1949
    :goto_4
    if-nez v4, :cond_9

    .line 1951
    new-instance v5, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v0, v6, v7

    invoke-direct {v5, v3, v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    move-object v4, v5

    goto :goto_5

    .line 1949
    :cond_9
    nop

    .line 1954
    :goto_5
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method protected selectOtherTrack(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .locals 15
    .param p1, "trackType"    # I
    .param p2, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 2137
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 2138
    .local v1, "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v2, 0x0

    .line 2139
    .local v2, "selectedTrackIndex":I
    const/4 v3, 0x0

    .line 2140
    .local v3, "selectedTrackScore":I
    const/4 v4, 0x0

    .local v4, "groupIndex":I
    :goto_0
    iget v5, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_6

    .line 2141
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    .line 2142
    .local v5, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    aget-object v8, p3, v4

    .line 2143
    .local v8, "trackFormatSupport":[I
    const/4 v9, 0x0

    .local v9, "trackIndex":I
    :goto_1
    iget v10, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v9, v10, :cond_5

    .line 2144
    aget v10, v8, v9

    move-object/from16 v11, p4

    iget-boolean v12, v11, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v10, v12}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2146
    invoke-virtual {v5, v9}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 2147
    .local v10, "format":Landroidx/media2/exoplayer/external/Format;
    iget v12, v10, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    and-int/2addr v12, v7

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_2

    :cond_0
    const/4 v12, 0x0

    .line 2148
    .local v12, "isDefault":Z
    :goto_2
    if-eqz v12, :cond_1

    const/4 v13, 0x2

    goto :goto_3

    :cond_1
    const/4 v13, 0x1

    .line 2149
    .local v13, "trackScore":I
    :goto_3
    aget v14, v8, v9

    invoke-static {v14, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2150
    add-int/lit16 v13, v13, 0x3e8

    goto :goto_4

    .line 2149
    :cond_2
    nop

    .line 2152
    :goto_4
    if-le v13, v3, :cond_3

    .line 2153
    move-object v1, v5

    .line 2154
    move v2, v9

    .line 2155
    move v3, v13

    goto :goto_5

    .line 2152
    :cond_3
    goto :goto_5

    .line 2144
    .end local v10    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v12    # "isDefault":Z
    .end local v13    # "trackScore":I
    :cond_4
    nop

    .line 2143
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v11, p4

    .line 2140
    .end local v5    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v8    # "trackFormatSupport":[I
    .end local v9    # "trackIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v11, p4

    .line 2160
    .end local v4    # "groupIndex":I
    if-nez v1, :cond_7

    .line 2161
    const/4 v4, 0x0

    goto :goto_6

    .line 2162
    :cond_7
    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    new-array v5, v7, [I

    aput v2, v5, v6

    invoke-direct {v4, v1, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2160
    :goto_6
    return-object v4
.end method

.method protected selectTextTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 19
    .param p1, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "selectedAudioLanguage"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "[[I",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 2063
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 2064
    .local v2, "selectedGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v3, 0x0

    .line 2065
    .local v3, "selectedTrackIndex":I
    const/4 v4, 0x0

    .line 2066
    .local v4, "selectedTrackScore":I
    const/4 v5, 0x0

    .local v5, "groupIndex":I
    :goto_0
    iget v6, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v7, 0x0

    if-ge v5, v6, :cond_f

    .line 2067
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    .line 2068
    .local v6, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    aget-object v9, p2, v5

    .line 2069
    .local v9, "trackFormatSupport":[I
    const/4 v10, 0x0

    .local v10, "trackIndex":I
    :goto_1
    iget v11, v6, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v10, v11, :cond_e

    .line 2070
    aget v11, v9, v10

    iget-boolean v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v11, v12}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2072
    invoke-virtual {v6, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    .line 2073
    .local v11, "format":Landroidx/media2/exoplayer/external/Format;
    iget v12, v11, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    .line 2075
    .local v12, "maskedSelectionFlags":I
    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto :goto_2

    :cond_0
    const/4 v13, 0x0

    .line 2076
    .local v13, "isDefault":Z
    :goto_2
    and-int/lit8 v14, v12, 0x2

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_3

    :cond_1
    const/4 v14, 0x0

    .line 2078
    .local v14, "isForced":Z
    :goto_3
    iget-object v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v11, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v15

    .line 2079
    .local v15, "languageScore":I
    invoke-static {v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->formatHasNoLanguage(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v16

    .line 2080
    .local v16, "trackHasNoLanguage":Z
    if-gtz v15, :cond_8

    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    if-eqz v8, :cond_2

    if-eqz v16, :cond_2

    move-object/from16 v8, p4

    goto :goto_5

    .line 2092
    :cond_2
    if-eqz v13, :cond_3

    .line 2093
    const/4 v8, 0x2

    move/from16 v18, v8

    move-object/from16 v8, p4

    goto :goto_7

    .line 2094
    :cond_3
    if-eqz v14, :cond_7

    .line 2095
    move-object/from16 v8, p4

    invoke-static {v11, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v17

    if-gtz v17, :cond_6

    if-eqz v16, :cond_5

    .line 2096
    invoke-static/range {p4 .. p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->stringDefinesNoLanguage(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_9

    .line 2095
    :cond_5
    goto :goto_9

    .line 2097
    :cond_6
    :goto_4
    const/16 v17, 0x1

    move/from16 v18, v17

    goto :goto_7

    .line 2094
    :cond_7
    move-object/from16 v8, p4

    goto :goto_9

    .line 2080
    :cond_8
    move-object/from16 v8, p4

    .line 2081
    :goto_5
    if-eqz v13, :cond_9

    .line 2082
    const/16 v17, 0xb

    goto :goto_6

    .line 2083
    :cond_9
    if-nez v14, :cond_a

    .line 2087
    const/16 v17, 0x7

    goto :goto_6

    .line 2089
    :cond_a
    const/16 v17, 0x3

    .line 2091
    .local v17, "trackScore":I
    :goto_6
    add-int v17, v17, v15

    move/from16 v18, v17

    .line 2102
    .end local v17    # "trackScore":I
    .local v18, "trackScore":I
    :goto_7
    aget v0, v9, v10

    invoke-static {v0, v7}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2103
    move/from16 v0, v18

    .end local v18    # "trackScore":I
    .local v0, "trackScore":I
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_8

    .line 2102
    .end local v0    # "trackScore":I
    .restart local v18    # "trackScore":I
    :cond_b
    move/from16 v0, v18

    .line 2105
    .end local v18    # "trackScore":I
    .restart local v0    # "trackScore":I
    :goto_8
    if-le v0, v4, :cond_c

    .line 2106
    move-object v2, v6

    .line 2107
    move v3, v10

    .line 2108
    move v4, v0

    goto :goto_9

    .line 2105
    :cond_c
    goto :goto_9

    .line 2070
    .end local v0    # "trackScore":I
    .end local v11    # "format":Landroidx/media2/exoplayer/external/Format;
    .end local v12    # "maskedSelectionFlags":I
    .end local v13    # "isDefault":Z
    .end local v14    # "isForced":Z
    .end local v15    # "languageScore":I
    .end local v16    # "trackHasNoLanguage":Z
    :cond_d
    move-object/from16 v8, p4

    .line 2069
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_e
    move-object/from16 v8, p4

    .line 2066
    .end local v6    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v9    # "trackFormatSupport":[I
    .end local v10    # "trackIndex":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v8, p4

    .line 2113
    .end local v5    # "groupIndex":I
    if-nez v2, :cond_10

    .line 2114
    const/4 v0, 0x0

    goto :goto_a

    .line 2115
    :cond_10
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v3, v5, v7

    invoke-direct {v0, v2, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2115
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 2113
    :goto_a
    return-object v0
.end method

.method protected final selectTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
    .locals 11
    .param p1, "mappedTrackInfo"    # Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
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

    .line 1426
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 1427
    .local v0, "params":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    .line 1428
    .local v1, "rendererCount":I
    nop

    .line 1429
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectAllTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object v2

    .line 1436
    .local v2, "definitions":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    .line 1437
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1438
    aput-object v4, v2, v3

    .line 1439
    goto :goto_2

    .line 1441
    :cond_0
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    .line 1442
    .local v5, "rendererTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    invoke-virtual {v0, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1443
    invoke-virtual {v0, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v6

    .line 1444
    .local v6, "override":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    nop

    .line 1445
    if-nez v6, :cond_1

    .line 1446
    goto :goto_1

    .line 1447
    :cond_1
    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    iget v7, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1448
    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v7

    iget-object v8, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v9, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    iget v10, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    .line 1451
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V

    :goto_1
    aput-object v4, v2, v3

    goto :goto_2

    .line 1442
    .end local v6    # "override":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    :cond_2
    nop

    .line 1436
    .end local v5    # "rendererTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1456
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->trackSelectionFactory:Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;

    .line 1457
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getBandwidthMeter()Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;->createTrackSelections([Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v3

    .line 1461
    .local v3, "rendererTrackSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    new-array v5, v1, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 1463
    .local v5, "rendererConfigurations":[Landroidx/media2/exoplayer/external/RendererConfiguration;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v1, :cond_8

    .line 1464
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v7

    .line 1465
    .local v7, "forceRendererDisabled":Z
    if-nez v7, :cond_6

    .line 1467
    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_5

    aget-object v8, v3, v6

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_5

    :cond_5
    :goto_4
    const/4 v8, 0x1

    goto :goto_6

    .line 1465
    :cond_6
    nop

    .line 1467
    :goto_5
    const/4 v8, 0x0

    .line 1469
    .local v8, "rendererEnabled":Z
    :goto_6
    if-eqz v8, :cond_7

    sget-object v9, Landroidx/media2/exoplayer/external/RendererConfiguration;->DEFAULT:Landroidx/media2/exoplayer/external/RendererConfiguration;

    goto :goto_7

    :cond_7
    move-object v9, v4

    :goto_7
    aput-object v9, v5, v6

    .line 1463
    .end local v7    # "forceRendererDisabled":Z
    .end local v8    # "rendererEnabled":Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1473
    .end local v6    # "i":I
    :cond_8
    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    invoke-static {p1, p2, v5, v3, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;I)V

    .line 1480
    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method protected selectVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .locals 2
    .param p1, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p2, "formatSupports"    # [[I
    .param p3, "mixedMimeTypeAdaptationSupports"    # I
    .param p4, "params"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "enableAdaptiveTrackSelection"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1624
    const/4 v0, 0x0

    .line 1625
    .local v0, "definition":Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    iget-boolean v1, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v1, :cond_0

    if-eqz p5, :cond_0

    .line 1628
    nop

    .line 1629
    invoke-static {p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object v0

    goto :goto_0

    .line 1625
    :cond_0
    nop

    .line 1631
    :goto_0
    if-nez v0, :cond_1

    .line 1632
    invoke-static {p1, p2, p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object v0

    goto :goto_1

    .line 1631
    :cond_1
    nop

    .line 1634
    :goto_1
    return-object v0
.end method

.method public setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 1320
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->invalidate()V

    goto :goto_0

    .line 1321
    :cond_0
    nop

    .line 1324
    :goto_0
    return-void
.end method

.method public setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .locals 1
    .param p1, "parametersBuilder"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 1332
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    .line 1333
    return-void
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1352
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1353
    return-void
.end method

.method public final setSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .param p3, "override"    # Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1368
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1369
    return-void
.end method

.method public setTunnelingAudioSessionId(I)V
    .locals 1
    .param p1, "tunnelingAudioSessionId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1405
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setTunnelingAudioSessionId(I)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1406
    return-void
.end method
