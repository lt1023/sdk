.class final Landroidx/media2/session/MediaSessionStub$Controller2Cb;
.super Landroidx/media2/session/MediaSession$ControllerCb;
.source "MediaSessionStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Controller2Cb"
.end annotation


# instance fields
.field private final mIControllerCallback:Landroidx/media2/session/IMediaController;

.field final synthetic this$0:Landroidx/media2/session/MediaSessionStub;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/IMediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Landroidx/media2/session/IMediaController;

    .line 1267
    iput-object p1, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->this$0:Landroidx/media2/session/MediaSessionStub;

    invoke-direct {p0}, Landroidx/media2/session/MediaSession$ControllerCb;-><init>()V

    .line 1268
    iput-object p2, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1269
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1467
    if-ne p0, p1, :cond_0

    .line 1468
    const/4 v0, 0x1

    return v0

    .line 1470
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/session/MediaSessionStub$Controller2Cb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1473
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;

    .line 1474
    .local v0, "other":Landroidx/media2/session/MediaSessionStub$Controller2Cb;
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1470
    .end local v0    # "other":Landroidx/media2/session/MediaSessionStub$Controller2Cb;
    :cond_2
    :goto_0
    nop

    .line 1471
    const/4 v0, 0x0

    return v0
.end method

.method getCallbackBinder()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1273
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-interface {v0}, Landroidx/media2/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1462
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method onAllowedCommandsChanged(ILandroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1312
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    .line 1311
    invoke-interface {v0, p1, v1}, Landroidx/media2/session/IMediaController;->onAllowedCommandsChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1313
    return-void
.end method

.method onBufferingStateChanged(ILandroidx/media2/common/MediaItem;IJJJ)V
    .locals 11
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

    .line 1336
    move-object v0, p0

    iget-object v1, v0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    move v2, p1

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Landroidx/media2/session/IMediaController;->onBufferingStateChanged(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V

    .line 1338
    return-void
.end method

.method onChildrenChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1403
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1404
    invoke-static {p4}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    .line 1403
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/media2/session/IMediaController;->onChildrenChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1405
    return-void
.end method

.method onCurrentMediaItemChanged(ILandroidx/media2/common/MediaItem;III)V
    .locals 6
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

    .line 1349
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/session/IMediaController;->onCurrentMediaItemChanged(ILandroidx/versionedparcelable/ParcelImpl;III)V

    .line 1351
    return-void
.end method

.method onDisconnected(I)V
    .locals 1
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-interface {v0, p1}, Landroidx/media2/session/IMediaController;->onDisconnected(I)V

    .line 1417
    return-void
.end method

.method onLibraryResult(ILandroidx/media2/session/LibraryResult;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/session/LibraryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    if-nez p2, :cond_0

    .line 1292
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    move-object p2, v0

    goto :goto_0

    .line 1291
    :cond_0
    nop

    .line 1294
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media2/session/IMediaController;->onLibraryResult(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1295
    return-void
.end method

.method onPlaybackCompleted(I)V
    .locals 1
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-interface {v0, p1}, Landroidx/media2/session/IMediaController;->onPlaybackCompleted(I)V

    .line 1398
    return-void
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

    .line 1305
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media2/session/IMediaController;->onPlaybackInfoChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1306
    return-void
.end method

.method onPlaybackSpeedChanged(IJJF)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "speed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media2/session/IMediaController;->onPlaybackSpeedChanged(IJJF)V

    .line 1331
    return-void
.end method

.method onPlayerResult(ILandroidx/media2/common/SessionPlayer$PlayerResult;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/common/SessionPlayer$PlayerResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    invoke-static {p2}, Landroidx/media2/session/SessionResult;->from(Landroidx/media2/common/SessionPlayer$PlayerResult;)Landroidx/media2/session/SessionResult;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->onSessionResult(ILandroidx/media2/session/SessionResult;)V

    .line 1279
    return-void
.end method

.method onPlayerStateChanged(IJJI)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "playerState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media2/session/IMediaController;->onPlayerStateChanged(IJJI)V

    .line 1325
    return-void
.end method

.method onPlaylistChanged(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V
    .locals 9
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

    .line 1356
    .local p2, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 1357
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1356
    invoke-virtual {v0, v1}, Landroidx/media2/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 1358
    .local v0, "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    const/16 v2, 0x2715

    invoke-virtual {v1, v0, v2}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1360
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1361
    invoke-static {p2}, Landroidx/media2/session/MediaUtils;->convertMediaItemListToParcelImplListSlice(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;

    move-result-object v4

    .line 1362
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v5

    .line 1360
    move v3, p1

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroidx/media2/session/IMediaController;->onPlaylistChanged(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    const/16 v2, 0x271c

    invoke-virtual {v1, v0, v2}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1365
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1366
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    .line 1365
    invoke-interface {v1, p1, v2}, Landroidx/media2/session/IMediaController;->onPlaylistMetadataChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    goto :goto_0

    .line 1363
    :cond_1
    nop

    .line 1368
    :goto_0
    return-void
.end method

.method onPlaylistMetadataChanged(ILandroidx/media2/common/MediaMetadata;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 1373
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1372
    invoke-virtual {v0, v1}, Landroidx/media2/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 1374
    .local v0, "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    const/16 v2, 0x271c

    invoke-virtual {v1, v0, v2}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1377
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    .line 1376
    invoke-interface {v1, p1, v2}, Landroidx/media2/session/IMediaController;->onPlaylistMetadataChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    goto :goto_0

    .line 1374
    :cond_0
    nop

    .line 1379
    :goto_0
    return-void
.end method

.method onRepeatModeChanged(IIIII)V
    .locals 6
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

    .line 1391
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/session/IMediaController;->onRepeatModeChanged(IIIII)V

    .line 1393
    return-void
.end method

.method onSearchResultChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1411
    invoke-static {p4}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    .line 1410
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/media2/session/IMediaController;->onSearchResultChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1412
    return-void
.end method

.method onSeekCompleted(IJJJ)V
    .locals 8
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "seekPositionMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Landroidx/media2/session/IMediaController;->onSeekCompleted(IJJJ)V

    .line 1344
    return-void
.end method

.method onSessionResult(ILandroidx/media2/session/SessionResult;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "result"    # Landroidx/media2/session/SessionResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    if-nez p2, :cond_0

    .line 1284
    new-instance v0, Landroidx/media2/session/SessionResult;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    move-object p2, v0

    goto :goto_0

    .line 1283
    :cond_0
    nop

    .line 1286
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media2/session/IMediaController;->onSessionResult(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1287
    return-void
.end method

.method onShuffleModeChanged(IIIII)V
    .locals 6
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

    .line 1384
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/session/IMediaController;->onShuffleModeChanged(IIIII)V

    .line 1386
    return-void
.end method

.method onSubtitleData(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 4
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1454
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v0

    .line 1455
    .local v0, "itemParcel":Landroidx/versionedparcelable/ParcelImpl;
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    .line 1456
    .local v1, "trackParcel":Landroidx/versionedparcelable/ParcelImpl;
    invoke-static {p4}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    .line 1457
    .local v2, "dataParcel":Landroidx/versionedparcelable/ParcelImpl;
    iget-object v3, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-interface {v3, p1, v0, v1, v2}, Landroidx/media2/session/IMediaController;->onSubtitleData(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 1458
    return-void
.end method

.method onTrackDeselected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media2/session/IMediaController;->onTrackDeselected(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1448
    return-void
.end method

.method onTrackInfoChanged(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 8
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

    .line 1432
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1433
    .local v7, "trackInfoList":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1434
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    .line 1435
    invoke-static {p4}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v4

    .line 1436
    invoke-static {p5}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v5

    .line 1437
    invoke-static {p6}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v6

    .line 1433
    move v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Landroidx/media2/session/IMediaController;->onTrackInfoChanged(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 1438
    return-void
.end method

.method onTrackSelected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/media2/session/IMediaController;->onTrackSelected(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 1443
    return-void
.end method

.method onVideoSizeChanged(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoSize"    # Landroidx/media2/common/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1422
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v0

    .line 1423
    .local v0, "itemParcel":Landroidx/versionedparcelable/ParcelImpl;
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    .line 1424
    .local v1, "videoSizeParcel":Landroidx/versionedparcelable/ParcelImpl;
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-interface {v2, p1, v0, v1}, Landroidx/media2/session/IMediaController;->onVideoSizeChanged(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 1425
    return-void
.end method

.method sendCustomCommand(ILandroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "command"    # Landroidx/media2/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1318
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroidx/media2/session/IMediaController;->onCustomCommand(ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V

    .line 1319
    return-void
.end method

.method setCustomLayout(ILjava/util/List;)V
    .locals 2
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

    .line 1299
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$Controller2Cb;->mIControllerCallback:Landroidx/media2/session/IMediaController;

    .line 1300
    invoke-static {p2}, Landroidx/media2/session/MediaUtils;->convertCommandButtonListToParcelImplList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1299
    invoke-interface {v0, p1, v1}, Landroidx/media2/session/IMediaController;->onSetCustomLayout(ILjava/util/List;)V

    .line 1301
    return-void
.end method
