.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DrmSession;


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
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;,
        Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;
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


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field final callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

.field private currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

.field private lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private openCount:I

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

.field private postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field final postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private final provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final releaseCallback:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private requestHandlerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final schemeDatas:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;Ljava/util/List;I[BLjava/util/HashMap;Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media2/exoplayer/external/util/EventDispatcher;I)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "mode"    # I
    .param p7, "offlineLicenseKeySetId"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "callback"    # Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;
    .param p10, "playbackLooper"    # Landroid/os/Looper;
    .param p12, "initialDrmRequestRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/util/EventDispatcher<",
            "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;",
            ">;I)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    .local p2, "mediaDrm":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<TT;>;"
    .local p3, "provisioningManager":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager<TT;>;"
    .local p4, "releaseCallback":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback<TT;>;"
    .local p5, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local p8, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p11, "eventDispatcher":Landroidx/media2/exoplayer/external/util/EventDispatcher;, "Landroidx/media2/exoplayer/external/util/EventDispatcher<Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    invoke-static {p7}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_1
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 162
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    .line 163
    iput-object p4, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->releaseCallback:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;

    .line 164
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    .line 165
    iput p6, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    .line 166
    if-eqz p7, :cond_2

    .line 167
    iput-object p7, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_2

    .line 170
    :cond_2
    invoke-static {p5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 172
    :goto_2
    iput-object p8, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 173
    iput-object p9, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    .line 174
    iput p12, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    .line 175
    iput-object p11, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    .line 176
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 177
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    invoke-direct {v0, p0, p10}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    .line 178
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 55
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    return v0
.end method

.method private doLicense(Z)V
    .locals 7
    .param p1, "allowRetry"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 340
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 374
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto/16 :goto_2

    .line 377
    :cond_0
    goto/16 :goto_2

    .line 364
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto/16 :goto_2

    .line 368
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_2

    .line 368
    :cond_2
    goto :goto_2

    .line 343
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_3

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_2

    .line 345
    :cond_3
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_2

    .line 346
    :cond_5
    :goto_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v3

    .line 347
    .local v3, "licenseDurationRemainingSec":J
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_6

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    .line 349
    const-string v0, "DefaultDrmSession"

    const/16 v2, 0x58

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_1

    .line 347
    :cond_6
    nop

    .line 355
    const-wide/16 v0, 0x0

    cmp-long v5, v3, v0

    if-gtz v5, :cond_7

    .line 356
    new-instance v0, Landroidx/media2/exoplayer/external/drm/KeysExpiredException;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 358
    :cond_7
    iput v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 359
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$2;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 361
    .end local v3    # "licenseDurationRemainingSec":J
    :goto_1
    nop

    .line 384
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .locals 5

    .line 399
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 402
    :cond_0
    nop

    .line 403
    invoke-static {p0}, Landroidx/media2/exoplayer/external/drm/WidevineUtil;->getLicenseDurationRemainingSec(Landroidx/media2/exoplayer/external/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 404
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private isOpen()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 478
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static final synthetic lambda$onError$0$DefaultDrmSession(Ljava/lang/Exception;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;

    .line 469
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 468
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 469
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    new-instance v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$5;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$5;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 470
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 471
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    goto :goto_0

    .line 470
    :cond_0
    nop

    .line 473
    :goto_0
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 419
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 423
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 425
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 426
    move-object v0, p2

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    .line 427
    return-void

    .line 431
    :cond_1
    :try_start_0
    move-object v0, p2

    check-cast v0, [B

    .line 432
    .local v0, "responseData":[B
    iget v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 433
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v1, v2, v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 434
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$3;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    goto :goto_1

    .line 436
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v1, v2, v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v1

    .line 437
    .local v1, "keySetId":[B
    iget v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    array-length v2, v1

    if-eqz v2, :cond_4

    .line 442
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    goto :goto_0

    .line 437
    :cond_4
    nop

    .line 444
    :goto_0
    const/4 v2, 0x4

    iput v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 445
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$4;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0    # "responseData":[B
    .end local v1    # "keySetId":[B
    :goto_1
    goto :goto_2

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 419
    :cond_5
    :goto_3
    nop

    .line 421
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 460
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 465
    :goto_0
    return-void
.end method

.method private onKeysRequired()V
    .locals 2

    .line 453
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_0

    .line 453
    :cond_0
    nop

    .line 457
    :goto_0
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 317
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_2

    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 323
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    move-object v1, p2

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    .line 325
    return-void

    .line 329
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    move-object v1, p2

    check-cast v1, [B

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    nop

    .line 335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    .line 336
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    .line 332
    return-void

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    nop

    .line 319
    return-void
.end method

.method private openInternal(Z)Z
    .locals 3
    .param p1, "allowProvisioning"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 292
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 294
    return v1

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$1;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 300
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->createMediaCrypto([B)Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    .line 301
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_1

    .line 305
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->provisioningManager:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 311
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :goto_0
    nop

    .line 313
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private postKeyRequest([BIZ)V
    .locals 3
    .param p1, "scope"    # [B
    .param p2, "type"    # I
    .param p3, "allowRetry"    # Z

    .line 409
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 410
    invoke-interface {v0, p1, v1, p2, v2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 411
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 412
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private restoreKeys()Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    .line 389
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    const/4 v0, 0x1

    return v0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquire()V
    .locals 3

    .line 183
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    if-ne v0, v1, :cond_1

    .line 184
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DrmRequestHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    .line 187
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_0

    .line 187
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    nop

    .line 191
    :goto_0
    return-void
.end method

.method public final getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 261
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 266
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 278
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 256
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .locals 1
    .param p1, "sessionId"    # [B

    .line 217
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public onMediaDrmEvent(I)V
    .locals 1
    .param p1, "what"    # I

    .line 221
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onKeysRequired()V

    .line 224
    nop

    .line 228
    :goto_0
    return-void
.end method

.method public onProvisionCompleted()V
    .locals 1

    .line 242
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_0

    .line 242
    :cond_0
    nop

    .line 245
    :goto_0
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Exception;

    .line 248
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 249
    return-void
.end method

.method public provision()V
    .locals 4

    .line 233
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 234
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 237
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 235
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V

    .line 239
    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
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

    .line 272
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public release()V
    .locals 3

    .line 195
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->openCount:I

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->state:I

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postRequestHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;

    .line 201
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 203
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaCrypto:Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    .line 204
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->lastException:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    .line 205
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    .line 206
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_0

    .line 208
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->mediaDrm:Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;->closeSession([B)V

    .line 209
    iput-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->sessionId:[B

    .line 210
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    sget-object v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    goto :goto_0

    .line 207
    :cond_0
    nop

    .line 212
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->releaseCallback:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback;->onSessionReleased(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V

    goto :goto_1

    .line 195
    :cond_1
    nop

    .line 214
    :goto_1
    return-void
.end method
