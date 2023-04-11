.class Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;
.super Landroidx/media2/common/SessionPlayer$PlayerCallback;
.source "MediaSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionPlayerCallback"
.end annotation


# instance fields
.field private final mCurrentItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaItem:Landroidx/media2/common/MediaItem;

.field private final mPlaylistItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

.field private final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/session/MediaSessionImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 1302
    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer$PlayerCallback;-><init>()V

    .line 1303
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mSession:Ljava/lang/ref/WeakReference;

    .line 1304
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;

    invoke-direct {v0, p1}, Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mCurrentItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;

    .line 1305
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

    invoke-direct {v0, p1}, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mPlaylistItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

    .line 1306
    return-void
.end method

.method private dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "task"    # Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1556
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1557
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 1560
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1561
    return-void

    .line 1557
    :cond_1
    :goto_0
    nop

    .line 1558
    return-void
.end method

.method private getSession()Landroidx/media2/session/MediaSessionImplBase;
    .locals 4

    .line 1547
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaSessionImplBase;

    .line 1548
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-nez v0, :cond_0

    sget-boolean v1, Landroidx/media2/session/MediaSessionImplBase;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1549
    const-string v1, "MSImplBase"

    const-string v2, "Session is closed"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1548
    :cond_0
    nop

    .line 1551
    :goto_0
    return-object v0
.end method

.method private updateDurationIfNeeded(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .locals 8
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1565
    if-nez p2, :cond_0

    .line 1566
    return-void

    .line 1568
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1569
    return-void

    .line 1571
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getDuration()J

    move-result-wide v0

    .line 1572
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 1576
    :cond_2
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    .line 1577
    .local v2, "metadata":Landroidx/media2/common/MediaMetadata;
    if-eqz v2, :cond_5

    .line 1578
    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v2, v3}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1579
    new-instance v3, Landroidx/media2/common/MediaMetadata$Builder;

    invoke-direct {v3, v2}, Landroidx/media2/common/MediaMetadata$Builder;-><init>(Landroidx/media2/common/MediaMetadata;)V

    const-string v4, "android.media.metadata.DURATION"

    invoke-virtual {v3, v4, v0, v1}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v3

    .line 1580
    invoke-virtual {v3}, Landroidx/media2/common/MediaMetadata$Builder;->build()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    goto :goto_0

    .line 1582
    :cond_3
    const-string v3, "android.media.metadata.DURATION"

    .line 1583
    invoke-virtual {v2, v3}, Landroidx/media2/common/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1584
    .local v3, "durationFromMetadata":J
    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    .line 1585
    return-void

    .line 1589
    :cond_4
    const-string v5, "MSImplBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duration mismatch for an item. duration from player="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " duration from metadata="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ". May be a timing issue?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    .end local v3    # "durationFromMetadata":J
    goto :goto_0

    .line 1599
    :cond_5
    new-instance v3, Landroidx/media2/common/MediaMetadata$Builder;

    invoke-direct {v3}, Landroidx/media2/common/MediaMetadata$Builder;-><init>()V

    const-string v4, "android.media.metadata.DURATION"

    .line 1600
    invoke-virtual {v3, v4, v0, v1}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.MEDIA_ID"

    .line 1601
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/media2/common/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v3

    const-string v4, "androidx.media2.metadata.PLAYABLE"

    const-wide/16 v5, 0x1

    .line 1602
    invoke-virtual {v3, v4, v5, v6}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v3

    .line 1603
    invoke-virtual {v3}, Landroidx/media2/common/MediaMetadata$Builder;->build()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    .line 1605
    :goto_0
    if-eqz v2, :cond_6

    .line 1606
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v3

    .line 1607
    .local v3, "session":Landroidx/media2/session/MediaSessionImplBase;
    invoke-virtual {p2, v2}, Landroidx/media2/common/MediaItem;->setMetadata(Landroidx/media2/common/MediaMetadata;)V

    .line 1608
    new-instance v4, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$16;

    invoke-direct {v4, p0, p1, v3}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$16;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, p1, v4}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_1

    .line 1605
    .end local v3    # "session":Landroidx/media2/session/MediaSessionImplBase;
    :cond_6
    nop

    .line 1619
    :goto_1
    return-void

    .line 1572
    .end local v2    # "metadata":Landroidx/media2/common/MediaMetadata;
    :cond_7
    :goto_2
    nop

    .line 1573
    return-void
