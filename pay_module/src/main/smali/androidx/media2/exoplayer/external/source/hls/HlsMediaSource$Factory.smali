.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowChunklessPreparation:Z

.field private compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

.field private extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private final hlsDataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

.field private isCreateCalled:Z

.field private loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

.field private playlistTrackerFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

.field private streamKeys:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useSessionKeys:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;)V
    .locals 1
    .param p1, "hlsDataSourceFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    .line 101
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 102
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 103
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;->DEFAULT:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 104
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 105
    new-instance v0, Landroidx/media2/exoplayer/external/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 90
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;)V

    .line 91
    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/MediaSource;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
    .locals 14
    .param p1, "playlistUri"    # Landroid/net/Uri;

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    .line 273
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->streamKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 274
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    goto :goto_0

    .line 273
    :cond_0
    nop

    .line 277
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 283
    invoke-interface {v1, v5, v8, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;->createTracker(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    iget-boolean v11, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    iget-object v12, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$1;)V

    .line 277
    return-object v0
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
    .locals 1
    .param p1, "playlistUri"    # Landroid/net/Uri;
    .param p2, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "eventListener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    move-result-object v0

    .line 259
    .local v0, "mediaSource":Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 260
    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    goto :goto_0

    .line 259
    :cond_0
    nop

    .line 262
    :goto_0
    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 3

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    return-object v0
.end method

.method public setAllowChunklessPreparation(Z)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "allowChunklessPreparation"    # Z

    .line 230
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 231
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    .line 232
    return-object p0
.end method

.method public setCompositeSequenceableLoaderFactory(Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "compositeSequenceableLoaderFactory"    # Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 215
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 216
    nop

    .line 217
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 218
    return-object p0
.end method

.method public setExtractorFactory(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "extractorFactory"    # Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 133
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 134
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 135
    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 149
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 150
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 151
    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "minLoadableRetryCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 170
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 171
    return-object p0
.end method

.method public setPlaylistParserFactory(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "playlistParserFactory"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 183
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 184
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 185
    return-object p0
.end method

.method public setPlaylistTrackerFactory(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "playlistTrackerFactory"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 198
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 199
    return-object p0
.end method

.method public bridge synthetic setStreamKeys(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/MediaSourceFactory;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->setStreamKeys(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setStreamKeys(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;"
        }
    .end annotation

    .line 292
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/offline/StreamKey;>;"
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 293
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->streamKeys:Ljava/util/List;

    .line 294
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 118
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 119
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->tag:Ljava/lang/Object;

    .line 120
    return-object p0
.end method

.method public setUseSessionKeys(Z)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .locals 0
    .param p1, "useSessionKeys"    # Z

    .line 245
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    .line 246
    return-object p0
.end method
