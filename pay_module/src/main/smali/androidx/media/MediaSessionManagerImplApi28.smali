.class Landroidx/media/MediaSessionManagerImplApi28;
.super Landroidx/media/MediaSessionManagerImplApi21;
.source "MediaSessionManagerImplApi28.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
    }
.end annotation


# instance fields
.field mObject:Landroid/media/session/MediaSessionManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroidx/media/MediaSessionManagerImplApi21;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "media_session"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroidx/media/MediaSessionManagerImplApi28;->mObject:Landroid/media/session/MediaSessionManager;

    .line 31
    return-void
.end method


# virtual methods
.method public isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 1
    .param p1, "userInfo"    # Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 44
    invoke-super {p0, p1}, Landroidx/media/MediaSessionManagerImplApi21;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    return v0
.end method
