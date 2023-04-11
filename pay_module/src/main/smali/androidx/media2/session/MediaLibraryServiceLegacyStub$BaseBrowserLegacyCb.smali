.class abstract Landroidx/media2/session/MediaLibraryServiceLegacyStub$BaseBrowserLegacyCb;
.super Landroidx/media2/session/MediaSession$ControllerCb;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseBrowserLegacyCb"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Landroidx/media2/session/MediaSession$ControllerCb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/session/MediaLibraryServiceLegacyStub$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/session/MediaLibraryServiceLegacyStub$1;

    .line 389
    invoke-direct {p0}, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BaseBrowserLegacyCb;-><init>()V

    return-void
.end method


# virtual methods
.method final onAllowedCommandsChanged(ILandroidx/media2/session/SessionCommandGroup;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    return-void
.end method

.method final onBufferingStateChanged(ILandroidx/media2/common/MediaItem;IJJJ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "bufferingState"    # I
    .param p4, "bufferedPositionMs"    # J
    .param p6, "eventTimeMs"    # J
    .param p8, "positionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    return-void
.end method

.method final onCurrentMediaItemChanged(ILandroidx/media2/common/MediaItem;III)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "currentIdx"    # I
    .param p4, "previousIdx"    # I
    .param p5, "nextIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    return-void
.end method

.method final onDisconnected(I)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    return-void
.end method

.method onLibraryResult(ILandroidx/media2/session/LibraryResult;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/session/LibraryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    return-void
.end method

.method final onPlaybackCompleted(I)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    return-void
.end method

.method final onPlaybackInfoChanged(ILandroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "info"    # Landroidx/media2/session/MediaController$PlaybackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    return-void
.end method

.method final onPlaybackSpeedChanged(IJJF)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "speed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    return-void
.end method

.method onPlayerResult(ILandroidx/media2/common/SessionPlayer$PlayerResult;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/common/SessionPlayer$PlayerResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    return-void
.end method

.method final onPlayerStateChanged(IJJI)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "playerState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    return-void
.end method

.method final onPlaylistChanged(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V
    .locals 0
    .param p1, "seq"    # I
    .param p3, "metadata"    # Landroidx/media2/common/MediaMetadata;
    .param p4, "currentIdx"    # I
    .param p5, "previousIdx"    # I
    .param p6, "nextIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    .local p2, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    return-void
.end method

.method final onPlaylistMetadataChanged(ILandroidx/media2/common/MediaMetadata;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    return-void
.end method

.method final onRepeatModeChanged(IIIII)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "repeatMode"    # I
    .param p3, "currentIdx"    # I
    .param p4, "previousIdx"    # I
    .param p5, "nextIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    return-void
.end method

.method final onSeekCompleted(IJJJ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    return-void
.end method

.method onSessionResult(ILandroidx/media2/session/SessionResult;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/session/SessionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    return-void
.end method

.method final onShuffleModeChanged(IIIII)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "shuffleMode"    # I
    .param p3, "currentIdx"    # I
    .param p4, "previousIdx"    # I
    .param p5, "nextIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    return-void
.end method

.method final onSubtitleData(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0
    .param p1, "seq"    # I
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

    .line 521
    return-void
.end method

.method final onTrackDeselected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    return-void
.end method

.method onTrackInfoChanged(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .param p1, "seq"    # I
    .param p3, "selectedVideoTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p4, "selectedAudioTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p5, "selectedSubtitleTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .param p6, "selectedMetadataTrack"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    return-void
.end method

.method final onTrackSelected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    return-void
.end method

.method final onVideoSizeChanged(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoSize"    # Landroidx/media2/common/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 495
    return-void
.end method

.method final sendCustomCommand(ILandroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "command"    # Landroidx/media2/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    return-void
.end method

.method final setCustomLayout(ILjava/util/List;)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    return-void
.end method
