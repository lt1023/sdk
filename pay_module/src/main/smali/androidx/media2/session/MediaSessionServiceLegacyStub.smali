.class Landroidx/media2/session/MediaSessionServiceLegacyStub;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "MediaSessionServiceLegacyStub.java"


# instance fields
.field private final mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/session/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mManager:Landroidx/media/MediaSessionManager;

.field private final mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaSession$MediaSessionImpl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionImpl"    # Landroidx/media2/session/MediaSession$MediaSessionImpl;
    .param p3, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 43
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionServiceLegacyStub;->attachToBaseContext(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionServiceLegacyStub;->onCreate()V

    .line 46
    invoke-virtual {p0, p3}, Landroidx/media2/session/MediaSessionServiceLegacyStub;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 47
    invoke-static {p1}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mManager:Landroidx/media/MediaSessionManager;

    .line 48
    iput-object p2, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 49
    new-instance v0, Landroidx/media2/session/ConnectedControllersManager;

    invoke-direct {v0, p2}, Landroidx/media2/session/ConnectedControllersManager;-><init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    .line 50
    return-void
.end method


# virtual methods
.method createControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media2/session/MediaSession$ControllerInfo;
    .locals 3
    .param p1, "info"    # Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 82
    new-instance v0, Landroidx/media2/session/MediaSession$ControllerInfo;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mManager:Landroidx/media/MediaSessionManager;

    invoke-virtual {v1, p1}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Landroidx/media2/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    return-object v0
.end method

.method getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/session/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    return-object v0
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .line 54
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionServiceLegacyStub;->getCurrentBrowserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 55
    .local v0, "info":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    invoke-virtual {p0, v0}, Landroidx/media2/session/MediaSessionServiceLegacyStub;->createControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v1

    .line 66
    .local v1, "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    iget-object v2, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 67
    invoke-interface {v3}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v3

    .line 66
    invoke-virtual {v2, v3, v1}, Landroidx/media2/session/MediaSession$SessionCallback;->onConnect(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SessionCommandGroup;

    move-result-object v2

    .line 68
    .local v2, "connectResult":Landroidx/media2/session/SessionCommandGroup;
    if-nez v2, :cond_0

    .line 69
    const/4 v3, 0x0

    return-object v3

    .line 71
    :cond_0
    iget-object v3, p0, Landroidx/media2/session/MediaSessionServiceLegacyStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/media2/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V

    .line 73
    sget-object v3, Landroidx/media2/session/MediaUtils;->sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    return-object v3
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 78
    .local p2, "result":Landroidx/media/MediaBrowserServiceCompat$Result;, "Landroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
