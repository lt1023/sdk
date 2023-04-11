.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private final allowChunklessPreparation:Z

.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

.field private enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private manifestUrlIndicesPerWrapper:[[I

.field private final mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private notifiedReadingStarted:Z

.field private pendingPrepareCount:I

.field private final playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field private sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media2/exoplayer/external/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final useSessionKeys:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;ZZ)V
    .locals 2
    .param p1, "extractorFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
    .param p3, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;
    .param p4, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p6, "eventDispatcher"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .param p7, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p8, "compositeSequenceableLoaderFactory"    # Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;
    .param p9, "allowChunklessPreparation"    # Z
    .param p10, "useSessionKeys"    # Z

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 120
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 121
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    .line 122
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 123
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 124
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 125
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 126
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 127
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 128
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->useSessionKeys:Z

    .line 129
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 130
    invoke-interface {p8, v1}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 131
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 132
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    .line 133
    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 134
    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 135
    new-array v0, v0, [[I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 136
    invoke-virtual {p6}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    .line 137
    return-void
.end method

.method private buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 21
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p3, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local p4, "sampleStreamWrappers":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;>;"
    .local p5, "manifestUrlsIndicesPerWrapper":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    .line 667
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v1, "scratchPlaylistUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v2, Ljava/util/ArrayList;

    .line 669
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 670
    .local v2, "scratchPlaylistFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/Format;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 671
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    .local v3, "scratchIndicesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 673
    .local v4, "alreadyGroupedNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 674
    .local v5, "renditionByNameIndex":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 676
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->name:Ljava/lang/String;

    .line 677
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 679
    move-object/from16 v13, p0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    goto/16 :goto_4

    .line 682
    :cond_0
    const/4 v7, 0x1

    .line 683
    .local v7, "renditionsHaveCodecs":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 684
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 685
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 687
    const/4 v8, 0x0

    .local v8, "renditionIndex":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ge v8, v9, :cond_3

    .line 688
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-static {v6, v9}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 689
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    .line 690
    .local v9, "rendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v12, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->url:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v12, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v12, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-eqz v12, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    and-int/2addr v7, v10

    goto :goto_3

    .line 688
    .end local v9    # "rendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    :cond_2
    nop

    .line 687
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 697
    .end local v8    # "renditionIndex":I
    :cond_3
    const/4 v13, 0x1

    new-array v8, v11, [Landroid/net/Uri;

    .line 700
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, [Landroid/net/Uri;

    new-array v8, v11, [Landroidx/media2/exoplayer/external/Format;

    .line 701
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, [Landroidx/media2/exoplayer/external/Format;

    const/16 v16, 0x0

    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 698
    move-object/from16 v12, p0

    move-object/from16 v18, p6

    move-wide/from16 v19, p1

    invoke-direct/range {v12 .. v20}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    move-result-object v8

    .line 706
    .local v8, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v9

    move-object/from16 v12, p5

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    move-object/from16 v9, p4

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    move-object/from16 v13, p0

    iget-boolean v14, v13, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v14, :cond_4

    if-eqz v7, :cond_4

    .line 710
    new-array v14, v11, [Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroidx/media2/exoplayer/external/Format;

    .line 711
    .local v14, "renditionFormats":[Landroidx/media2/exoplayer/external/Format;
    new-instance v15, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v10, v10, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v14}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v0, v10, v11

    invoke-direct {v15, v10}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sget-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v8, v15, v11, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    goto :goto_4

    .line 709
    .end local v14    # "renditionFormats":[Landroidx/media2/exoplayer/external/Format;
    :cond_4
    nop

    .line 675
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "renditionsHaveCodecs":Z
    .end local v8    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_0

    .line 674
    :cond_5
    move-object/from16 v13, p0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    .line 715
    .end local v5    # "renditionByNameIndex":I
    return-void
.end method

.method private buildAndPrepareMainSampleStreamWrapper(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 26
    .param p1, "masterPlaylist"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .param p2, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p4, "sampleStreamWrappers":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;>;"
    .local p5, "manifestUrlIndicesPerWrapper":Ljava/util/List;, "Ljava/util/List<[I>;"
    .local p6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 546
    .local v1, "variantTypes":[I
    const/4 v2, 0x0

    .line 547
    .local v2, "videoVariantCount":I
    const/4 v3, 0x0

    .line 548
    .local v3, "audioVariantCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v5, :cond_3

    .line 549
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 550
    .local v5, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    iget-object v9, v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    .line 551
    .local v9, "format":Landroidx/media2/exoplayer/external/Format;
    iget v10, v9, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gtz v10, :cond_2

    iget-object v10, v9, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v10, v7}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    iget-object v7, v9, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 555
    aput v8, v1, v4

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 558
    :cond_1
    aput v6, v1, v4

    goto :goto_2

    .line 551
    :cond_2
    :goto_1
    nop

    .line 552
    aput v7, v1, v4

    .line 553
    add-int/lit8 v2, v2, 0x1

    .line 548
    .end local v5    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .end local v9    # "format":Landroidx/media2/exoplayer/external/Format;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 561
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x0

    .line 562
    .local v4, "useVideoVariantsOnly":Z
    const/4 v5, 0x0

    .line 563
    .local v5, "useNonAudioVariantsOnly":Z
    array-length v9, v1

    .line 564
    .local v9, "selectedVariantsCount":I
    if-lez v2, :cond_4

    .line 568
    const/4 v4, 0x1

    .line 569
    move v9, v2

    goto :goto_3

    .line 570
    :cond_4
    array-length v10, v1

    if-ge v3, v10, :cond_5

    .line 573
    const/4 v5, 0x1

    .line 574
    array-length v10, v1

    sub-int v9, v10, v3

    goto :goto_3

    .line 570
    :cond_5
    nop

    .line 576
    :goto_3
    new-array v15, v9, [Landroid/net/Uri;

    .line 577
    .local v15, "selectedPlaylistUrls":[Landroid/net/Uri;
    new-array v14, v9, [Landroidx/media2/exoplayer/external/Format;

    .line 578
    .local v14, "selectedPlaylistFormats":[Landroidx/media2/exoplayer/external/Format;
    new-array v13, v9, [I

    .line 579
    .local v13, "selectedVariantIndices":[I
    const/4 v10, 0x0

    .line 580
    .local v10, "outIndex":I
    const/4 v11, 0x0

    move/from16 v19, v10

    .end local v10    # "outIndex":I
    .local v11, "i":I
    .local v19, "outIndex":I
    :goto_4
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v11, v10, :cond_9

    .line 581
    if-eqz v4, :cond_7

    aget v10, v1, v11

    if-ne v10, v7, :cond_6

    goto :goto_5

    :cond_6
    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v5, :cond_8

    aget v10, v1, v11

    if-eq v10, v8, :cond_6

    .line 583
    :cond_8
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 584
    .local v10, "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    iget-object v12, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    aput-object v12, v15, v19

    .line 585
    iget-object v12, v10, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    aput-object v12, v14, v19

    .line 586
    add-int/lit8 v12, v19, 0x1

    .end local v19    # "outIndex":I
    .local v12, "outIndex":I
    aput v11, v13, v19

    move/from16 v19, v12

    .line 580
    .end local v10    # "variant":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;
    .end local v12    # "outIndex":I
    .restart local v19    # "outIndex":I
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 589
    .end local v11    # "i":I
    :cond_9
    const/4 v12, 0x0

    aget-object v10, v14, v12

    iget-object v11, v10, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 590
    .local v11, "codecs":Ljava/lang/String;
    const/16 v16, 0x0

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 591
    move-object/from16 v17, v10

    move-object/from16 v10, p0

    move-object v8, v11

    .end local v11    # "codecs":Ljava/lang/String;
    .local v8, "codecs":Ljava/lang/String;
    move/from16 v11, v16

    move-object v12, v15

    move-object v7, v13

    .end local v13    # "selectedVariantIndices":[I
    .local v7, "selectedVariantIndices":[I
    move-object v13, v14

    move-object/from16 v22, v14

    .end local v14    # "selectedPlaylistFormats":[Landroidx/media2/exoplayer/external/Format;
    .local v22, "selectedPlaylistFormats":[Landroidx/media2/exoplayer/external/Format;
    move-object/from16 v14, v17

    move-object/from16 v23, v15

    .end local v15    # "selectedPlaylistUrls":[Landroid/net/Uri;
    .local v23, "selectedPlaylistUrls":[Landroid/net/Uri;
    move-object v15, v6

    move-object/from16 v16, p6

    move-wide/from16 v17, p2

    invoke-direct/range {v10 .. v18}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    move-result-object v6

    .line 599
    .local v6, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v10, p4

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    move-object/from16 v11, p5

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    move-object/from16 v12, p0

    iget-boolean v13, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v13, :cond_16

    if-eqz v8, :cond_16

    .line 602
    const/4 v13, 0x2

    invoke-static {v8, v13}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    .line 603
    .local v13, "variantsContainVideoCodecs":Z
    :goto_7
    const/4 v14, 0x1

    invoke-static {v8, v14}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    const/4 v14, 0x1

    goto :goto_8

    :cond_b
    const/4 v14, 0x0

    .line 604
    .local v14, "variantsContainAudioCodecs":Z
    :goto_8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v15, "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/TrackGroup;>;"
    if-eqz v13, :cond_12

    .line 606
    move-object/from16 v16, v1

    .end local v1    # "variantTypes":[I
    .local v16, "variantTypes":[I
    new-array v1, v9, [Landroidx/media2/exoplayer/external/Format;

    .line 607
    .local v1, "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    const/16 v17, 0x0

    move/from16 v18, v2

    move/from16 v2, v17

    .local v2, "i":I
    .local v18, "videoVariantCount":I
    :goto_9
    move/from16 v17, v3

    .end local v3    # "audioVariantCount":I
    .local v17, "audioVariantCount":I
    array-length v3, v1

    if-ge v2, v3, :cond_c

    .line 608
    aget-object v3, v22, v2

    invoke-static {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveVideoFormat(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v1, v2

    .line 607
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    goto :goto_9

    .line 610
    .end local v2    # "i":I
    :cond_c
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v2, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    if-eqz v14, :cond_f

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    if-nez v2, :cond_e

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 613
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v21, v1

    move/from16 v20, v4

    move/from16 v24, v5

    const/4 v3, 0x0

    goto :goto_b

    .line 612
    :cond_e
    nop

    .line 614
    :goto_a
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-object/from16 v21, v1

    const/4 v3, 0x1

    .end local v1    # "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    .local v21, "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    new-array v1, v3, [Landroidx/media2/exoplayer/external/Format;

    move/from16 v20, v4

    const/4 v3, 0x0

    .end local v4    # "useVideoVariantsOnly":Z
    .local v20, "useVideoVariantsOnly":Z
    aget-object v4, v22, v3

    move/from16 v24, v5

    .end local v5    # "useNonAudioVariantsOnly":Z
    .local v24, "useNonAudioVariantsOnly":Z
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    .line 616
    invoke-static {v4, v5, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveAudioFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-direct {v2, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    .line 614
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 612
    .end local v20    # "useVideoVariantsOnly":Z
    .end local v21    # "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    .end local v24    # "useNonAudioVariantsOnly":Z
    .restart local v1    # "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    .restart local v4    # "useVideoVariantsOnly":Z
    .restart local v5    # "useNonAudioVariantsOnly":Z
    :cond_f
    move-object/from16 v21, v1

    move/from16 v20, v4

    move/from16 v24, v5

    const/4 v3, 0x0

    .line 621
    .end local v1    # "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    .end local v4    # "useVideoVariantsOnly":Z
    .end local v5    # "useNonAudioVariantsOnly":Z
    .restart local v20    # "useVideoVariantsOnly":Z
    .restart local v21    # "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    .restart local v24    # "useNonAudioVariantsOnly":Z
    :goto_b
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 622
    .local v1, "ccFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    if-eqz v1, :cond_11

    .line 623
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 624
    new-instance v4, Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v5, 0x1

    new-array v3, v5, [Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/Format;

    const/16 v25, 0x0

    aput-object v5, v3, v25

    invoke-direct {v4, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_c

    :cond_10
    goto :goto_d

    .line 622
    .end local v2    # "i":I
    :cond_11
    nop

    .line 627
    .end local v1    # "ccFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .end local v21    # "videoFormats":[Landroidx/media2/exoplayer/external/Format;
    :goto_d
    goto :goto_f

    .end local v16    # "variantTypes":[I
    .end local v17    # "audioVariantCount":I
    .end local v18    # "videoVariantCount":I
    .end local v20    # "useVideoVariantsOnly":Z
    .end local v24    # "useNonAudioVariantsOnly":Z
    .local v1, "variantTypes":[I
    .local v2, "videoVariantCount":I
    .restart local v3    # "audioVariantCount":I
    .restart local v4    # "useVideoVariantsOnly":Z
    .restart local v5    # "useNonAudioVariantsOnly":Z
    :cond_12
    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v20, v4

    move/from16 v24, v5

    .end local v1    # "variantTypes":[I
    .end local v2    # "videoVariantCount":I
    .end local v3    # "audioVariantCount":I
    .end local v4    # "useVideoVariantsOnly":Z
    .end local v5    # "useNonAudioVariantsOnly":Z
    .restart local v16    # "variantTypes":[I
    .restart local v17    # "audioVariantCount":I
    .restart local v18    # "videoVariantCount":I
    .restart local v20    # "useVideoVariantsOnly":Z
    .restart local v24    # "useNonAudioVariantsOnly":Z
    if-eqz v14, :cond_14

    .line 629
    new-array v1, v9, [Landroidx/media2/exoplayer/external/Format;

    .line 630
    .local v1, "audioFormats":[Landroidx/media2/exoplayer/external/Format;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_13

    .line 631
    aget-object v3, v22, v2

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    .line 632
    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveAudioFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v1, v2

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 637
    .end local v2    # "i":I
    :cond_13
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v2, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v1    # "audioFormats":[Landroidx/media2/exoplayer/external/Format;
    nop

    .line 643
    :goto_f
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v2, 0x1

    new-array v3, v2, [Landroidx/media2/exoplayer/external/Format;

    const-string v2, "ID3"

    const-string v4, "application/id3"

    .line 645
    const/4 v5, 0x0

    const/4 v0, -0x1

    invoke-static {v2, v4, v5, v0, v5}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v3, v2

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    move-object v0, v1

    .line 651
    .local v0, "id3TrackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v3, v2, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 654
    invoke-interface {v15, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v4, 0x1

    new-array v4, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v0, v4, v2

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    .line 653
    invoke-virtual {v6, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    goto :goto_11

    .line 640
    .end local v0    # "id3TrackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected codecs attribute: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_15
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    .end local v13    # "variantsContainVideoCodecs":Z
    .end local v14    # "variantsContainAudioCodecs":Z
    .end local v15    # "muxedTrackGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/TrackGroup;>;"
    .end local v16    # "variantTypes":[I
    .end local v17    # "audioVariantCount":I
    .end local v18    # "videoVariantCount":I
    .end local v20    # "useVideoVariantsOnly":Z
    .end local v24    # "useNonAudioVariantsOnly":Z
    .local v1, "variantTypes":[I
    .local v2, "videoVariantCount":I
    .restart local v3    # "audioVariantCount":I
    .restart local v4    # "useVideoVariantsOnly":Z
    .restart local v5    # "useNonAudioVariantsOnly":Z
    :cond_16
    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v20, v4

    move/from16 v24, v5

    .line 658
    .end local v1    # "variantTypes":[I
    .end local v2    # "videoVariantCount":I
    .end local v3    # "audioVariantCount":I
    .end local v4    # "useVideoVariantsOnly":Z
    .end local v5    # "useNonAudioVariantsOnly":Z
    .restart local v16    # "variantTypes":[I
    .restart local v17    # "audioVariantCount":I
    .restart local v18    # "videoVariantCount":I
    .restart local v20    # "useVideoVariantsOnly":Z
    .restart local v24    # "useNonAudioVariantsOnly":Z
    :goto_11
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers(J)V
    .locals 20
    .param p1, "positionUs"    # J

    .line 449
    move-object/from16 v14, p0

    iget-object v0, v14, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 451
    .local v15, "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    iget-boolean v0, v14, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->useSessionKeys:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 453
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v6, v0

    :goto_0
    nop

    .line 455
    .local v6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    iget-object v0, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v13, 0x1

    xor-int/2addr v0, v13

    move/from16 v16, v0

    .line 456
    .local v16, "hasVariants":Z
    iget-object v12, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 457
    .local v12, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    iget-object v11, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 459
    .local v11, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    const/4 v10, 0x0

    iput v10, v14, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 461
    .local v8, "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 463
    .local v9, "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    if-eqz v16, :cond_1

    .line 464
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, p1

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildAndPrepareMainSampleStreamWrapper(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 463
    :cond_1
    nop

    .line 474
    :goto_1
    move-object/from16 v7, p0

    move-object v0, v8

    move-object v1, v9

    .end local v8    # "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;>;"
    .end local v9    # "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .local v0, "sampleStreamWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;>;"
    .local v1, "manifestUrlIndicesPerWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    move-wide/from16 v8, p1

    const/4 v2, 0x0

    move-object v10, v12

    move-object v3, v11

    .end local v11    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v3, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    move-object v11, v0

    move-object v4, v12

    .end local v12    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    .local v4, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;>;"
    move-object v12, v1

    const/4 v5, 0x1

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 482
    const/4 v7, 0x0

    move v13, v7

    .local v13, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v13, v7, :cond_2

    .line 483
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    .line 484
    .local v12, "subtitleRendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    const/4 v8, 0x3

    new-array v9, v5, [Landroid/net/Uri;

    iget-object v7, v12, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->url:Landroid/net/Uri;

    aput-object v7, v9, v2

    new-array v10, v5, [Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v12, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v10, v2

    const/4 v11, 0x0

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 485
    move-object/from16 v7, p0

    move-object/from16 v18, v12

    .end local v12    # "subtitleRendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    .local v18, "subtitleRendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    move-object/from16 v12, v17

    move/from16 v17, v13

    .end local v13    # "i":I
    .local v17, "i":I
    move-object v13, v6

    move-object/from16 v19, v15

    .end local v15    # "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .local v19, "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    move-wide/from16 v14, p1

    invoke-direct/range {v7 .. v15}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    move-result-object v7

    .line 493
    .local v7, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    new-array v8, v5, [I

    aput v17, v8, v2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v8, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v9, v5, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v10, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v11, v5, [Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v12, v18

    .end local v18    # "subtitleRendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    .restart local v12    # "subtitleRendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    iget-object v13, v12, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    aput-object v13, v11, v2

    invoke-direct {v10, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v10, v9, v2

    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sget-object v9, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v7, v8, v2, v9}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    .line 482
    .end local v7    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .end local v12    # "subtitleRendition":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;
    add-int/lit8 v13, v17, 0x1

    move-object/from16 v15, v19

    move-object/from16 v14, p0

    goto :goto_2

    .end local v17    # "i":I
    .end local v19    # "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .restart local v13    # "i":I
    .restart local v15    # "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    :cond_2
    move/from16 v17, v13

    move-object/from16 v19, v15

    .line 499
    .end local v13    # "i":I
    .end local v15    # "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .restart local v19    # "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    new-array v7, v2, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v8, p0

    iput-object v7, v8, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 500
    new-array v7, v2, [[I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, v8, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 501
    iget-object v7, v8, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v9, v7

    iput v9, v8, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 503
    aget-object v7, v7, v2

    invoke-virtual {v7, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 504
    iget-object v5, v8, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v7, v5

    :goto_3
    if-ge v2, v7, :cond_3

    aget-object v9, v5, v2

    .line 505
    .local v9, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 504
    .end local v9    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 508
    :cond_3
    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iput-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 509
    return-void
.end method

.method private buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .locals 13
    .param p1, "trackType"    # I
    .param p2, "playlistUrls"    # [Landroid/net/Uri;
    .param p3, "playlistFormats"    # [Landroidx/media2/exoplayer/external/Format;
    .param p4, "muxedAudioFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p7, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;J)",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    .line 725
    .local p5, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    .local p6, "overridingDrmInitData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    move-object v11, p0

    new-instance v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    iget-object v1, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v2, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    iget-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-object v7, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    move-object v0, v9

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V

    move-object v3, v9

    .line 735
    .local v3, "defaultChunkSource":Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
    new-instance v12, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget-object v5, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    iget-object v9, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v10, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-object v0, v12

    move v1, p1

    move-object v2, p0

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;-><init>(ILandroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/Allocator;JLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;)V

    return-object v12
.end method

.method private static deriveAudioFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .locals 21
    .param p0, "variantFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p1, "mediaTagFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p2, "isPrimaryTrackInVariant"    # Z

    .line 794
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 795
    .local v2, "channelCount":I
    const/4 v3, 0x0

    .line 796
    .local v3, "selectionFlags":I
    const/4 v4, 0x0

    .line 797
    .local v4, "roleFlags":I
    const/4 v5, 0x0

    .line 798
    .local v5, "language":Ljava/lang/String;
    const/4 v6, 0x0

    .line 799
    .local v6, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 800
    iget-object v7, v1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 801
    .local v7, "codecs":Ljava/lang/String;
    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 802
    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 803
    iget v4, v1, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 804
    iget-object v5, v1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 805
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    goto :goto_0

    .line 807
    .end local v7    # "codecs":Ljava/lang/String;
    :cond_0
    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 808
    .restart local v7    # "codecs":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 809
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 810
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 811
    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 812
    iget-object v5, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 813
    iget-object v6, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    goto :goto_0

    .line 808
    :cond_1
    nop

    .line 816
    :goto_0
    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 817
    .local v20, "sampleMimeType":Ljava/lang/String;
    if-eqz p2, :cond_2

    iget v8, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move v13, v8

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    const/4 v13, -0x1

    .line 818
    .local v13, "bitrate":I
    :goto_1
    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object v9, v6

    move-object/from16 v11, v20

    move-object v12, v7

    move v14, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-static/range {v8 .. v19}, Landroidx/media2/exoplayer/external/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    return-object v8
.end method

.method private static deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 749
    .local p0, "sessionKeyDrmInitData":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 750
    .local v0, "mutableSessionKeyDrmInitData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 751
    .local v1, "drmInitDataBySchemeType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 752
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 753
    .local v3, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    iget-object v4, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 758
    .local v4, "scheme":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    .line 759
    .local v5, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 760
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 761
    .local v6, "nextDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    iget-object v7, v6, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 762
    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->merge(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v3

    .line 763
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 765
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 767
    .end local v6    # "nextDrmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :goto_2
    goto :goto_1

    .line 768
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .end local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static deriveVideoFormat(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 14
    .param p0, "variantFormat"    # Landroidx/media2/exoplayer/external/Format;

    .line 774
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "codecs":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "sampleMimeType":Ljava/lang/String;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v10, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v12, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v13, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    const/4 v11, 0x0

    move-object v5, v1

    move-object v6, v0

    invoke-static/range {v2 .. v13}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 5
    .param p1, "positionUs"    # J

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 347
    .local v4, "wrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 346
    .end local v4    # "wrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_0
    return v2

    .line 351
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 332
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 333
    .local v3, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

    .line 332
    .end local v3    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 392
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 173
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/trackselection/TrackSelection;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 174
    .local v1, "masterPlaylist":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 175
    .local v2, "hasVariants":Z
    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 177
    .local v5, "audioWrapperOffset":I
    :goto_0
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v6, v6

    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    .line 182
    .local v6, "subtitleWrapperOffset":I
    if-eqz v2, :cond_1

    .line 183
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    aget-object v7, v7, v4

    .line 184
    .local v7, "mainWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    aget-object v8, v8, v4

    .line 185
    .local v8, "mainWrapperVariantIndices":[I
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v9

    .line 186
    .local v9, "mainWrapperTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getPrimaryTrackGroupIndex()I

    move-result v7

    .line 187
    .local v7, "mainWrapperPrimaryGroupIndex":I
    goto :goto_1

    .line 188
    .end local v7    # "mainWrapperPrimaryGroupIndex":I
    .end local v8    # "mainWrapperVariantIndices":[I
    .end local v9    # "mainWrapperTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    :cond_1
    new-array v8, v4, [I

    .line 189
    .restart local v8    # "mainWrapperVariantIndices":[I
    sget-object v9, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 190
    .restart local v9    # "mainWrapperTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    const/4 v7, 0x0

    .line 193
    .restart local v7    # "mainWrapperPrimaryGroupIndex":I
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v10, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/offline/StreamKey;>;"
    const/4 v11, 0x0

    .line 195
    .local v11, "needsPrimaryTrackGroupSelection":Z
    const/4 v12, 0x0

    .line 196
    .local v12, "hasPrimaryTrackGroupSelection":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 197
    .local v14, "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v15

    .line 198
    .local v15, "trackSelectionGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    invoke-virtual {v9, v15}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v3

    .line 199
    .local v3, "mainWrapperTrackGroupIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 200
    if-ne v3, v7, :cond_3

    .line 202
    const/4 v4, 0x1

    .line 203
    .end local v12    # "hasPrimaryTrackGroupSelection":Z
    .local v4, "hasPrimaryTrackGroupSelection":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move/from16 v16, v2

    .end local v2    # "hasVariants":Z
    .local v16, "hasVariants":Z
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 204
    invoke-interface {v14, v12}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    aget v2, v8, v2

    .line 205
    .local v2, "variantIndex":I
    move/from16 v17, v3

    .end local v3    # "mainWrapperTrackGroupIndex":I
    .local v17, "mainWrapperTrackGroupIndex":I
    new-instance v3, Landroidx/media2/exoplayer/external/offline/StreamKey;

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "hasPrimaryTrackGroupSelection":Z
    .local v18, "hasPrimaryTrackGroupSelection":Z
    invoke-direct {v3, v4, v2}, Landroidx/media2/exoplayer/external/offline/StreamKey;-><init>(II)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v2    # "variantIndex":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_3

    .end local v17    # "mainWrapperTrackGroupIndex":I
    .end local v18    # "hasPrimaryTrackGroupSelection":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v4    # "hasPrimaryTrackGroupSelection":Z
    :cond_2
    move/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "mainWrapperTrackGroupIndex":I
    .end local v4    # "hasPrimaryTrackGroupSelection":Z
    .restart local v17    # "mainWrapperTrackGroupIndex":I
    .restart local v18    # "hasPrimaryTrackGroupSelection":Z
    move/from16 v20, v5

    move/from16 v12, v18

    goto/16 :goto_7

    .line 209
    .end local v16    # "hasVariants":Z
    .end local v17    # "mainWrapperTrackGroupIndex":I
    .end local v18    # "hasPrimaryTrackGroupSelection":Z
    .local v2, "hasVariants":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    .local v12, "hasPrimaryTrackGroupSelection":Z
    :cond_3
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "hasVariants":Z
    .end local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v16    # "hasVariants":Z
    .restart local v17    # "mainWrapperTrackGroupIndex":I
    const/4 v2, 0x1

    move v11, v2

    move/from16 v20, v5

    goto :goto_7

    .line 213
    .end local v16    # "hasVariants":Z
    .end local v17    # "mainWrapperTrackGroupIndex":I
    .restart local v2    # "hasVariants":Z
    .restart local v3    # "mainWrapperTrackGroupIndex":I
    :cond_4
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "hasVariants":Z
    .end local v3    # "mainWrapperTrackGroupIndex":I
    .restart local v16    # "hasVariants":Z
    .restart local v17    # "mainWrapperTrackGroupIndex":I
    move v2, v5

    .local v2, "i":I
    :goto_4
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 214
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v3

    .line 215
    .local v3, "wrapperTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    invoke-virtual {v3, v15}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v4

    .line 216
    .local v4, "selectedTrackGroupIndex":I
    move-object/from16 v19, v3

    const/4 v3, -0x1

    .end local v3    # "wrapperTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .local v19, "wrapperTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    if-eq v4, v3, :cond_7

    .line 218
    if-ge v2, v6, :cond_5

    .line 219
    const/4 v3, 0x1

    goto :goto_5

    .line 220
    :cond_5
    const/4 v3, 0x2

    :goto_5
    nop

    .line 221
    .local v3, "groupIndexType":I
    move/from16 v18, v4

    .end local v4    # "selectedTrackGroupIndex":I
    .local v18, "selectedTrackGroupIndex":I
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    aget-object v4, v4, v2

    .line 222
    .local v4, "selectedWrapperUrlIndices":[I
    const/16 v20, 0x0

    move/from16 v0, v20

    .local v0, "trackIndex":I
    :goto_6
    move/from16 v20, v5

    .end local v5    # "audioWrapperOffset":I
    .local v20, "audioWrapperOffset":I
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 223
    nop

    .line 224
    invoke-interface {v14, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    aget v5, v4, v5

    .line 225
    .local v5, "renditionIndex":I
    move-object/from16 v21, v4

    .end local v4    # "selectedWrapperUrlIndices":[I
    .local v21, "selectedWrapperUrlIndices":[I
    new-instance v4, Landroidx/media2/exoplayer/external/offline/StreamKey;

    invoke-direct {v4, v3, v5}, Landroidx/media2/exoplayer/external/offline/StreamKey;-><init>(II)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v5    # "renditionIndex":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v20

    move-object/from16 v4, v21

    goto :goto_6

    .end local v21    # "selectedWrapperUrlIndices":[I
    .restart local v4    # "selectedWrapperUrlIndices":[I
    :cond_6
    move-object/from16 v21, v4

    .line 227
    .end local v0    # "trackIndex":I
    .end local v4    # "selectedWrapperUrlIndices":[I
    .restart local v21    # "selectedWrapperUrlIndices":[I
    goto :goto_7

    .line 216
    .end local v3    # "groupIndexType":I
    .end local v18    # "selectedTrackGroupIndex":I
    .end local v20    # "audioWrapperOffset":I
    .end local v21    # "selectedWrapperUrlIndices":[I
    .local v4, "selectedTrackGroupIndex":I
    .local v5, "audioWrapperOffset":I
    :cond_7
    move/from16 v18, v4

    move/from16 v20, v5

    .line 213
    .end local v4    # "selectedTrackGroupIndex":I
    .end local v5    # "audioWrapperOffset":I
    .end local v19    # "wrapperTrackGroups":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .restart local v20    # "audioWrapperOffset":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    const/4 v4, -0x1

    goto :goto_4

    .end local v20    # "audioWrapperOffset":I
    .restart local v5    # "audioWrapperOffset":I
    :cond_8
    move/from16 v20, v5

    .line 231
    .end local v2    # "i":I
    .end local v5    # "audioWrapperOffset":I
    .end local v14    # "trackSelection":Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .end local v15    # "trackSelectionGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v17    # "mainWrapperTrackGroupIndex":I
    .restart local v20    # "audioWrapperOffset":I
    :goto_7
    move/from16 v2, v16

    move/from16 v5, v20

    move-object/from16 v0, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 232
    .end local v16    # "hasVariants":Z
    .end local v20    # "audioWrapperOffset":I
    .local v2, "hasVariants":Z
    .restart local v5    # "audioWrapperOffset":I
    :cond_9
    move/from16 v16, v2

    move/from16 v20, v5

    .end local v2    # "hasVariants":Z
    .end local v5    # "audioWrapperOffset":I
    .restart local v16    # "hasVariants":Z
    .restart local v20    # "audioWrapperOffset":I
    if-eqz v11, :cond_c

    if-nez v12, :cond_c

    .line 235
    const/4 v0, 0x0

    aget v2, v8, v0

    .line 236
    .local v2, "lowestBitrateIndex":I
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget v4, v8, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 237
    .local v0, "lowestBitrate":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_8
    array-length v4, v8

    if-ge v3, v4, :cond_b

    .line 238
    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget v5, v8, v3

    .line 239
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    iget v4, v4, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 240
    .local v4, "variantBitrate":I
    if-ge v4, v0, :cond_a

    .line 241
    move v0, v4

    .line 242
    aget v2, v8, v3

    goto :goto_9

    .line 240
    :cond_a
    nop

    .line 237
    .end local v4    # "variantBitrate":I
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 245
    .end local v3    # "i":I
    :cond_b
    new-instance v3, Landroidx/media2/exoplayer/external/offline/StreamKey;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroidx/media2/exoplayer/external/offline/StreamKey;-><init>(II)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 232
    .end local v0    # "lowestBitrate":I
    .end local v2    # "lowestBitrateIndex":I
    :cond_c
    nop

    .line 247
    :goto_a
    return-object v10
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    .local v3, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 157
    .end local v3    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .locals 0

    .line 64
    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V
    .locals 1
    .param p1, "sampleStreamWrapper"    # Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 426
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 427
    return-void
.end method

.method public onPlaylistChanged()V
    .locals 1

    .line 433
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 434
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "blacklistDurationMs"    # J

    .line 438
    const/4 v0, 0x1

    .line 439
    .local v0, "noBlacklistingFailure":Z
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 440
    .local v4, "streamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result v5

    and-int/2addr v0, v5

    .line 439
    .end local v4    # "streamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    .line 443
    return v0
.end method

.method public onPlaylistRefreshRequired(Landroid/net/Uri;)V
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .line 421
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Landroid/net/Uri;)V

    .line 422
    return-void
.end method

.method public onPrepared()V
    .locals 11

    .line 399
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v0, :cond_0

    .line 400
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x0

    .line 404
    .local v0, "totalTrackGroupCount":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .end local v0    # "totalTrackGroupCount":I
    .local v4, "totalTrackGroupCount":I
    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, v1, v0

    .line 405
    .local v5, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v6

    iget v6, v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    add-int/2addr v4, v6

    .line 404
    .end local v5    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    new-array v0, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 408
    .local v0, "trackGroupArray":[Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v1, 0x0

    .line 409
    .local v1, "trackGroupIndex":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    .line 410
    .local v6, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 411
    .local v7, "wrapperTrackGroupCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_2

    .line 412
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "trackGroupIndex":I
    .local v9, "trackGroupIndex":I
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v1

    .line 411
    add-int/lit8 v8, v8, 0x1

    move v1, v9

    goto :goto_2

    .line 409
    .end local v6    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .end local v7    # "wrapperTrackGroupCount":I
    .end local v8    # "j":I
    .end local v9    # "trackGroupIndex":I
    .restart local v1    # "trackGroupIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 415
    :cond_3
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 416
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 417
    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .locals 1
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 150
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->addListener(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 152
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    .line 153
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 362
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->notifiedReadingStarted:Z

    goto :goto_0

    .line 362
    :cond_0
    nop

    .line 366
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .line 339
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 340
    return-void
.end method

.method public release()V
    .locals 4

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->removeListener(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 142
    .local v3, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->release()V

    .line 141
    .end local v3    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    .line 146
    return-void
.end method

.method public seekToUs(J)J
    .locals 4
    .param p1, "positionUs"    # J

    .line 376
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    if-lez v1, :cond_2

    .line 379
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    .line 380
    .local v0, "forceReset":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 381
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 384
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->reset()V

    goto :goto_1

    .line 383
    :cond_1
    goto :goto_1

    .line 376
    .end local v0    # "forceReset":Z
    :cond_2
    nop

    .line 387
    :goto_1
    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .locals 20
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 255
    .local v3, "streamChildIndices":[I
    array-length v4, v1

    new-array v4, v4, [I

    .line 256
    .local v4, "selectionChildIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 257
    aget-object v6, v2, v5

    const/4 v7, -0x1

    if-nez v6, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    .line 258
    :cond_0
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v8, v2, v5

    invoke-virtual {v6, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    aput v6, v3, v5

    .line 259
    aput v7, v4, v5

    .line 260
    aget-object v6, v1, v5

    if-eqz v6, :cond_3

    .line 261
    aget-object v6, v1, v5

    invoke-interface {v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    .line 262
    .local v6, "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    if-ge v8, v10, :cond_2

    .line 263
    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v9

    if-eq v9, v7, :cond_1

    .line 264
    aput v8, v4, v5

    .line 265
    goto :goto_3

    .line 262
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 260
    .end local v6    # "trackGroup":Landroidx/media2/exoplayer/external/source/TrackGroup;
    .end local v8    # "j":I
    :cond_3
    nop

    .line 256
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 271
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    .line 272
    .local v5, "forceReset":Z
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 274
    array-length v6, v1

    new-array v6, v6, [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 275
    .local v6, "newStreams":[Landroidx/media2/exoplayer/external/source/SampleStream;
    array-length v7, v1

    new-array v7, v7, [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 276
    .local v7, "childStreams":[Landroidx/media2/exoplayer/external/source/SampleStream;
    array-length v8, v1

    new-array v15, v8, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 277
    .local v15, "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    const/4 v8, 0x0

    .line 278
    .local v8, "newEnabledSampleStreamWrapperCount":I
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v9, v9

    new-array v13, v9, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 280
    .local v13, "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    const/4 v9, 0x0

    move/from16 v16, v5

    move v14, v8

    move v5, v9

    .end local v8    # "newEnabledSampleStreamWrapperCount":I
    .local v5, "i":I
    .local v14, "newEnabledSampleStreamWrapperCount":I
    .local v16, "forceReset":Z
    :goto_4
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    const/4 v12, 0x0

    if-ge v5, v8, :cond_11

    .line 281
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_7

    .line 282
    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v5, :cond_5

    aget-object v9, v2, v8

    goto :goto_6

    :cond_5
    move-object v9, v10

    :goto_6
    aput-object v9, v7, v8

    .line 283
    aget v9, v4, v8

    if-ne v9, v5, :cond_6

    aget-object v10, v1, v8

    nop

    :cond_6
    aput-object v10, v15, v8

    .line 281
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 285
    .end local v8    # "j":I
    :cond_7
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    aget-object v11, v8, v5

    .line 286
    .local v11, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    move-object v8, v11

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v2, v11

    .end local v11    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .local v2, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    move-object v11, v7

    move-object/from16 v12, p4

    move-object/from16 v17, v2

    move-object/from16 v18, v13

    move v2, v14

    .end local v13    # "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .local v2, "newEnabledSampleStreamWrapperCount":I
    .local v17, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .local v18, "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    move-wide/from16 v13, p5

    move-object/from16 v19, v15

    .end local v15    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .local v19, "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    move/from16 v15, v16

    invoke-virtual/range {v8 .. v15}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJZ)Z

    move-result v8

    .line 288
    .local v8, "wasReset":Z
    const/4 v9, 0x0

    .line 289
    .local v9, "wrapperEnabled":Z
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v10, v11, :cond_c

    .line 290
    aget v11, v4, v10

    if-ne v11, v5, :cond_9

    .line 292
    aget-object v11, v7, v10

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 293
    aget-object v11, v7, v10

    aput-object v11, v6, v10

    .line 294
    const/4 v9, 0x1

    .line 295
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v12, v7, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 296
    :cond_9
    aget v11, v3, v10

    if-ne v11, v5, :cond_b

    .line 298
    aget-object v11, v7, v10

    if-nez v11, :cond_a

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    goto :goto_a

    .line 296
    :cond_b
    nop

    .line 289
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 301
    .end local v10    # "j":I
    :cond_c
    if-eqz v9, :cond_10

    .line 302
    aput-object v17, v18, v2

    .line 303
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "newEnabledSampleStreamWrapperCount":I
    .restart local v14    # "newEnabledSampleStreamWrapperCount":I
    if-nez v2, :cond_f

    .line 306
    move-object/from16 v10, v17

    .end local v17    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .local v10, "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v10, v12}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 307
    if-nez v8, :cond_e

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v11, v2

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    aget-object v2, v2, v11

    if-eq v10, v2, :cond_d

    goto :goto_b

    :cond_d
    goto :goto_c

    .line 311
    :cond_e
    :goto_b
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->reset()V

    .line 312
    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_c

    .line 315
    .end local v10    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .restart local v17    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    :cond_f
    move-object/from16 v10, v17

    const/4 v11, 0x0

    .end local v17    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .restart local v10    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    goto :goto_c

    .line 301
    .end local v10    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .restart local v2    # "newEnabledSampleStreamWrapperCount":I
    .restart local v17    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    :cond_10
    move-object/from16 v10, v17

    .end local v17    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .restart local v10    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    move v14, v2

    .line 280
    .end local v2    # "newEnabledSampleStreamWrapperCount":I
    .end local v8    # "wasReset":Z
    .end local v9    # "wrapperEnabled":Z
    .end local v10    # "sampleStreamWrapper":Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .restart local v14    # "newEnabledSampleStreamWrapperCount":I
    :goto_c
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, v18

    move-object/from16 v15, v19

    move-object/from16 v2, p3

    goto/16 :goto_4

    .end local v18    # "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .end local v19    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v13    # "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .restart local v15    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    :cond_11
    move-object/from16 v18, v13

    move v2, v14

    move-object/from16 v19, v15

    const/4 v11, 0x0

    .line 320
    .end local v5    # "i":I
    .end local v13    # "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "newEnabledSampleStreamWrapperCount":I
    .end local v15    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .restart local v2    # "newEnabledSampleStreamWrapperCount":I
    .restart local v18    # "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .restart local v19    # "childSelections":[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    array-length v5, v6

    move-object/from16 v8, p3

    invoke-static {v6, v11, v8, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    move-object/from16 v5, v18

    .end local v18    # "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .local v5, "newEnabledSampleStreamWrappers":[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iput-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 324
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 325
    invoke-interface {v9, v10}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    move-result-object v9

    iput-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 327
    return-wide p5
.end method
