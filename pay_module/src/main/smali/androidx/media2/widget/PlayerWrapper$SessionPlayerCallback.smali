.class Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;
.super Landroidx/media2/common/SessionPlayer$PlayerCallback;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/PlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionPlayerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/PlayerWrapper;


# direct methods
.method constructor <init>(Landroidx/media2/widget/PlayerWrapper;)V
    .locals 0

    .line 537
    iput-object p1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer$PlayerCallback;-><init>()V

    .line 538
    return-void
.end method


# virtual methods
.method public onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 560
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroidx/media2/widget/PlayerWrapper;->mMediaMetadata:Landroidx/media2/common/MediaMetadata;

    .line 561
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onCurrentMediaItemChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;)V

    .line 562
    return-void
.end method

.method public onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 572
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlaybackCompleted(Landroidx/media2/widget/PlayerWrapper;)V

    .line 573
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "playbackSpeed"    # F

    .line 549
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlaybackSpeedChanged(Landroidx/media2/widget/PlayerWrapper;F)V

    .line 550
    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "playerState"    # I

    .line 542
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget v0, v0, Landroidx/media2/widget/PlayerWrapper;->mSavedPlayerState:I

    if-ne v0, p2, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iput p2, v0, Landroidx/media2/widget/PlayerWrapper;->mSavedPlayerState:I

    .line 544
    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlayerStateChanged(Landroidx/media2/widget/PlayerWrapper;I)V

    .line 545
    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    .line 567
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlaylistChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    .line 568
    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # J

    .line 554
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onSeekCompleted(Landroidx/media2/widget/PlayerWrapper;J)V

    .line 555
    return-void
.end method

.method public onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "track"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "data"    # Landroidx/media2/common/SubtitleData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 584
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onSubtitleData(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    .line 585
    return-void
.end method

.method public onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 600
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onTrackDeselected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 601
    return-void
.end method

.method public onTrackInfoChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 590
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onTrackInfoChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V

    .line 591
    return-void
.end method

.method public onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 595
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onTrackSelected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 596
    return-void
.end method

.method public onVideoSizeChangedInternal(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "size"    # Landroidx/media2/common/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 578
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$SessionPlayerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onVideoSizeChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    .line 579
    return-void
.end method
