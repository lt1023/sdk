.class public final Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

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

    .line 71
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p2, "extractorsFactory"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 82
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 83
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 84
    const/high16 v0, 0x100000

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 85
    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/MediaSource;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->isCreateCalled:Z

    .line 177
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 3

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;
    .locals 1
    .param p1, "continueLoadingCheckIntervalBytes"    # I

    .line 163
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 164
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 165
    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;
    .locals 1
    .param p1, "customCacheKey"    # Ljava/lang/String;

    .line 117
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 118
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;
    .locals 1
    .param p1, "extractorsFactory"    # Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 103
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 104
    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;)Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;
    .locals 1
    .param p1, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 146
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 147
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 148
    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/MediaSourceFactory;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/MediaSourceFactory$$CC;->setStreamKeys$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaSourceFactory;Ljava/util/List;)Landroidx/media2/exoplayer/external/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 132
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 133
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    .line 134
    return-object p0
.end method
