.class public final Landroidx/media/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# static fields
.field public static final LEGACY_CONTROLLER:Ljava/lang/String; = "android.media.session.MediaController"

.field public static final UNKNOWN_PID:I = -0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final UNKNOWN_UID:I = -0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 1
    .param p1, "remoteUserInfo"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1}, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 161
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    if-ne p0, p1, :cond_0

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    instance-of v0, p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    iget-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    move-object v1, p1

    check-cast v1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v1, v1, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
