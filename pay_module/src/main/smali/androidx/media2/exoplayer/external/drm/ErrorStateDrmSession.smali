.class public final Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DrmSession;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final error:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;)V
    .locals 1
    .param p1, "error"    # Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 35
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;, "Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;->error:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 37
    return-void
.end method


# virtual methods
.method public getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;, "Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;->error:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    return-object v0
.end method

.method public getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 53
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;, "Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;, "Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 41
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;, "Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;, "Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
