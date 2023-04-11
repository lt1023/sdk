.class public Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
.implements Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$Mode;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
        "TT;>;",
        "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final INITIAL_DRM_REQUEST_RETRY_COUNT:I = 0x3

.field public static final MODE_DOWNLOAD:I = 0x2

.field public static final MODE_PLAYBACK:I = 0x0

.field public static final MODE_QUERY:I = 0x1

.field public static final MODE_RELEASE:I = 0x3

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSessionMgr"


# instance fields
.field private final callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/EventDispatcher<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final initialDrmRequestRetryCount:I

.field private final mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile mediaDrmHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private mode:I

.field private final multiSession:Z

.field private offlineLicenseKeySetId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playbackLooper:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final provisioningSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;Z)V
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "multiSession"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "multiSession"    # Z
    .param p6, "initialDrmRequestRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 234
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Landroidx/media2/exoplayer/external/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 238
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 239
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    .line 240
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    .line 241
    iput-object p4, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 242
    new-instance v0, Landroidx/media2/exoplayer/external/util/EventDispatcher;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    .line 243
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->multiSession:Z

    .line 244
    iput p6, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->initialDrmRequestRetryCount:I

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mode:I

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    .line 248
    if-eqz p5, :cond_0

    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 253
    const-string v0, "sessionSharing"

    const-string v1, "enable"

    invoke-interface {p2, v0, v1}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    nop

    .line 255
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {p2, v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->setOnEventListener(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;)V

    .line 256
    return-void
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 53
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    return-object v0
.end method

.method private static getSchemeDatas(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .param p0, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "allowMissingData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    .local v0, "matchingSchemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    if-ge v1, v2, :cond_4

    .line 514
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v2

    .line 515
    .local v2, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    nop

    .line 516
    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroidx/media2/exoplayer/external/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 517
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/media2/exoplayer/external/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 516
    :cond_1
    nop

    .line 517
    :goto_1
    const/4 v3, 0x1

    .line 518
    .local v3, "uuidMatches":Z
    :goto_2
    if-eqz v3, :cond_3

    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 519
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 518
    :cond_3
    nop

    .line 513
    .end local v2    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v3    # "uuidMatches":Z
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method static final synthetic lambda$acquireSession$0$DefaultDrmSessionManager(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V
    .locals 0
    .param p0, "error"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;

    .line 406
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
    .locals 8
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 163
    .local p2, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 165
    invoke-static {p0}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V

    .line 163
    return-object v7
.end method

.method public static newPlayReadyInstance(Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
    .locals 2
    .param p0, "callback"    # Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
    .param p1, "customData"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PRCustomData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    .end local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .line 146
    .restart local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    sget-object v1, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v1, p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    move-result-object v1

    return-object v1
.end method

.method public static newWidevineInstance(Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
    .locals 1
    .param p0, "callback"    # Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 124
    .local p1, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0, p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method private onSessionReleased(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 490
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    .local p1, "drmSession":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 494
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provision()V

    goto :goto_0

    .line 491
    :cond_0
    nop

    .line 496
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;
    .locals 20
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    .line 393
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 394
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iput-object v14, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 396
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_2

    .line 397
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, v13, v14}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    goto :goto_2

    .line 396
    :cond_2
    goto :goto_2

    .line 394
    :cond_3
    nop

    .line 401
    :goto_2
    const/4 v0, 0x0

    .line 402
    .local v0, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    iget-object v2, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 403
    iget-object v2, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    move-object/from16 v15, p2

    invoke-static {v15, v2, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 405
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object v2, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$1;)V

    .line 406
    .local v1, "error":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    iget-object v2, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    new-instance v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$0;

    invoke-direct {v3, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;)V

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 407
    new-instance v2, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;

    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    invoke-direct {v3, v1}, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;-><init>(Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;)V

    return-object v2

    .line 404
    .end local v1    # "error":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException;
    :cond_4
    move-object v12, v0

    goto :goto_3

    .line 402
    :cond_5
    move-object/from16 v15, p2

    move-object v12, v0

    .line 412
    .end local v0    # "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local v12, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    :goto_3
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez v0, :cond_7

    .line 413
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    :goto_4
    move-object v0, v3

    move-object/from16 v16, v0

    goto :goto_6

    .line 416
    :cond_7
    const/4 v0, 0x0

    .line 417
    .local v0, "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 418
    .local v2, "existingSession":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v3, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-static {v3, v12}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 419
    move-object v0, v2

    .line 420
    move-object/from16 v16, v0

    goto :goto_6

    .line 418
    :cond_8
    nop

    .line 422
    .end local v2    # "existingSession":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    goto :goto_5

    .line 417
    :cond_9
    move-object/from16 v16, v0

    .line 425
    .end local v0    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    .local v16, "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    :goto_6
    if-nez v16, :cond_a

    .line 427
    new-instance v17, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    new-instance v4, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$1;

    invoke-direct {v4, v13}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)V

    iget v6, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mode:I

    iget-object v7, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    iget-object v8, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    iget-object v9, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    iget-object v11, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    iget v10, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->initialDrmRequestRetryCount:I

    move-object/from16 v0, v17

    move-object/from16 v3, p0

    move-object v5, v12

    move/from16 v18, v10

    move-object/from16 v10, p1

    move-object/from16 v19, v12

    .end local v12    # "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local v19, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    move/from16 v12, v18

    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;Ljava/util/List;I[BLjava/util/HashMap;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media2/exoplayer/external/util/EventDispatcher;I)V

    .line 441
    .end local v16    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    .restart local v0    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v1, v13, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v0

    goto :goto_7

    .line 425
    .end local v0    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    .end local v19    # "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v12    # "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v16    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    :cond_a
    move-object/from16 v19, v12

    .line 443
    .end local v12    # "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .restart local v19    # "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->acquire()V

    .line 444
    return-object v16
.end method

.method public final addListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;

    .line 265
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->addListener(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method final bridge synthetic bridge$lambda$0$DefaultDrmSessionManager(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->onSessionReleased(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    return-void
.end method

.method public canAcquireSession(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 7
    .param p1, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 361
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 363
    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 367
    iget v2, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeDataCount:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->get(I)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v2

    sget-object v4, Landroidx/media2/exoplayer/external/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    const-string v2, "DefaultDrmSessionMgr"

    iget-object v4, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x48

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    nop

    .line 373
    return v3

    .line 366
    :cond_2
    nop

    .line 376
    :goto_0
    iget-object v2, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 377
    .local v2, "schemeType":Ljava/lang/String;
    if-eqz v2, :cond_8

    const-string v4, "cenc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 380
    :cond_3
    const-string v4, "cbc1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cbcs"

    .line 381
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "cens"

    .line 382
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 388
    :cond_4
    return v1

    .line 381
    :cond_5
    goto :goto_1

    .line 380
    :cond_6
    nop

    .line 385
    :goto_1
    sget v4, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 377
    :cond_8
    :goto_3
    nop

    .line 379
    return v1
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 310
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 286
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onProvisionCompleted()V
    .locals 2

    .line 473
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 474
    .local v1, "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onProvisionCompleted()V

    .line 475
    .end local v1    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 477
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .line 481
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 482
    .local v1, "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onProvisionError(Ljava/lang/Exception;)V

    .line 483
    .end local v1    # "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 485
    return-void
.end method

.method public provisionRequired(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 460
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 467
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provision()V

    goto :goto_0

    .line 465
    :cond_1
    nop

    .line 469
    :goto_0
    return-void
.end method

.method public releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 449
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    .local p1, "session":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<TT;>;"
    instance-of v0, p1, Landroidx/media2/exoplayer/external/drm/ErrorStateDrmSession;

    if-eqz v0, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->release()V

    .line 454
    return-void
.end method

.method public final removeListener(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;

    .line 274
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public setMode(I[B)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 349
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 350
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 351
    :cond_1
    :goto_0
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_1
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mode:I

    .line 354
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    .line 355
    return-void
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 322
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 323
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 298
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method
