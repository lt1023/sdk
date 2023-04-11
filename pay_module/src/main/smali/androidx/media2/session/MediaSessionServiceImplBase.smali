.class Landroidx/media2/session/MediaSessionServiceImplBase;
.super Ljava/lang/Object;
.source "MediaSessionServiceImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionService$MediaSessionServiceImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MSS2ImplBase"


# instance fields
.field mInstance:Landroidx/media2/session/MediaSessionService;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNotificationHandler:Landroidx/media2/session/MediaNotificationHandler;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessions:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field mStub:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mSessions:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public addSession(Landroidx/media2/session/MediaSession;)V
    .locals 4
    .param p1, "session"    # Landroidx/media2/session/MediaSession;

    .line 129
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mSessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/MediaSession;

    .line 131
    .local v1, "old":Landroidx/media2/session/MediaSession;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Session ID should be unique"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "session":Landroidx/media2/session/MediaSession;
    throw v2

    .line 131
    .restart local p1    # "session":Landroidx/media2/session/MediaSession;
    :cond_1
    :goto_0
    nop

    .line 136
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mSessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    if-nez v1, :cond_2

    .line 142
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_1
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mNotificationHandler:Landroidx/media2/session/MediaNotificationHandler;

    .line 144
    .local v2, "handler":Landroidx/media2/session/MediaNotificationHandler;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->getPlayerState()I

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroidx/media2/session/MediaNotificationHandler;->onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V

    .line 146
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaSession$SessionCallback;->setForegroundServiceEventCallback(Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;)V

    goto :goto_1

    .line 144
    .end local v2    # "handler":Landroidx/media2/session/MediaNotificationHandler;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 138
    :cond_2
    nop

    .line 148
    :goto_1
    return-void

    .line 137
    .end local v1    # "old":Landroidx/media2/session/MediaSession;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method getInstance()Landroidx/media2/session/MediaSessionService;
    .locals 2

    .line 217
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mInstance:Landroidx/media2/session/MediaSessionService;

    monitor-exit v0

    return-object v1

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getServiceBinder()Landroid/os/IBinder;
    .locals 2

    .line 223
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mStub:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mStub:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession;>;"
    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    monitor-exit v1

    .line 212
    return-object v0

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionServiceImplBase;->getInstance()Landroidx/media2/session/MediaSessionService;

    move-result-object v0

    .line 78
    .local v0, "service":Landroidx/media2/session/MediaSessionService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    const-string v2, "MSS2ImplBase"

    const-string v3, "Service hasn\'t created before onBind()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v1

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x79d74830

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    const v5, 0x634addd6

    if-eq v4, v5, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v4, "android.media.browse.MediaBrowserService"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "androidx.media2.session.MediaSessionService"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 112
    return-object v1

    .line 87
    :pswitch_0
    const-string v2, "android.media.browse.MediaBrowserService"

    .line 88
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v3, v2, v6, v6}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 90
    .local v3, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    new-instance v4, Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-direct {v4, v3, v6, v1, v1}, Landroidx/media2/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    .line 93
    .local v4, "controllerInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    invoke-virtual {v0, v4}, Landroidx/media2/session/MediaSessionService;->onGetSession(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/MediaSession;

    move-result-object v5

    .line 94
    .local v5, "session":Landroidx/media2/session/MediaSession;
    if-nez v5, :cond_4

    .line 97
    const-string v6, "MSS2ImplBase"

    const-string v7, "Rejecting incoming connection request from legacy media browsers."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v1

    .line 102
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/media2/session/MediaSessionServiceImplBase;->addSession(Landroidx/media2/session/MediaSession;)V

    .line 109
    invoke-virtual {v5}, Landroidx/media2/session/MediaSession;->getLegacyBrowerServiceBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    .line 84
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local v4    # "controllerInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    .end local v5    # "session":Landroidx/media2/session/MediaSession;
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionServiceImplBase;->getServiceBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroidx/media2/session/MediaSessionService;)V
    .locals 2
    .param p1, "service"    # Landroidx/media2/session/MediaSessionService;

    .line 68
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mInstance:Landroidx/media2/session/MediaSessionService;

    .line 70
    new-instance v1, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;-><init>(Landroidx/media2/session/MediaSessionServiceImplBase;)V

    iput-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mStub:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    .line 71
    new-instance v1, Landroidx/media2/session/MediaNotificationHandler;

    invoke-direct {v1, p1}, Landroidx/media2/session/MediaNotificationHandler;-><init>(Landroidx/media2/session/MediaSessionService;)V

    iput-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mNotificationHandler:Landroidx/media2/session/MediaNotificationHandler;

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 3

    .line 117
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mInstance:Landroidx/media2/session/MediaSessionService;

    .line 119
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mStub:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mStub:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    invoke-virtual {v2}, Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;->close()V

    .line 121
    iput-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mStub:Landroidx/media2/session/MediaSessionServiceImplBase$MediaSessionServiceStub;

    goto :goto_0

    .line 119
    :cond_0
    nop

    .line 123
    :goto_0
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 159
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x7708a552

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_3

    .line 164
    :cond_3
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionServiceImplBase;->getInstance()Landroidx/media2/session/MediaSessionService;

    move-result-object v1

    .line 165
    .local v1, "instance":Landroidx/media2/session/MediaSessionService;
    if-nez v1, :cond_4

    .line 166
    const-string v2, "MSS2ImplBase"

    const-string v3, "Service hasn\'t created"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_4
    nop

    .line 168
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/session/MediaSession;->getSession(Landroid/net/Uri;)Landroidx/media2/session/MediaSession;

    move-result-object v2

    .line 169
    .local v2, "session":Landroidx/media2/session/MediaSession;
    if-nez v2, :cond_5

    .line 170
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    .line 171
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v4, v3, v5, v5}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 173
    .local v4, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    new-instance v6, Landroidx/media2/session/MediaSession$ControllerInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7, v7}, Landroidx/media2/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    move-object v5, v6

    .line 176
    .local v5, "controllerInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    invoke-virtual {v1, v5}, Landroidx/media2/session/MediaSessionService;->onGetSession(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/MediaSession;

    move-result-object v2

    goto :goto_2

    .line 169
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local v5    # "controllerInfo":Landroidx/media2/session/MediaSession$ControllerInfo;
    :cond_5
    nop

    .line 178
    :goto_2
    if-nez v2, :cond_6

    .line 180
    const-string v3, "MSS2ImplBase"

    const-string v4, "Rejecting wake-up of the service from media key events."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    goto :goto_3

    .line 184
    :cond_6
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 185
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v3, :cond_7

    .line 186
    invoke-virtual {v2}, Landroidx/media2/session/MediaSession;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    goto :goto_3

    .line 185
    :cond_7
    nop

    .line 191
    .end local v1    # "instance":Landroidx/media2/session/MediaSessionService;
    .end local v2    # "session":Landroidx/media2/session/MediaSession;
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    :goto_3
    return v0

    .line 159
    :cond_8
    :goto_4
    nop

    .line 160
    return v0
.end method

.method public onUpdateNotification(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$MediaNotification;
    .locals 3
    .param p1, "session"    # Landroidx/media2/session/MediaSession;

    .line 197
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mNotificationHandler:Landroidx/media2/session/MediaNotificationHandler;

    .line 199
    .local v1, "handler":Landroidx/media2/session/MediaNotificationHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1, p1}, Landroidx/media2/session/MediaNotificationHandler;->onUpdateNotification(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$MediaNotification;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Service hasn\'t created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    .end local v1    # "handler":Landroidx/media2/session/MediaNotificationHandler;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeSession(Landroidx/media2/session/MediaSession;)V
    .locals 3
    .param p1, "session"    # Landroidx/media2/session/MediaSession;

    .line 152
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceImplBase;->mSessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
