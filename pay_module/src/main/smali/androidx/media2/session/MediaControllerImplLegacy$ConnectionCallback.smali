.class Landroidx/media2/session/MediaControllerImplLegacy$ConnectionCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplLegacy;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    .line 1055
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 1059
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/session/MediaControllerImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    .line 1060
    .local v0, "browser":Landroid/support/v4/media/MediaBrowserCompat;
    if-eqz v0, :cond_0

    .line 1061
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media2/session/MediaControllerImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    .line 1062
    :cond_0
    sget-boolean v1, Landroidx/media2/session/MediaControllerImplLegacy;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1063
    const-string v1, "MC2ImplLegacy"

    const-string v2, "Controller is closed prematually"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1062
    :cond_1
    nop

    .line 1065
    :goto_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 1074
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/session/MediaControllerImplLegacy;->close()V

    .line 1075
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 1069
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/session/MediaControllerImplLegacy;->close()V

    .line 1070
    return-void
.end method