.end method


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)V
    .locals 4
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "attributes"    # Landroidx/media/AudioAttributesCompat;

    .line 1473
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1474
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 1477
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase;->createPlaybackInfo(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v1

    .line 1479
    .local v1, "newInfo":Landroidx/media2/session/MediaController$PlaybackInfo;
    iget-object v2, v0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1480
    :try_start_0
    iget-object v3, v0, Landroidx/media2/session/MediaSessionImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1481
    .local v3, "oldInfo":Landroidx/media2/session/MediaController$PlaybackInfo;
    iput-object v1, v0, Landroidx/media2/session/MediaSessionImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1482
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1484
    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->notifyPlaybackInfoChangedNotLocked(Landroidx/media2/session/MediaController$PlaybackInfo;)V

    goto :goto_0

    .line 1483
    :cond_1
    nop

    .line 1486
    :goto_0
    return-void

    .line 1482
    .end local v3    # "oldInfo":Landroidx/media2/session/MediaController$PlaybackInfo;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1474
    .end local v1    # "newInfo":Landroidx/media2/session/MediaController$PlaybackInfo;
    :cond_2
    :goto_1
    nop

    .line 1475
    return-void
.end method

.method public onBufferingStateChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;I)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "state"    # I

    .line 1357
    invoke-direct {p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->updateDurationIfNeeded(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V

    .line 1358
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$3;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$3;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SessionPlayer;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1365
    return-void
.end method

.method public onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .locals 4
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;

    .line 1310
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1311
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_2

    .line 1314
    :cond_0
    iget-object v1, v0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1315
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mMediaItem:Landroidx/media2/common/MediaItem;

    if-eqz v2, :cond_1

    .line 1316
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mMediaItem:Landroidx/media2/common/MediaItem;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mCurrentItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;

    invoke-virtual {v2, v3}, Landroidx/media2/common/MediaItem;->removeOnMetadataChangedListener(Landroidx/media2/common/MediaItem$OnMetadataChangedListener;)V

    goto :goto_0

    .line 1315
    :cond_1
    nop

    .line 1318
    :goto_0
    if-eqz p2, :cond_2

    .line 1319
    iget-object v2, v0, Landroidx/media2/session/MediaSessionImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mCurrentItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;

    invoke-virtual {p2, v2, v3}, Landroidx/media2/common/MediaItem;->addOnMetadataChangedListener(Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem$OnMetadataChangedListener;)V

    goto :goto_1

    .line 1318
    :cond_2
    nop

    .line 1322
    :goto_1
    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mMediaItem:Landroidx/media2/common/MediaItem;

    .line 1323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    invoke-direct {p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->updateDurationIfNeeded(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V

    .line 1327
    new-instance v1, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$1;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$1;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/MediaItem;Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1335
    return-void

    .line 1323
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1311
    :cond_3
    :goto_2
    nop

    .line 1312
    return-void
.end method

.method public onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;

    .line 1462
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$10;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$10;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1468
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "speed"    # F

    .line 1369
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$4;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/SessionPlayer;F)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1376
    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "state"    # I

    .line 1339
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1340
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 1343
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroidx/media2/session/MediaSession$SessionCallback;->onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V

    .line 1344
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->updateDurationIfNeeded(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V

    .line 1345
    new-instance v1, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$2;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/SessionPlayer;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1352
    return-void

    .line 1340
    :cond_1
    :goto_0
    nop

    .line 1341
    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 6
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p3, "metadata"    # Landroidx/media2/common/MediaMetadata;
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

    .line 1392
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1393
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_4

    .line 1396
    :cond_0
    iget-object v1, v0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1397
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1398
    nop

    move v2, v3

    .local v2, "i":I
    :goto_0
    nop

    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mList:Ljava/util/List;

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    if-ge v2, v4, :cond_1

    .line 1399
    nop

    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mList:Ljava/util/List;

    nop

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Landroidx/media2/common/MediaItem;

    nop

    iget-object v5, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mPlaylistItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

    nop

    invoke-virtual {v4, v5}, Landroidx/media2/common/MediaItem;->removeOnMetadataChangedListener(Landroidx/media2/common/MediaItem$OnMetadataChangedListener;)V

    .line 1398
    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    goto :goto_1

    .line 1397
    .end local v2    # "i":I
    :cond_2
    nop

    .line 1402
    :goto_1
    nop

    if-eqz p2, :cond_4

    .line 1403
    nop

    nop

    move v2, v3

    .restart local v2    # "i":I
    :goto_2
    nop

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    nop

    if-ge v2, v3, :cond_3

    .line 1404
    nop

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Landroidx/media2/common/MediaItem;

    nop

    iget-object v4, v0, Landroidx/media2/session/MediaSessionImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    nop

    iget-object v5, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mPlaylistItemChangedListener:Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

    nop

    invoke-virtual {v3, v4, v5}, Landroidx/media2/common/MediaItem;->addOnMetadataChangedListener(Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem$OnMetadataChangedListener;)V

    .line 1403
    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    nop

    goto :goto_3

    .line 1402
    .end local v2    # "i":I
    :cond_4
    nop

    .line 1408
    :goto_3
    nop

    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->mList:Ljava/util/List;

    .line 1409
    nop

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 1411
    nop

    new-instance v1, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;

    invoke-direct {v1, p0, p2, p3, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Ljava/util/List;Landroidx/media2/common/MediaMetadata;Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1419
    nop

    return-void

    .line 1409
    :catchall_0
    move-exception v2

    nop

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    throw v2

    .line 1393
    :cond_5
    :goto_4
    nop

    .line 1394
    nop

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaMetadata;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;

    .line 1424
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$7;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$7;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/MediaMetadata;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1430
    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "repeatMode"    # I

    .line 1434
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1435
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    new-instance v1, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$8;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$8;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;ILandroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1444
    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "position"    # J

    .line 1380
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$5;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$5;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/SessionPlayer;J)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1387
    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "shuffleMode"    # I

    .line 1448
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1449
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    new-instance v1, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$9;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$9;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;ILandroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1458
    return-void
.end method

.method public onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 1
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

    .line 1538
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1544
    return-void
.end method

.method public onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 1526
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$14;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$14;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1532
    return-void
.end method

.method public onTrackInfoChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1501
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    invoke-direct {p0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->getSession()Landroidx/media2/session/MediaSessionImplBase;

    move-result-object v0

    .line 1502
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    new-instance v1, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$12;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$12;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Ljava/util/List;Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1512
    return-void
.end method

.method public onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 1516
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$13;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$13;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1522
    return-void
.end method

.method public onVideoSizeChangedInternal(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
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

    .line 1491
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$11;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$11;-><init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->dispatchRemoteControllerTask(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1497
    return-void
.end method
