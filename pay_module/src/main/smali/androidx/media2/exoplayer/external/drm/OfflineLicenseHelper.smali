.class public final Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


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
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DUMMY_DRM_INIT_DATA:Landroidx/media2/exoplayer/external/drm/DrmInitData;


# instance fields
.field private final conditionVariable:Landroid/os/ConditionVariable;

.field private final drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    sput-object v0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->DUMMY_DRM_INIT_DATA:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .locals 4
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

    .line 130
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .local p2, "mediaDrm":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OfflineLicenseHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    .line 134
    new-instance v0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper$1;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper$1;-><init>(Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;)V

    .line 156
    .local v0, "eventListener":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 158
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->addListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;

    .line 42
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private blockingKeyRequest(I[BLandroidx/media2/exoplayer/external/drm/DrmInitData;)[B
    .locals 4
    .param p1, "licenseMode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .line 264
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object v0

    .line 266
    .local v0, "drmSession":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<TT;>;"
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 267
    .local v1, "error":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getOfflineLicenseKeySetId()[B

    move-result-object v2

    .line 268
    .local v2, "keySetId":[B
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 269
    if-nez v1, :cond_0

    .line 272
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    return-object v3

    .line 270
    :cond_0
    throw v1
.end method

.method public static newWidevineInstance(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;)Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;
    .locals 2
    .param p0, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p1, "httpDataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;)Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;
    .locals 1
    .param p0, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p1, "forceDefaultLicenseUrl"    # Z
    .param p2, "httpDataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;
    .locals 4
    .param p0, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p1, "forceDefaultLicenseUrl"    # Z
    .param p2, "httpDataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;
    .param p3    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 109
    .local p3, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;

    sget-object v1, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    sget-object v2, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 110
    invoke-static {v2}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;

    move-result-object v2

    new-instance v3, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;

    invoke-direct {v3, p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;)V

    invoke-direct {v0, v1, v2, v3, p3}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;-><init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    .line 109
    return-object v0
.end method

.method private openBlockingKeyRequest(I[BLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;
    .locals 2
    .param p1, "licenseMode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->setMode(I[B)V

    .line 278
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object v0

    .line 282
    .local v0, "drmSession":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<TT;>;"
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 283
    return-object v0
.end method


# virtual methods
.method public declared-synchronized downloadLicense(Landroidx/media2/exoplayer/external/drm/DrmInitData;)[B
    .locals 2
    .param p1, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 197
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 198
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLandroidx/media2/exoplayer/external/drm/DrmInitData;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .end local p1    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLicenseDurationRemainingSec([B)Landroid/util/Pair;
    .locals 6
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 237
    :try_start_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v0, 0x1

    sget-object v1, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->DUMMY_DRM_INIT_DATA:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 239
    invoke-direct {p0, v0, p1, v1}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object v0

    .line 241
    .local v0, "drmSession":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<TT;>;"
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 242
    .local v1, "error":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    nop

    .line 243
    invoke-static {v0}, Landroidx/media2/exoplayer/external/drm/WidevineUtil;->getLicenseDurationRemainingSec(Landroidx/media2/exoplayer/external/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v2

    .line 244
    .local v2, "licenseDurationRemainingSec":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 245
    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroidx/media2/exoplayer/external/drm/KeysExpiredException;

    if-eqz v3, :cond_0

    .line 247
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 249
    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    :cond_0
    :try_start_1
    throw v1

    .line 251
    :cond_1
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 236
    .end local v0    # "drmSession":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<TT;>;"
    .end local v1    # "error":Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    .end local v2    # "licenseDurationRemainingSec":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local p1    # "offlineLicenseKeySetId":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 1

    .line 258
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 259
    return-void
.end method

.method public declared-synchronized releaseLicense([B)V
    .locals 2
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 223
    :try_start_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v0, 0x3

    sget-object v1, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->DUMMY_DRM_INIT_DATA:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {p0, v0, p1, v1}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLandroidx/media2/exoplayer/external/drm/DrmInitData;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 222
    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .end local p1    # "offlineLicenseKeySetId":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renewLicense([B)[B
    .locals 2
    .param p1, "offlineLicenseKeySetId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 210
    :try_start_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/4 v0, 0x2

    sget-object v1, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->DUMMY_DRM_INIT_DATA:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {p0, v0, p1, v1}, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLandroidx/media2/exoplayer/external/drm/DrmInitData;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 209
    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .end local p1    # "offlineLicenseKeySetId":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->setPropertyByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .local p0, "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 185
    .end local p0    # "this":Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper;, "Landroidx/media2/exoplayer/external/drm/OfflineLicenseHelper<TT;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
