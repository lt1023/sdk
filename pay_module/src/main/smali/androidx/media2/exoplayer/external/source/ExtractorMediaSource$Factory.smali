.class public final Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isCreateCalled:Z

.field private loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 89
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 90
    const/high16 v0, 0x100000

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 91
    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    goto :goto_0

    .line 199
    :cond_0
    nop

    .line 202
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$1;)V

    return-object v0
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
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

    .line 219
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object v0

    .line 220
    .local v0, "mediaSource":Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 221
    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    goto :goto_0

    .line 220
    :cond_0
    nop

    .line 223
    :goto_0
    return-object v0
.end method

.method public bridge synthetic createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/MediaSource;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedTypes()[I
    .locals 3

    .line 228
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .locals 1
    .param p1, "continueLoadingCheckIntervalBytes"    # I

    .line 185
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 186
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 187
    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .locals 1
    .param p1, "customCacheKey"    # Ljava/lang/String;

    .line 119
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 120
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .locals 1
    .param p1, "extractorsFactory"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 104
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 105
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 106
    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .locals 1
    .param p1, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 168
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 169
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 170
    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .locals 1
    .param p1, "minLoadableRetryCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method public setStreamKeys(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/MediaSourceFactory;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/MediaSourceFactory$$CC;->setStreamKeys$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaSourceFactory;Ljava/util/List;)Landroidx/media2/exoplayer/external/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 134
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    .line 136
    return-object p0
.end method
