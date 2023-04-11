.class final Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;
.super Landroidx/media2/session/MediaSession$ControllerCb;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ControllerLegacyCb"
.end annotation


# instance fields
.field private final mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;
    .param p2, "remoteUserInfo"    # Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 591
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Landroidx/media2/session/MediaSession$ControllerCb;-><init>()V

    .line 592
    iput-object p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 593
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 742
    if-ne p0, p1, :cond_0

    .line 743
    const/4 v0, 0x1

    return v0

    .line 745
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 748
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;

    .line 749
    .local v0, "other":Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;
    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v2, v0, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 745
    .end local v0    # "other":Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;
    :cond_2
    :goto_0
    nop

    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 737
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method onAllowedCommandsChanged(ILandroidx/media2/session/SessionCommandGroup;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    return-void
.end method

.method onBufferingStateChanged(ILandroidx/media2/common/MediaItem;IJJJ)V
    .locals 2
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

    .line 647
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onChildrenChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    return-void
.end method

.method onCurrentMediaItemChanged(ILandroidx/media2/common/MediaItem;III)V
    .locals 2
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

    .line 659
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onDisconnected(I)V
    .locals 0
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
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

    .line 608
    return-void
.end method

.method onPlaybackCompleted(I)V
    .locals 2
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onPlaybackInfoChanged(ILandroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "info"    # Landroidx/media2/session/MediaController$PlaybackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onPlaybackSpeedChanged(IJJF)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "speed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
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

    .line 598
    return-void
.end method

.method onPlayerStateChanged(IJJI)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "playerState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onPlaylistChanged(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V
    .locals 2
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

    .line 665
    .local p2, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onPlaylistMetadataChanged(ILandroidx/media2/common/MediaMetadata;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onRepeatModeChanged(IIIII)V
    .locals 2
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

    .line 682
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onSearchResultChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    return-void
.end method

.method onSeekCompleted(IJJJ)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
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

    .line 603
    return-void
.end method

.method onShuffleModeChanged(IIIII)V
    .locals 2
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

    .line 676
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method onSubtitleData(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
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

    .line 733
    return-void
.end method

.method onTrackDeselected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
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

    .line 717
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    return-void
.end method

.method onTrackSelected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    return-void
.end method

.method onVideoSizeChanged(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
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

    .line 709
    return-void
.end method

.method sendCustomCommand(ILandroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "command"    # Landroidx/media2/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    return-void
.end method

.method setCustomLayout(ILjava/util/List;)V
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

    .line 613
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    return-void
.end method
