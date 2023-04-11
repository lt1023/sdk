.class Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;
.super Landroidx/media2/session/MediaController$ControllerCallback;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/PlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/PlayerWrapper;


# direct methods
.method constructor <init>(Landroidx/media2/widget/PlayerWrapper;)V
    .locals 0

    .line 439
    iput-object p1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-direct {p0}, Landroidx/media2/session/MediaController$ControllerCallback;-><init>()V

    .line 440
    return-void
.end method


# virtual methods
.method public onAllowedCommandsChanged(Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 452
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    if-ne v0, p2, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iput-object p2, v0, Landroidx/media2/widget/PlayerWrapper;->mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 454
    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onAllowedCommandsChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/session/SessionCommandGroup;)V

    .line 455
    return-void
.end method

.method public onConnected(Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "allowedCommands"    # Landroidx/media2/session/SessionCommandGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 445
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onConnected(Landroidx/media2/widget/PlayerWrapper;)V

    .line 446
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->updateAndNotifyCachedStates()V

    .line 447
    return-void
.end method

.method public onCurrentMediaItemChanged(Landroidx/media2/session/MediaController;Landroidx/media2/common/MediaItem;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 477
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroidx/media2/widget/PlayerWrapper;->mMediaMetadata:Landroidx/media2/common/MediaMetadata;

    .line 478
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onCurrentMediaItemChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;)V

    .line 479
    return-void
.end method

.method public onPlaybackCompleted(Landroidx/media2/session/MediaController;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 489
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlaybackCompleted(Landroidx/media2/widget/PlayerWrapper;)V

    .line 490
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/session/MediaController;F)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "speed"    # F

    .line 466
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlaybackSpeedChanged(Landroidx/media2/widget/PlayerWrapper;F)V

    .line 467
    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # I

    .line 459
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget v0, v0, Landroidx/media2/widget/PlayerWrapper;->mSavedPlayerState:I

    if-ne v0, p2, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iput p2, v0, Landroidx/media2/widget/PlayerWrapper;->mSavedPlayerState:I

    .line 461
    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlayerStateChanged(Landroidx/media2/widget/PlayerWrapper;I)V

    .line 462
    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/session/MediaController;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
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
            "Landroidx/media2/session/MediaController;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    .line 484
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onPlaylistChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    .line 485
    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/session/MediaController;J)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # J

    .line 471
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onSeekCompleted(Landroidx/media2/widget/PlayerWrapper;J)V

    .line 472
    return-void
.end method

.method public onSubtitleData(Landroidx/media2/session/MediaController;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
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

    .line 501
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onSubtitleData(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    .line 502
    return-void
.end method

.method public onTrackDeselected(Landroidx/media2/session/MediaController;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 519
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onTrackDeselected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 520
    return-void
.end method

.method public onTrackInfoChanged(Landroidx/media2/session/MediaController;Ljava/util/List;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
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
            "Landroidx/media2/session/MediaController;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 507
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onTrackInfoChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V

    .line 508
    return-void
.end method

.method public onTrackSelected(Landroidx/media2/session/MediaController;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 513
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onTrackSelected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 514
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/session/MediaController;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoSize"    # Landroidx/media2/common/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 495
    iget-object v0, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mWrapperCallback:Landroidx/media2/widget/PlayerWrapper$PlayerCallback;

    iget-object v1, p0, Landroidx/media2/widget/PlayerWrapper$MediaControllerCallback;->this$0:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0, v1, p2, p3}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;->onVideoSizeChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    .line 496
    return-void
.end method
