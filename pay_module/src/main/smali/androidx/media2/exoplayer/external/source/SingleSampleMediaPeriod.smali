.class final Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;,
        Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/source/MediaPeriod;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_SAMPLE_SIZE:I = 0x400


# instance fields
.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private final dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private final durationUs:J

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field final format:Landroidx/media2/exoplayer/external/Format;

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field final loader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field loadingFinished:Z

.field notifiedReadingStarted:Z

.field sampleData:[B

.field sampleSize:I

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Z)V
    .locals 5
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "transferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p5, "durationUs"    # J
    .param p7, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p8, "eventDispatcher"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .param p9, "treatLoadErrorsAsEndOfStream"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 89
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 90
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 91
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->format:Landroidx/media2/exoplayer/external/Format;

    .line 92
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->durationUs:J

    .line 93
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 94
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 95
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    .line 96
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v1, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v4, 0x0

    aput-object p4, v1, v4

    invoke-direct {v3, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v1, "Loader:SingleSampleMediaPeriod"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 99
    invoke-virtual {p8}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    .line 100
    return-void
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    .line 52
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    return-object v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 19
    .param p1, "positionUs"    # J

    .line 156
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v1

    .line 160
    .local v1, "dataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    if-eqz v2, :cond_1

    .line 161
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    goto :goto_0

    .line 160
    :cond_1
    nop

    .line 163
    :goto_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    new-instance v3, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-direct {v3, v4, v1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 167
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v4

    .line 164
    invoke-virtual {v2, v3, v0, v4}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v2

    .line 168
    .local v2, "elapsedRealtimeMs":J
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v8, 0x1

    const/4 v9, -0x1

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->format:Landroidx/media2/exoplayer/external/Format;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->durationUs:J

    move-wide v15, v13

    const-wide/16 v13, 0x0

    move-wide/from16 v17, v2

    invoke-virtual/range {v6 .. v18}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    .line 178
    return v5

    .line 156
    .end local v1    # "dataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .end local v2    # "elapsedRealtimeMs":J
    :cond_2
    :goto_1
    nop

    .line 157
    const/4 v1, 0x0

    return v1
.end method

.method public discardBuffer(JZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 147
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media2/exoplayer/external/SeekParameters;

    .line 210
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 192
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/MediaPeriod$$CC;->getStreamKeys$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V
    .locals 22
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 240
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-object/from16 v10, p1

    iget-object v2, v10, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 242
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v3

    .line 243
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v4

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->durationUs:J

    .line 253
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v18

    .line 240
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v10, v20

    invoke-virtual/range {v1 .. v19}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 254
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 51
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->onLoadCanceled(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V
    .locals 22
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 218
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleSize:I

    .line 219
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$200(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleData:[B

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 221
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-object/from16 v10, p1

    iget-object v2, v10, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 223
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v3

    .line 224
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v4

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->format:Landroidx/media2/exoplayer/external/Format;

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->durationUs:J

    iget v5, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleSize:I

    int-to-long v5, v5

    move-wide/from16 v18, v5

    .line 221
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v10, v20

    invoke-virtual/range {v1 .. v19}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 235
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 51
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->onLoadCompleted(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 30
    .param p1, "loadable"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .param p7, "errorCount"    # I

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 264
    const/4 v2, 0x1

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v1

    .line 266
    .local v1, "retryDelay":J
    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    cmp-long v7, v1, v4

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 269
    invoke-interface {v7, v6}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v7

    move/from16 v8, p7

    if-lt v8, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 266
    :cond_1
    move/from16 v8, p7

    .line 269
    :goto_0
    const/4 v7, 0x1

    .line 272
    .local v7, "errorCanBePropagated":Z
    :goto_1
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    .line 273
    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 274
    sget-object v3, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    goto :goto_3

    .line 272
    :cond_2
    nop

    .line 277
    cmp-long v9, v1, v4

    if-eqz v9, :cond_3

    .line 278
    invoke-static {v3, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v3

    goto :goto_2

    .line 279
    :cond_3
    sget-object v3, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    :goto_2
    nop

    .line 281
    .local v3, "action":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    :goto_3
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-object/from16 v4, p1

    iget-object v10, v4, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 283
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v11

    .line 284
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v12

    const/4 v13, 0x1

    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->format:Landroidx/media2/exoplayer/external/Format;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v20, v15

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->durationUs:J

    .line 294
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v26

    .line 296
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v21

    .line 281
    xor-int/lit8 v29, v21, 0x1

    move-wide/from16 v21, v14

    const/4 v5, -0x1

    move v14, v5

    move-object/from16 v15, v20

    move-wide/from16 v20, v21

    move-wide/from16 v22, p2

    move-wide/from16 v24, p4

    move-object/from16 v28, p6

    invoke-virtual/range {v9 .. v29}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 297
    return-object v3
.end method

.method public bridge synthetic onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 8

    .line 51
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->onLoadError(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .locals 0
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 109
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    .line 110
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 183
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->notifiedReadingStarted:Z

    goto :goto_0

    .line 183
    :cond_0
    nop

    .line 187
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .line 152
    return-void
.end method

.method public release()V
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release()V

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    .line 105
    return-void
.end method

.method public seekToUs(J)J
    .locals 2
    .param p1, "positionUs"    # J

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;->reset()V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_0
    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .locals 4
    .param p1, "selections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media2/exoplayer/external/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 130
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    aput-object v2, p3, v0

    goto :goto_1

    .line 130
    :cond_1
    nop

    .line 134
    :goto_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 135
    new-instance v1, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v2}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$1;)V

    .line 136
    .local v1, "stream":Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    aput-object v1, p3, v0

    .line 138
    const/4 v2, 0x1

    aput-boolean v2, p4, v0

    goto :goto_2

    .line 134
    .end local v1    # "stream":Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl;
    :cond_2
    nop

    .line 129
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_3
    return-wide p5
.end method
