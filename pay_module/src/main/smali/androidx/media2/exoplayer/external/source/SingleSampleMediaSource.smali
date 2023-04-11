.class public final Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;,
        Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory;,
        Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private final dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private final durationUs:J

.field private final format:Landroidx/media2/exoplayer/external/Format;

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field private transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;J)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "durationUs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JI)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JI)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "durationUs"    # J
    .param p6, "minLoadableRetryCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    new-instance v6, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v6, p6}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JILandroid/os/Handler;Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;IZ)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "durationUs"    # J
    .param p6, "minLoadableRetryCount"    # I
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;
    .param p9, "eventSourceId"    # I
    .param p10, "treatLoadErrorsAsEndOfStream"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    new-instance v8, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    move/from16 v11, p6

    invoke-direct {v8, v11}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v9, p10

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    .line 278
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 279
    new-instance v2, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;

    move/from16 v3, p9

    invoke-direct {v2, v1, v3}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper;-><init>(Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener;I)V

    move-object v4, p0

    invoke-virtual {p0, v0, v2}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    goto :goto_0

    .line 278
    :cond_0
    move-object v4, p0

    move/from16 v3, p9

    .line 281
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "format"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "durationUs"    # J
    .param p6, "loadErrorHandlingPolicy"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p7, "treatLoadErrorsAsEndOfStream"    # Z
    .param p8, "tag"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 290
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 291
    move-object/from16 v1, p2

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 292
    move-object/from16 v2, p3

    iput-object v2, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->format:Landroidx/media2/exoplayer/external/Format;

    .line 293
    move-wide/from16 v9, p4

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->durationUs:J

    .line 294
    move-object/from16 v11, p6

    iput-object v11, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 295
    move/from16 v12, p7

    iput-boolean v12, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 296
    move-object/from16 v13, p8

    iput-object v13, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->tag:Ljava/lang/Object;

    .line 297
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v4, 0x1

    move-object/from16 v14, p1

    invoke-direct {v3, v14, v4}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    iput-object v3, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 298
    new-instance v15, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v15

    move-wide/from16 v4, p4

    move-object/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    iput-object v15, v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 300
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .param p3, "x2"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "x3"    # J
    .param p6, "x4"    # Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/lang/Object;
    .param p9, "x7"    # Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource$1;

    .line 41
    invoke-direct/range {p0 .. p8}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .locals 11
    .param p1, "id"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 323
    new-instance v10, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->format:Landroidx/media2/exoplayer/external/Format;

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 330
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Z)V

    .line 323
    return-object v10
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 307
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 2
    .param p1, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 312
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 313
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 336
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SingleSampleMediaPeriod;->release()V

    .line 337
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 0

    .line 342
    return-void
.end method
