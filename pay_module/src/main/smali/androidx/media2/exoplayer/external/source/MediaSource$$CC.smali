.class public abstract synthetic Landroidx/media2/exoplayer/external/source/MediaSource$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static getTag$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "this"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public static prepareSource$$dflt$$(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/ExoPlayer;ZLandroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .locals 0
    .param p0, "this"    # Landroidx/media2/exoplayer/external/source/MediaSource;
    .param p1, "player"    # Landroidx/media2/exoplayer/external/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
    .param p4, "mediaTransferListener"    # Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-interface {p0, p3, p4}, Landroidx/media2/exoplayer/external/source/MediaSource;->prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 257
    return-void
.end method
