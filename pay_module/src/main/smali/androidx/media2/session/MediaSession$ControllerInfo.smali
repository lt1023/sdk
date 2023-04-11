.class public final Landroidx/media2/session/MediaSession$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field private final mConnectionHints:Landroid/os/Bundle;

.field private final mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

.field private final mIsTrusted:Z

.field private final mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "remoteUserInfo"    # Landroidx/media/MediaSessionManager$RemoteUserInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trusted"    # Z
    .param p3, "cb"    # Landroidx/media2/session/MediaSession$ControllerCb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput-object p1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 896
    iput-boolean p2, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mIsTrusted:Z

    .line 897
    iput-object p3, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

    .line 898
    iput-object p4, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mConnectionHints:Landroid/os/Bundle;

    .line 899
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 953
    instance-of v0, p1, Landroidx/media2/session/MediaSession$ControllerInfo;

    if-nez v0, :cond_0

    .line 954
    const/4 v0, 0x0

    return v0

    .line 956
    :cond_0
    if-ne p0, p1, :cond_1

    .line 957
    const/4 v0, 0x1

    return v0

    .line 959
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 960
    .local v0, "other":Landroidx/media2/session/MediaSession$ControllerInfo;
    iget-object v1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroidx/media2/session/MediaSession$ControllerInfo;->mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 963
    :cond_2
    iget-object v1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v2, v0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v1, v2}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 960
    :cond_3
    :goto_0
    nop

    .line 961
    iget-object v1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

    iget-object v2, v0, Landroidx/media2/session/MediaSession$ControllerInfo;->mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getConnectionHints()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 930
    iget-object v0, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mConnectionHints:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 973
    iget-object v0, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 915
    iget-object v0, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 922
    iget-object v0, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 948
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mControllerCb:Landroidx/media2/session/MediaSession$ControllerCb;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isTrusted()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 943
    iget-boolean v0, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mIsTrusted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/MediaSession$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 969
    invoke-virtual {v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    return-object v0
.end method
