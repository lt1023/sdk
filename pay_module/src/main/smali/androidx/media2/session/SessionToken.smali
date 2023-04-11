.class public final Landroidx/media2/session/SessionToken;
.super Ljava/lang/Object;
.source "SessionToken.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ObsoleteSdkInt"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionToken$SessionTokenImpl;,
        Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;,
        Landroidx/media2/session/SessionToken$TokenType;
    }
.end annotation


# static fields
.field private static final MSG_SEND_TOKEN2_FOR_LEGACY_SESSION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SessionToken"

.field static final TYPE_BROWSER_SERVICE_LEGACY:I = 0x65

.field public static final TYPE_LIBRARY_SERVICE:I = 0x2

.field public static final TYPE_SESSION:I = 0x0

.field static final TYPE_SESSION_LEGACY:I = 0x64

.field public static final TYPE_SESSION_SERVICE:I = 0x1

.field private static final WAIT_TIME_MS_FOR_SESSION_READY:J = 0x12cL


# instance fields
.field mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-eqz p1, :cond_5

    .line 127
    if-eqz p2, :cond_4

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 131
    .local v0, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/session/SessionToken;->getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "uid":I
    const-string v2, "androidx.media2.session.MediaLibraryService"

    invoke-static {v0, v2, p2}, Landroidx/media2/session/SessionToken;->isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const/4 v2, 0x2

    goto :goto_0

    .line 137
    :cond_0
    const-string v2, "androidx.media2.session.MediaSessionService"

    invoke-static {v0, v2, p2}, Landroidx/media2/session/SessionToken;->isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    const/4 v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const-string v2, "android.media.browse.MediaBrowserService"

    invoke-static {v0, v2, p2}, Landroidx/media2/session/SessionToken;->isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    const/16 v2, 0x65

    .line 148
    .local v2, "type":I
    :goto_0
    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    .line 149
    new-instance v3, Landroidx/media2/session/SessionTokenImplBase;

    invoke-direct {v3, p2, v1, v2}, Landroidx/media2/session/SessionTokenImplBase;-><init>(Landroid/content/ComponentName;II)V

    iput-object v3, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    goto :goto_1

    .line 151
    :cond_2
    new-instance v3, Landroidx/media2/session/SessionTokenImplLegacy;

    invoke-direct {v3, p2, v1}, Landroidx/media2/session/SessionTokenImplLegacy;-><init>(Landroid/content/ComponentName;I)V

    iput-object v3, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    .line 153
    :goto_1
    return-void

    .line 144
    .end local v2    # "type":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t implement none of MediaSessionService, MediaLibraryService, MediaBrowserService nor MediaBrowserServiceCompat. Use service\'s full name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    .end local v1    # "uid":I
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceComponent shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V
    .locals 0
    .param p1, "impl"    # Landroidx/media2/session/SessionToken$SessionTokenImpl;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    .line 161
    return-void
.end method

