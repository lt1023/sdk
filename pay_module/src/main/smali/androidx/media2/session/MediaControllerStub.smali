.class Landroidx/media2/session/MediaControllerStub;
.super Landroidx/media2/session/IMediaController$Stub;
.source "MediaControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaControllerStub$BrowserTask;,
        Landroidx/media2/session/MediaControllerStub$ControllerTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaControllerStub"


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/session/MediaControllerImplBase;",
            ">;"
        }
    .end annotation
.end field

.field final mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SequencedFutureManager;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media2/session/MediaControllerImplBase;
    .param p2, "manager"    # Landroidx/media2/session/SequencedFutureManager;

    .line 47
    invoke-direct {p0}, Landroidx/media2/session/IMediaController$Stub;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/session/MediaControllerStub;->mController:Ljava/lang/ref/WeakReference;

    .line 49
    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    .line 50
    return-void
.end method

.method private dispatchBrowserTask(Landroidx/media2/session/MediaControllerStub$BrowserTask;)V
    .locals 4
    .param p1, "task"    # Landroidx/media2/session/MediaControllerStub$BrowserTask;

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaControllerStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaControllerImplBase;

    .line 533
    .local v2, "browser":Landroidx/media2/session/MediaControllerImplBase;
    instance-of v3, v2, Landroidx/media2/session/MediaBrowserImplBase;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/media2/session/MediaControllerImplBase;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    move-object v3, v2

    check-cast v3, Landroidx/media2/session/MediaBrowserImplBase;

    invoke-interface {p1, v3}, Landroidx/media2/session/MediaControllerStub$BrowserTask;->run(Landroidx/media2/session/MediaBrowserImplBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v2    # "browser":Landroidx/media2/session/MediaControllerImplBase;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    nop

    .line 540
    return-void

    .line 533
    .restart local v2    # "browser":Landroidx/media2/session/MediaControllerImplBase;
    :cond_1
    :goto_0
    nop

    .line 538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    return-void

    .line 538
    .end local v2    # "browser":Landroidx/media2/session/MediaControllerImplBase;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V
    .locals 4
    .param p1, "task"    # Landroidx/media2/session/MediaControllerStub$ControllerTask;

    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 519
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaControllerStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaControllerImplBase;

    .line 520
    .local v2, "controller":Landroidx/media2/session/MediaControllerImplBase;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/media2/session/MediaControllerImplBase;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-interface {p1, v2}, Landroidx/media2/session/MediaControllerStub$ControllerTask;->run(Landroidx/media2/session/MediaControllerImplBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .end local v2    # "controller":Landroidx/media2/session/MediaControllerImplBase;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 526
    nop

    .line 527
    return-void

    .line 520
    .restart local v2    # "controller":Landroidx/media2/session/MediaControllerImplBase;
    :cond_1
    :goto_0
    nop

    .line 525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 521
    return-void

    .line 525
    .end local v2    # "controller":Landroidx/media2/session/MediaControllerImplBase;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 513
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 514
    return-void
.end method

.method public onAllowedCommandsChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "commands"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 370
    if-nez p2, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$17;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaControllerStub$17;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 384
    return-void
.end method

.method public onBufferingStateChanged(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V
    .locals 11
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p3, "state"    # I
    .param p4, "bufferedPositionMs"    # J
    .param p6, "eventTimeMs"    # J
    .param p8, "positionMs"    # J

    .line 127
    if-nez p2, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    new-instance v10, Landroidx/media2/session/MediaControllerStub$6;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroidx/media2/session/MediaControllerStub$6;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;IJJJ)V

    move-object v0, p0

    invoke-direct {p0, v10}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 142
    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParams"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 492
    if-nez p4, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    const-string v0, "MediaControllerStub"

    const-string v1, "onChildrenChanged(): Ignoring empty parentId"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 499
    :cond_1
    if-gez p3, :cond_2

    .line 500
    const-string v0, "MediaControllerStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildrenChanged(): Ignoring negative itemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 503
    :cond_2
    new-instance v0, Landroidx/media2/session/MediaControllerStub$23;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/session/MediaControllerStub$23;-><init>(Landroidx/media2/session/MediaControllerStub;Ljava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchBrowserTask(Landroidx/media2/session/MediaControllerStub$BrowserTask;)V

    .line 510
    return-void
.end method

.method public onConnected(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 32
    .param p1, "seq"    # I
    .param p2, "connectionResult"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 296
    if-nez p2, :cond_0

    .line 298
    invoke-virtual/range {p0 .. p1}, Landroidx/media2/session/MediaControllerStub;->onDisconnected(I)V

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 303
    .local v1, "token":J
    move-object/from16 v3, p0

    :try_start_0
    iget-object v0, v3, Landroidx/media2/session/MediaControllerStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaControllerImplBase;

    .line 304
    .local v0, "controller":Landroidx/media2/session/MediaControllerImplBase;
    if-nez v0, :cond_1

    .line 306
    const-string v4, "MediaControllerStub"

    const-string v5, "onConnected after MediaController.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    return-void

    .line 310
    :cond_1
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v4

    check-cast v4, Landroidx/media2/session/ConnectionResult;

    move-object/from16 v31, v4

    .line 311
    .local v31, "result":Landroidx/media2/session/ConnectionResult;
    nop

    .line 312
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getPlaylistSlice()Landroidx/media2/common/ParcelImplListSlice;

    move-result-object v4

    invoke-static {v4}, Landroidx/media2/session/MediaUtils;->convertParcelImplListSliceToMediaItemList(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;

    move-result-object v19

    .line 313
    .local v19, "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getSessionStub()Landroidx/media2/session/IMediaSession;

    move-result-object v5

    .line 314
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getAllowedCommands()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getPlayerState()I

    move-result v7

    .line 315
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v8

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getPositionEventTimeMs()J

    move-result-wide v9

    .line 316
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getPositionMs()J

    move-result-wide v11

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getPlaybackSpeed()F

    move-result v13

    .line 317
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getBufferedPositionMs()J

    move-result-wide v14

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getPlaybackInfo()Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v16

    .line 318
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getRepeatMode()I

    move-result v17

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getShuffleMode()I

    move-result v18

    .line 319
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getCurrentMediaItemIndex()I

    move-result v21

    .line 320
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getPreviousMediaItemIndex()I

    move-result v22

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getNextMediaItemIndex()I

    move-result v23

    .line 321
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getTokenExtras()Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v25

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getTrackInfo()Ljava/util/List;

    move-result-object v26

    .line 322
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getSelectedVideoTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v27

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getSelectedAudioTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v28

    .line 323
    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getSelectedSubtitleTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v29

    invoke-virtual/range {v31 .. v31}, Landroidx/media2/session/ConnectionResult;->getSelectedMetadataTrack()Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v30

    .line 313
    move-object v4, v0

    invoke-virtual/range {v4 .. v30}, Landroidx/media2/session/MediaControllerImplBase;->onConnectedNotLocked(Landroidx/media2/session/IMediaSession;Landroidx/media2/session/SessionCommandGroup;ILandroidx/media2/common/MediaItem;JJFJLandroidx/media2/session/MediaController$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;IIILandroid/os/Bundle;Landroidx/media2/common/VideoSize;Ljava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v0    # "controller":Landroidx/media2/session/MediaControllerImplBase;
    .end local v19    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .end local v31    # "result":Landroidx/media2/session/ConnectionResult;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    nop

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onCurrentMediaItemChanged(ILandroidx/versionedparcelable/ParcelImpl;III)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p3, "currentIdx"    # I
    .param p4, "previousIdx"    # I
    .param p5, "nextIdx"    # I

    .line 89
    if-nez p2, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    new-instance v6, Landroidx/media2/session/MediaControllerStub$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaControllerStub$3;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;III)V

    invoke-direct {p0, v6}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 100
    return-void
.end method

.method public onCustomCommand(ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "commandParcel"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 388
    if-nez p2, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$18;

    invoke-direct {v0, p0, p2, p1, p3}, Landroidx/media2/session/MediaControllerStub$18;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;ILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 402
    return-void
.end method

.method public onDisconnected(I)V
    .locals 5
    .param p1, "seq"    # I

    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 333
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaControllerStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaControllerImplBase;

    .line 334
    .local v2, "controller":Landroidx/media2/session/MediaControllerImplBase;
    if-nez v2, :cond_0

    .line 336
    const-string v3, "MediaControllerStub"

    const-string v4, "onDisconnected after MediaController.close()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v3, v2, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v3}, Landroidx/media2/session/MediaController;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .end local v2    # "controller":Landroidx/media2/session/MediaControllerImplBase;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    nop

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onLibraryResult(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "libraryResult"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 71
    if-nez p2, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$2;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/MediaControllerStub$2;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchBrowserTask(Landroidx/media2/session/MediaControllerStub$BrowserTask;)V

    .line 84
    return-void
.end method

.method public onPlaybackCompleted(I)V
    .locals 1
    .param p1, "seq"    # I

    .line 202
    new-instance v0, Landroidx/media2/session/MediaControllerStub$11;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaControllerStub$11;-><init>(Landroidx/media2/session/MediaControllerStub;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 208
    return-void
.end method

.method public onPlaybackInfoChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "playbackInfo"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 213
    if-nez p2, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    const-string v0, "MediaControllerStub"

    const-string v1, "onPlaybackInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Landroidx/media2/session/MediaControllerStub$12;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaControllerStub$12;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 230
    return-void
.end method

.method public onPlaybackSpeedChanged(IJJF)V
    .locals 8
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "speed"    # F

    .line 116
    new-instance v7, Landroidx/media2/session/MediaControllerStub$5;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/MediaControllerStub$5;-><init>(Landroidx/media2/session/MediaControllerStub;JJF)V

    invoke-direct {p0, v7}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 122
    return-void
.end method

.method public onPlayerStateChanged(IJJI)V
    .locals 8
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "state"    # I

    .line 105
    new-instance v7, Landroidx/media2/session/MediaControllerStub$4;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/MediaControllerStub$4;-><init>(Landroidx/media2/session/MediaControllerStub;JJI)V

    invoke-direct {p0, v7}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 111
    return-void
.end method

.method public onPlaylistChanged(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V
    .locals 8
    .param p1, "seq"    # I
    .param p2, "listSlice"    # Landroidx/media2/common/ParcelImplListSlice;
    .param p3, "metadata"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p4, "currentIdx"    # I
    .param p5, "previousIdx"    # I
    .param p6, "nextIdx"    # I

    .line 148
    if-nez p3, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    new-instance v7, Landroidx/media2/session/MediaControllerStub$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/MediaControllerStub$7;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V

    invoke-direct {p0, v7}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 161
    return-void
.end method

.method public onPlaylistMetadataChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "metadata"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 166
    if-nez p2, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$8;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaControllerStub$8;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 176
    return-void
.end method

.method public onRepeatModeChanged(IIIII)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "repeatMode"    # I
    .param p3, "currentIdx"    # I
    .param p4, "previousIdx"    # I
    .param p5, "nextIdx"    # I

    .line 181
    new-instance v6, Landroidx/media2/session/MediaControllerStub$9;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaControllerStub$9;-><init>(Landroidx/media2/session/MediaControllerStub;IIII)V

    invoke-direct {p0, v6}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 187
    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParams"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 469
    if-nez p4, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    const-string v0, "MediaControllerStub"

    const-string v1, "onSearchResultChanged(): Ignoring empty query"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 476
    :cond_1
    if-gez p3, :cond_2

    .line 477
    const-string v0, "MediaControllerStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchResultChanged(): Ignoring negative itemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 480
    :cond_2
    new-instance v0, Landroidx/media2/session/MediaControllerStub$22;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/session/MediaControllerStub$22;-><init>(Landroidx/media2/session/MediaControllerStub;Ljava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchBrowserTask(Landroidx/media2/session/MediaControllerStub$BrowserTask;)V

    .line 487
    return-void
.end method

.method public onSeekCompleted(IJJJ)V
    .locals 9
    .param p1, "seq"    # I
    .param p2, "eventTimeMs"    # J
    .param p4, "positionMs"    # J
    .param p6, "seekPositionMs"    # J

    .line 235
    new-instance v8, Landroidx/media2/session/MediaControllerStub$13;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media2/session/MediaControllerStub$13;-><init>(Landroidx/media2/session/MediaControllerStub;JJJ)V

    move-object v0, p0

    invoke-direct {p0, v8}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 241
    return-void
.end method

.method public onSessionResult(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "sessionResult"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 54
    if-nez p2, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$1;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/MediaControllerStub$1;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 67
    return-void
.end method

.method public onSetCustomLayout(ILjava/util/List;)V
    .locals 2
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p2, "commandButtonList":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    if-nez p2, :cond_0

    .line 349
    const-string v0, "MediaControllerStub"

    const-string v1, "setCustomLayout(): Ignoring null commandButtonList"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$16;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/MediaControllerStub$16;-><init>(Landroidx/media2/session/MediaControllerStub;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 366
    return-void
.end method

.method public onShuffleModeChanged(IIIII)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "shuffleMode"    # I
    .param p3, "currentIdx"    # I
    .param p4, "previousIdx"    # I
    .param p5, "nextIdx"    # I

    .line 192
    new-instance v6, Landroidx/media2/session/MediaControllerStub$10;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaControllerStub$10;-><init>(Landroidx/media2/session/MediaControllerStub;IIII)V

    invoke-direct {p0, v6}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 198
    return-void
.end method

.method public onSubtitleData(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p3, "track"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p4, "data"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 269
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$15;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/session/MediaControllerStub$15;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 293
    return-void

    .line 269
    :cond_1
    :goto_0
    nop

    .line 270
    return-void
.end method

.method public onTrackDeselected(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "trackInfoParcel"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 447
    if-nez p2, :cond_0

    .line 448
    return-void

    .line 450
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$21;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/MediaControllerStub$21;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 461
    return-void
.end method

.method public onTrackInfoChanged(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 9
    .param p1, "seq"    # I
    .param p3, "selectedVideoParcel"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p4, "selectedAudioParcel"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p5, "selectedSubtitleParcel"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p6, "selectedMetadataParcel"    # Landroidx/versionedparcelable/ParcelImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ")V"
        }
    .end annotation

    .line 408
    .local p2, "trackInfoList":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    if-nez p2, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    new-instance v8, Landroidx/media2/session/MediaControllerStub$19;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media2/session/MediaControllerStub$19;-><init>(Landroidx/media2/session/MediaControllerStub;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v8}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 425
    return-void
.end method

.method public onTrackSelected(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "trackInfoParcel"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 429
    if-nez p2, :cond_0

    .line 430
    return-void

    .line 432
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$20;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/MediaControllerStub$20;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 443
    return-void
.end method

.method public onVideoSizeChanged(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "item"    # Landroidx/versionedparcelable/ParcelImpl;
    .param p3, "videoSize"    # Landroidx/versionedparcelable/ParcelImpl;

    .line 245
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Landroidx/media2/session/MediaControllerStub$14;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/session/MediaControllerStub$14;-><init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaControllerStub;->dispatchControllerTask(Landroidx/media2/session/MediaControllerStub$ControllerTask;)V

    .line 264
    return-void

    .line 245
    :cond_1
    :goto_0
    nop

    .line 246
    return-void
.end method
