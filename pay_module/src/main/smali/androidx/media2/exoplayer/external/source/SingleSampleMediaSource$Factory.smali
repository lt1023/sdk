.class public final Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private isCreateCalled:Z

.field private loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 79
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 80
    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;J)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "durationUs"    # J

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    .line 156
    new-instance v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$1;)V

    return-object v0
.end method

.method public createMediaSource(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;JLandroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p3, "durationUs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;J)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;

    move-result-object v0

    .line 178
    .local v0, "mediaSource":Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 179
    invoke-virtual {v0, p5, p6}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    goto :goto_0

    .line 178
    :cond_0
    nop

    .line 181
    :goto_0
    return-object v0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;
    .locals 1
    .param p1, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 125
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 126
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 127
    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;
    .locals 1
    .param p1, "minLoadableRetryCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 91
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 92
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public setTreatLoadErrorsAsEndOfStream(Z)Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;
    .locals 1
    .param p1, "treatLoadErrorsAsEndOfStream"    # Z

    .line 141
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 142
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    .line 143
    return-object p0
.end method