.method private static createMediaControllerCompat(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 416
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 417
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionToken"

    const-string v2, "Failed to create MediaControllerCompat object."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    const/4 v1, 0x0

    return-object v1
.end method

.method public static createSessionToken(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/util/concurrent/Executor;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "compatToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 265
    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    if-eqz p0, :cond_5

    .line 268
    if-eqz v15, :cond_4

    .line 271
    if-eqz v14, :cond_3

    .line 274
    if-eqz v13, :cond_2

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v12

    .line 280
    .local v12, "token2":Landroidx/versionedparcelable/VersionedParcelable;
    instance-of v0, v12, Landroidx/media2/session/SessionToken;

    if-eqz v0, :cond_0

    .line 281
    move-object v0, v12

    check-cast v0, Landroidx/media2/session/SessionToken;

    invoke-static {v14, v13, v15, v0}, Landroidx/media2/session/SessionToken;->notifySessionTokenCreated(Ljava/util/concurrent/Executor;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    .line 282
    return-void

    .line 286
    :cond_0
    invoke-static/range {p0 .. p1}, Landroidx/media2/session/SessionToken;->createMediaControllerCompat(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v11

    .line 287
    .local v11, "controller":Landroid/support/v4/media/session/MediaControllerCompat;
    if-nez v11, :cond_1

    .line 289
    const-string v0, "SessionToken"

    const-string v1, "Failed to create session token2."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 293
    :cond_1
    invoke-virtual {v11}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v10}, Landroidx/media2/session/SessionToken;->getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v19

    .line 295
    .local v19, "uid":I
    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "SessionToken"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 296
    .local v9, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 297
    new-instance v0, Landroidx/media2/session/SessionToken$1;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, v0

    move-object/from16 v3, p3

    move-object v4, v11

    move-object/from16 v5, p1

    move-object v6, v10

    move/from16 v7, v19

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Landroidx/media2/session/SessionToken$1;-><init>(Landroid/os/Looper;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/HandlerThread;)V

    .line 323
    .local v1, "handler":Landroid/os/Handler;
    new-instance v0, Landroidx/media2/session/SessionToken$2;

    move-object v2, v10

    .end local v10    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    move-object v10, v0

    move-object v3, v11

    .end local v11    # "controller":Landroid/support/v4/media/session/MediaControllerCompat;
    .local v3, "controller":Landroid/support/v4/media/session/MediaControllerCompat;
    move-object/from16 v11, p3

    move-object v4, v12

    .end local v12    # "token2":Landroidx/versionedparcelable/VersionedParcelable;
    .local v4, "token2":Landroidx/versionedparcelable/VersionedParcelable;
    move-object v12, v1

    move-object v13, v3

    move-object/from16 v14, p1

    move-object v15, v2

    move/from16 v16, v19

    move-object/from16 v17, p2

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Landroidx/media2/session/SessionToken$2;-><init>(Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/os/Handler;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/HandlerThread;)V

    move-object v5, v0

    .line 352
    .local v5, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    monitor-enter p3

    .line 353
    :try_start_0
    invoke-virtual {v3, v5, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 354
    const/16 v0, 0x3e8

    invoke-virtual {v1, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    nop

    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit p3

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 275
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "controller":Landroid/support/v4/media/session/MediaControllerCompat;
    .end local v4    # "token2":Landroidx/versionedparcelable/VersionedParcelable;
    .end local v5    # "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    .end local v9    # "thread":Landroid/os/HandlerThread;
    .end local v19    # "uid":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "compatToken shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 4
    .param p0, "manager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 6
    .param p0, "manager"    # Landroid/content/pm/PackageManager;
    .param p1, "serviceInterface"    # Ljava/lang/String;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_4

    .line 391
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 392
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 393
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    .line 394
    goto :goto_1

    .line 396
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 397
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    const/4 v4, 0x1

    return v4

    .line 396
    :cond_1
    goto :goto_1

    .line 393
    :cond_2
    nop

    .line 391
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    .line 390
    .end local v2    # "i":I
    :cond_4
    nop

    .line 402
    :goto_2
    const/4 v2, 0x0

    return v2
.end method

.method static notifySessionTokenCreated(Ljava/util/concurrent/Executor;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;
    .param p2, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p3, "token2"    # Landroidx/media2/session/SessionToken;

    .line 363
    new-instance v0, Landroidx/media2/session/SessionToken$3;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/session/SessionToken$3;-><init>(Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method static quitHandlerThread(Landroid/os/HandlerThread;)V
    .locals 2
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 378
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 179
    instance-of v0, p1, Landroidx/media2/session/SessionToken;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/SessionToken;

    .line 183
    .local v0, "other":Landroidx/media2/session/SessionToken;
    iget-object v1, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    iget-object v2, v0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->getBinder()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 237
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 202
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 209
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->getType()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLegacySession()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->isLegacySession()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->mImpl:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
