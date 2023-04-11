.class Landroidx/media2/session/MediaSessionImplBase;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSession$MediaSessionImpl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ObsoleteSdkInt"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSessionImplBase$MediaButtonReceiver;,
        Landroidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture;,
        Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;,
        Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;,
        Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;,
        Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;,
        Landroidx/media2/session/MediaSessionImplBase$PlayerTask;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEFAULT_MEDIA_SESSION_TAG_DELIM:Ljava/lang/String; = "."

.field private static final DEFAULT_MEDIA_SESSION_TAG_PREFIX:Ljava/lang/String; = "androidx.media2.session.id"

.field private static final ITEM_NONE:I = -0x1

.field private static final RESULT_WHEN_CLOSED:Landroidx/media2/session/SessionResult;

.field private static final STATIC_LOCK:Ljava/lang/Object;

.field static final TAG:Ljava/lang/String; = "MSImplBase"

.field private static sComponentNamesInitialized:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "STATIC_LOCK"
    .end annotation
.end field

.field private static sServiceComponentName:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "STATIC_LOCK"
    .end annotation
.end field


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mCallback:Landroidx/media2/session/MediaSession$SessionCallback;

.field final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInstance:Landroidx/media2/session/MediaSession;

.field final mLock:Ljava/lang/Object;

.field private final mMediaButtonIntent:Landroid/app/PendingIntent;

.field mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPlayer:Landroidx/media2/common/SessionPlayer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPlayerCallback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

.field private final mSessionActivity:Landroid/app/PendingIntent;

.field private final mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final mSessionId:Ljava/lang/String;

.field private final mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

.field private final mSessionStub:Landroidx/media2/session/MediaSessionStub;

.field private final mSessionToken:Landroidx/media2/session/SessionToken;

.field final mSessionUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSessionImplBase;->STATIC_LOCK:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/media2/session/MediaSessionImplBase;->sComponentNamesInitialized:Z

    .line 105
    const-string v0, "MSImplBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/MediaSessionImplBase;->DEBUG:Z

    .line 107
    new-instance v0, Landroidx/media2/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/SessionResult;-><init>(I)V

    sput-object v0, Landroidx/media2/session/MediaSessionImplBase;->RESULT_WHEN_CLOSED:Landroidx/media2/session/SessionResult;

    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "instance"    # Landroidx/media2/session/MediaSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "player"    # Landroidx/media2/common/SessionPlayer;
    .param p5, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p6, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroidx/media2/session/MediaSession$SessionCallback;
    .param p8, "tokenExtras"    # Landroid/os/Bundle;

    .line 143
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .line 144
    iput-object v9, v1, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 145
    move-object/from16 v12, p1

    iput-object v12, v1, Landroidx/media2/session/MediaSessionImplBase;->mInstance:Landroidx/media2/session/MediaSession;

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MediaSession_Thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 147
    iget-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Landroid/os/Handler;

    iget-object v2, v1, Landroidx/media2/session/MediaSessionImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroidx/media2/session/MediaSessionStub;

    invoke-direct {v0, v1}, Landroidx/media2/session/MediaSessionStub;-><init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    .line 151
    iput-object v11, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    .line 153
    move-object/from16 v13, p7

    iput-object v13, v1, Landroidx/media2/session/MediaSessionImplBase;->mCallback:Landroidx/media2/session/MediaSession$SessionCallback;

    .line 154
    move-object/from16 v14, p6

    iput-object v14, v1, Landroidx/media2/session/MediaSessionImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 155
    const-string v0, "audio"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 157
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

    invoke-direct {v0, v1}, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mPlayerCallback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

    .line 159
    iput-object v10, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionId:Ljava/lang/String;

    .line 169
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-class v2, Landroidx/media2/session/MediaSessionImplBase;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionUri:Landroid/net/Uri;

    .line 171
    new-instance v0, Landroidx/media2/session/SessionToken;

    new-instance v8, Landroidx/media2/session/SessionTokenImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    const/4 v4, 0x0

    move-object v2, v8

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Landroidx/media2/session/SessionTokenImplBase;-><init>(IILjava/lang/String;Landroidx/media2/session/IMediaSession;Landroid/os/Bundle;)V

    invoke-direct {v0, v8}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    iput-object v0, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionToken:Landroidx/media2/session/SessionToken;

    .line 173
    const-string v0, "."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "androidx.media2.session.id"

    aput-object v3, v2, v4

    const/4 v15, 0x1

    aput-object v10, v2, v15

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 176
    .local v16, "sessionCompatId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 177
    .local v2, "mbrComponent":Landroid/content/ComponentName;
    sget-object v3, Landroidx/media2/session/MediaSessionImplBase;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :try_start_0
    sget-boolean v0, Landroidx/media2/session/MediaSessionImplBase;->sComponentNamesInitialized:Z

    if-nez v0, :cond_1

    .line 179
    const-string v0, "androidx.media2.session.MediaLibraryService"

    invoke-direct {v1, v0}, Landroidx/media2/session/MediaSessionImplBase;->getServiceComponentByAction(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroidx/media2/session/MediaSessionImplBase;->sServiceComponentName:Landroid/content/ComponentName;

    .line 181
    sget-object v0, Landroidx/media2/session/MediaSessionImplBase;->sServiceComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "androidx.media2.session.MediaSessionService"

    invoke-direct {v1, v0}, Landroidx/media2/session/MediaSessionImplBase;->getServiceComponentByAction(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroidx/media2/session/MediaSessionImplBase;->sServiceComponentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 181
    :cond_0
    nop

    .line 185
    :goto_0
    sput-boolean v15, Landroidx/media2/session/MediaSessionImplBase;->sComponentNamesInitialized:Z

    goto :goto_1

    .line 178
    :cond_1
    nop

    .line 187
    :goto_1
    sget-object v0, Landroidx/media2/session/MediaSessionImplBase;->sServiceComponentName:Landroid/content/ComponentName;

    move-object v2, v0

    .line 188
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-nez v2, :cond_2

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    iget-object v5, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionUri:Landroid/net/Uri;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {v9, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mMediaButtonIntent:Landroid/app/PendingIntent;

    .line 199
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v3

    .line 204
    new-instance v3, Landroidx/media2/session/MediaSessionImplBase$MediaButtonReceiver;

    invoke-direct {v3, v1}, Landroidx/media2/session/MediaSessionImplBase$MediaButtonReceiver;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    iput-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 206
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v4, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 207
    iget-object v4, v1, Landroidx/media2/session/MediaSessionImplBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    move-object v0, v2

    goto :goto_3

    .line 210
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    iget-object v5, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionUri:Landroid/net/Uri;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_3

    .line 213
    iget-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v0, v4}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mMediaButtonIntent:Landroid/app/PendingIntent;

    goto :goto_2

    .line 215
    :cond_3
    iget-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mMediaButtonIntent:Landroid/app/PendingIntent;

    .line 217
    :goto_2
    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, v2

    .line 220
    .end local v2    # "mbrComponent":Landroid/content/ComponentName;
    .local v0, "mbrComponent":Landroid/content/ComponentName;
    :goto_3
    new-instance v8, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v6, v1, Landroidx/media2/session/MediaSessionImplBase;->mMediaButtonIntent:Landroid/app/PendingIntent;

    iget-object v2, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionToken:Landroidx/media2/session/SessionToken;

    .line 221
    invoke-virtual {v2}, Landroidx/media2/session/SessionToken;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    iget-object v5, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionToken:Landroidx/media2/session/SessionToken;

    move-object v2, v8

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object/from16 v17, v5

    move-object v5, v0

    move-object v15, v8

    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroidx/versionedparcelable/VersionedParcelable;)V

    iput-object v15, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 223
    new-instance v2, Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-direct {v2, v1}, Landroidx/media2/session/MediaSessionLegacyStub;-><init>(Landroidx/media2/session/MediaSession$MediaSessionImpl;)V

    iput-object v2, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

    .line 225
    iget-object v2, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 226
    iget-object v2, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 228
    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Landroidx/media2/session/MediaSessionImplBase;->updatePlayer(Landroidx/media2/common/SessionPlayer;)V

    .line 231
    iget-object v2, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v5, v1, Landroidx/media2/session/MediaSessionImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 232
    iget-object v2, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 233
    return-void

    .line 188
    .end local v0    # "mbrComponent":Landroid/content/ComponentName;
    .restart local v2    # "mbrComponent":Landroid/content/ComponentName;
    :catchall_0
    move-exception v0

    move-object/from16 v4, p4

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method private dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1    # Landroidx/media2/session/MediaSessionImplBase$PlayerTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1044
    .local p1, "command":Landroidx/media2/session/MediaSessionImplBase$PlayerTask;, "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;>;"
    invoke-static {}, Landroidx/media2/session/futures/ResolvableFuture;->create()Landroidx/media2/session/futures/ResolvableFuture;

    move-result-object v0

    .line 1045
    .local v0, "result":Landroidx/media2/session/futures/ResolvableFuture;, "Landroidx/media2/session/futures/ResolvableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    new-instance v1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 1046
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v1
.end method

.method private dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroidx/media2/session/MediaSessionImplBase$PlayerTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1051
    .local p1, "command":Landroidx/media2/session/MediaSessionImplBase$PlayerTask;, "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<TT;>;"
    .local p2, "defaultResult":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    .line 1053
    .local v1, "player":Landroidx/media2/common/SessionPlayer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :try_start_1
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    invoke-interface {p1, v1}, Landroidx/media2/session/MediaSessionImplBase$PlayerTask;->run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;

    move-result-object v0

    .line 1057
    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 1058
    return-object v0

    .line 1057
    :cond_0
    nop

    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1060
    :cond_1
    sget-boolean v0, Landroidx/media2/session/MediaSessionImplBase;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1061
    const-string v0, "MSImplBase"

    const-string v2, "API calls after the close()"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1060
    :cond_2
    :goto_0
    nop

    .line 1064
    :goto_1
    goto :goto_2

    .line 1063
    :catch_0
    move-exception v0

    .line 1065
    :goto_2
    return-object p2

    .line 1053
    .end local v1    # "player":Landroidx/media2/common/SessionPlayer;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private dispatchRemoteControllerTask(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "task"    # Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1220
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_0

    .line 1221
    invoke-static {v1}, Landroidx/media2/session/SessionResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1226
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    .line 1227
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    .line 1228
    invoke-virtual {v0, p1}, Landroidx/media2/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SequencedFutureManager;

    move-result-object v0

    .line 1229
    .local v0, "manager":Landroidx/media2/session/SequencedFutureManager;
    if-eqz v0, :cond_1

    .line 1230
    sget-object v2, Landroidx/media2/session/MediaSessionImplBase;->RESULT_WHEN_CLOSED:Landroidx/media2/session/SessionResult;

    invoke-virtual {v0, v2}, Landroidx/media2/session/SequencedFutureManager;->createSequencedFuture(Ljava/lang/Object;)Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    move-result-object v2

    .line 1231
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/session/SessionResult;>;"
    move-object v3, v2

    check-cast v3, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;

    invoke-virtual {v3}, Landroidx/media2/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v3

    goto :goto_0

    .line 1238
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/session/SessionResult;>;"
    :cond_1
    const/4 v3, 0x0

    .line 1239
    .local v3, "seq":I
    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/media2/session/SessionResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 1241
    .restart local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/session/SessionResult;>;"
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;->run(Landroidx/media2/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    return-object v2

    .line 1246
    .end local v0    # "manager":Landroidx/media2/session/SequencedFutureManager;
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/session/SessionResult;>;"
    .end local v3    # "seq":I
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/media2/session/SessionResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1243
    :catch_1
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase;->onDeadObjectException(Landroidx/media2/session/MediaSession$ControllerInfo;Landroid/os/DeadObjectException;)V

    .line 1245
    invoke-static {v1}, Landroidx/media2/session/SessionResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentMediaItemOrNull()Landroidx/media2/common/MediaItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1028
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    .line 1030
    .local v1, "player":Landroidx/media2/common/SessionPlayer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1030
    .end local v1    # "player":Landroidx/media2/common/SessionPlayer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getLegacyStreamType(Landroidx/media/AudioAttributesCompat;)I
    .locals 2
    .param p1, "attrs"    # Landroidx/media/AudioAttributesCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 341
    if-nez p1, :cond_0

    .line 342
    const/4 v0, 0x3

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v0

    .line 345
    .local v0, "stream":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 350
    const/4 v0, 0x3

    goto :goto_0

    .line 345
    :cond_1
    nop

    .line 353
    :goto_0
    return v0
.end method

.method private getPlaylistOrNull()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    .line 1038
    .local v1, "player":Landroidx/media2/common/SessionPlayer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1038
    .end local v1    # "player":Landroidx/media2/common/SessionPlayer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getServiceComponentByAction(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1271
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1272
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v1, "queryIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1275
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1279
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1275
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    nop

    .line 1276
    const/4 v2, 0x0

    return-object v2
.end method

.method private notifyPlayerUpdatedNotLocked(Landroidx/media2/common/SessionPlayer;)V
    .locals 23
    .param p1, "oldPlayer"    # Landroidx/media2/common/SessionPlayer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1073
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/SessionPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v8

    .line 1074
    .local v8, "oldPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    invoke-direct/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getPlaylistOrNull()Ljava/util/List;

    move-result-object v9

    .line 1075
    .local v9, "newPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    invoke-static {v8, v9}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$44;

    invoke-direct {v0, v7, v9}, Landroidx/media2/session/MediaSessionImplBase$44;-><init>(Landroidx/media2/session/MediaSessionImplBase;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/SessionPlayer;->getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 1086
    .local v0, "oldMetadata":Landroidx/media2/common/MediaMetadata;
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    .line 1087
    .local v1, "newMetadata":Landroidx/media2/common/MediaMetadata;
    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1088
    new-instance v2, Landroidx/media2/session/MediaSessionImplBase$45;

    invoke-direct {v2, v7, v1}, Landroidx/media2/session/MediaSessionImplBase$45;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v7, v2}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_0

    .line 1087
    :cond_1
    nop

    .line 1096
    .end local v0    # "oldMetadata":Landroidx/media2/common/MediaMetadata;
    .end local v1    # "newMetadata":Landroidx/media2/common/MediaMetadata;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/SessionPlayer;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v10

    .line 1097
    .local v10, "oldCurrentItem":Landroidx/media2/common/MediaItem;
    invoke-direct/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getCurrentMediaItemOrNull()Landroidx/media2/common/MediaItem;

    move-result-object v11

    .line 1098
    .local v11, "newCurrentItem":Landroidx/media2/common/MediaItem;
    invoke-static {v10, v11}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1099
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$46;

    invoke-direct {v0, v7, v11}, Landroidx/media2/session/MediaSessionImplBase$46;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v7, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_1

    .line 1098
    :cond_2
    nop

    .line 1108
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getRepeatMode()I

    move-result v12

    .line 1109
    .local v12, "repeatMode":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/SessionPlayer;->getRepeatMode()I

    move-result v0

    if-eq v0, v12, :cond_3

    .line 1110
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$47;

    invoke-direct {v0, v7, v12}, Landroidx/media2/session/MediaSessionImplBase$47;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    invoke-virtual {v7, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_2

    .line 1109
    :cond_3
    nop

    .line 1118
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getShuffleMode()I

    move-result v13

    .line 1119
    .local v13, "shuffleMode":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/SessionPlayer;->getShuffleMode()I

    move-result v0

    if-eq v0, v13, :cond_4

    .line 1120
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$48;

    invoke-direct {v0, v7, v13}, Landroidx/media2/session/MediaSessionImplBase$48;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    invoke-virtual {v7, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_3

    .line 1119
    :cond_4
    nop

    .line 1131
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1132
    .local v14, "currentTimeMs":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getCurrentPosition()J

    move-result-wide v16

    .line 1133
    .local v16, "positionMs":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayerState()I

    move-result v18

    .line 1134
    .local v18, "playerState":I
    new-instance v6, Landroidx/media2/session/MediaSessionImplBase$49;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v19, v8

    move-object v8, v6

    .end local v8    # "oldPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    .local v19, "oldPlaylist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/MediaSessionImplBase$49;-><init>(Landroidx/media2/session/MediaSessionImplBase;JJI)V

    invoke-virtual {v7, v8}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1140
    invoke-direct/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getCurrentMediaItemOrNull()Landroidx/media2/common/MediaItem;

    move-result-object v8

    .line 1141
    .local v8, "item":Landroidx/media2/common/MediaItem;
    if-eqz v8, :cond_5

    .line 1142
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getBufferingState()I

    move-result v6

    .line 1143
    .local v6, "bufferingState":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getBufferedPosition()J

    move-result-wide v20

    .line 1144
    .local v20, "bufferedPositionMs":J
    new-instance v4, Landroidx/media2/session/MediaSessionImplBase$50;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v6

    move/from16 v22, v6

    move-object v6, v4

    .end local v6    # "bufferingState":I
    .local v22, "bufferingState":I
    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaSessionImplBase$50;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/MediaItem;IJ)V

    invoke-virtual {v7, v6}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_4

    .line 1141
    .end local v20    # "bufferedPositionMs":J
    .end local v22    # "bufferingState":I
    :cond_5
    nop

    .line 1152
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/session/MediaSessionImplBase;->getPlaybackSpeed()F

    move-result v20

    .line 1153
    .local v20, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/common/SessionPlayer;->getPlaybackSpeed()F

    move-result v0

    cmpl-float v0, v20, v0

    if-eqz v0, :cond_6

    .line 1154
    new-instance v6, Landroidx/media2/session/MediaSessionImplBase$51;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v21, v8

    move-object v8, v6

    .end local v8    # "item":Landroidx/media2/common/MediaItem;
    .local v21, "item":Landroidx/media2/common/MediaItem;
    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/MediaSessionImplBase$51;-><init>(Landroidx/media2/session/MediaSessionImplBase;JJF)V

    invoke-virtual {v7, v8}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_5

    .line 1153
    .end local v21    # "item":Landroidx/media2/common/MediaItem;
    .restart local v8    # "item":Landroidx/media2/common/MediaItem;
    :cond_6
    move-object/from16 v21, v8

    .line 1162
    .end local v8    # "item":Landroidx/media2/common/MediaItem;
    .restart local v21    # "item":Landroidx/media2/common/MediaItem;
    :goto_5
    return-void
.end method

.method private onDeadObjectException(Landroidx/media2/session/MediaSession$ControllerInfo;Landroid/os/DeadObjectException;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "e"    # Landroid/os/DeadObjectException;

    .line 1261
    sget-boolean v0, Landroidx/media2/session/MediaSessionImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1262
    const-string v0, "MSImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is gone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1261
    :cond_0
    nop

    .line 1266
    :goto_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/session/ConnectedControllersManager;->removeController(Landroidx/media2/session/MediaSession$ControllerInfo;)V

    .line 1267
    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 704
    if-ltz p1, :cond_1

    .line 707
    if-eqz p2, :cond_0

    .line 710
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$26;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$26;-><init>(Landroidx/media2/session/MediaSessionImplBase;ILandroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public broadcastCustomCommand(Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 466
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$6;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$6;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 472
    return-void
.end method

.method public close()V
    .locals 4

    .line 358
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    monitor-exit v0

    return-void

    .line 362
    :cond_0
    sget-boolean v1, Landroidx/media2/session/MediaSessionImplBase;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 363
    const-string v1, "MSImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing session, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getToken()Landroidx/media2/session/SessionToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_1
    nop

    .line 366
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayerCallback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

    invoke-virtual {v1, v2}, Landroidx/media2/common/SessionPlayer;->unregisterPlayerCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    .line 367
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 368
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mMediaButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 369
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 369
    :cond_2
    nop

    .line 372
    :goto_1
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mCallback:Landroidx/media2/session/MediaSession$SessionCallback;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase;->mInstance:Landroidx/media2/session/MediaSession;

    invoke-virtual {v1, v2}, Landroidx/media2/session/MediaSession$SessionCallback;->onSessionClosed(Landroidx/media2/session/MediaSession;)V

    .line 373
    new-instance v1, Landroidx/media2/session/MediaSessionImplBase$3;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionImplBase$3;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-virtual {p0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 379
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 380
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    .line 382
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_2

    .line 384
    :cond_3
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_2

    .line 380
    :cond_4
    nop

    .line 387
    :goto_2
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectFromService(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media2/session/IMediaController;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 990
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/MediaSessionStub;->connect(Landroidx/media2/session/IMediaController;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 991
    return-void
.end method

.method createLegacyBrowserService(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/MediaBrowserServiceCompat;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroidx/media2/session/SessionToken;
    .param p3, "sessionToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 984
    new-instance v0, Landroidx/media2/session/MediaSessionServiceLegacyStub;

    invoke-direct {v0, p1, p0, p3}, Landroidx/media2/session/MediaSessionServiceLegacyStub;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaSession$MediaSessionImpl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-object v0
.end method

.method createPlaybackInfo(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 6
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "audioAttributes"    # Landroidx/media/AudioAttributesCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 313
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    :goto_0
    nop

    .line 316
    .local v0, "attrs":Landroidx/media/AudioAttributesCompat;
    instance-of v1, p1, Landroidx/media2/session/RemoteSessionPlayer;

    if-nez v1, :cond_2

    .line 317
    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->getLegacyStreamType(Landroidx/media/AudioAttributesCompat;)I

    move-result v1

    .line 318
    .local v1, "stream":I
    const/4 v2, 0x2

    .line 319
    .local v2, "controlType":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    const/4 v2, 0x0

    goto :goto_1

    .line 319
    :cond_1
    nop

    .line 322
    :goto_1
    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 326
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v5, p0, Landroidx/media2/session/MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 327
    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 322
    invoke-static {v3, v0, v2, v4, v5}, Landroidx/media2/session/MediaController$PlaybackInfo;->createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v3

    return-object v3

    .line 329
    .end local v1    # "stream":I
    .end local v2    # "controlType":I
    :cond_2
    move-object v1, p1

    check-cast v1, Landroidx/media2/session/RemoteSessionPlayer;

    .line 330
    .local v1, "remotePlayer":Landroidx/media2/session/RemoteSessionPlayer;
    const/4 v2, 0x2

    .line 333
    invoke-virtual {v1}, Landroidx/media2/session/RemoteSessionPlayer;->getVolumeControlType()I

    move-result v3

    .line 334
    invoke-virtual {v1}, Landroidx/media2/session/RemoteSessionPlayer;->getMaxVolume()I

    move-result v4

    .line 335
    invoke-virtual {v1}, Landroidx/media2/session/RemoteSessionPlayer;->getVolume()I

    move-result v5

    .line 330
    invoke-static {v2, v0, v3, v4, v5}, Landroidx/media2/session/MediaController$PlaybackInfo;->createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v2

    return-object v2
.end method

.method public createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 10

    .line 941
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayerState()I

    move-result v1

    .line 943
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getBufferingState()I

    move-result v2

    .line 942
    invoke-static {v1, v2}, Landroidx/media2/session/MediaUtils;->convertToPlaybackStateCompatState(II)I

    move-result v4

    .line 944
    .local v4, "state":I
    const-wide/32 v1, 0x37ffff

    .line 961
    .local v1, "allActions":J
    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 962
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getCurrentPosition()J

    move-result-wide v5

    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getPlaybackSpeed()F

    move-result v7

    .line 963
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 962
    invoke-virtual/range {v3 .. v9}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v3

    .line 964
    invoke-virtual {v3, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v3

    .line 965
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getBufferedPosition()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v3

    .line 966
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    monitor-exit v0

    .line 961
    return-object v3

    .line 967
    .end local v1    # "allActions":J
    .end local v4    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deselectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 888
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$42;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$42;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "task"    # Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1186
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    return-void

    .line 1192
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    .line 1193
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, p1}, Landroidx/media2/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media2/session/MediaSession$ControllerInfo;)Landroidx/media2/session/SequencedFutureManager;

    move-result-object v0

    .line 1195
    .local v0, "manager":Landroidx/media2/session/SequencedFutureManager;
    if-eqz v0, :cond_1

    .line 1196
    invoke-virtual {v0}, Landroidx/media2/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    goto :goto_0

    .line 1203
    :cond_1
    const/4 v1, 0x0

    .line 1205
    .local v1, "seq":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media2/session/MediaSession$ControllerCb;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;->run(Landroidx/media2/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "manager":Landroidx/media2/session/SequencedFutureManager;
    .end local v1    # "seq":I
    goto :goto_1

    .line 1208
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MSImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1206
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase;->onDeadObjectException(Landroidx/media2/session/MediaSession$ControllerInfo;Landroid/os/DeadObjectException;)V

    .line 1215
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_1
    nop

    .line 1216
    :goto_2
    return-void
.end method

.method dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V
    .locals 3
    .param p1, "task"    # Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1175
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    .line 1176
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/session/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 1177
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$ControllerInfo;>;"
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionLegacyStub;->getControllersForAll()Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1179
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 1180
    .local v2, "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    invoke-virtual {p0, v2, p1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1178
    .end local v2    # "controller":Landroidx/media2/session/MediaSession$ControllerInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1182
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getBufferedPosition()J
    .locals 3

    .line 573
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$15;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$15;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 581
    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 573
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 2

    .line 586
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$16;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$16;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 591
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 586
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroidx/media2/session/MediaSession$SessionCallback;
    .locals 1

    .line 926
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mCallback:Landroidx/media2/session/MediaSession$SessionCallback;

    return-object v0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 921
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$ControllerInfo;>;"
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroidx/media2/session/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v1

    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Landroidx/media2/session/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 916
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .locals 2

    .line 755
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$29;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$29;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 2

    .line 765
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$30;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$30;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 770
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 765
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 547
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$13;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$13;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 555
    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 547
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 3

    .line 560
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$14;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$14;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 568
    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 560
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstance()Landroidx/media2/session/MediaSession;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 911
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mInstance:Landroidx/media2/session/MediaSession;

    return-object v0
.end method

.method getLegacyBrowserService()Landroidx/media/MediaBrowserServiceCompat;
    .locals 2

    .line 1014
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    monitor-exit v0

    return-object v1

    .line 1016
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLegacyBrowserServiceBinder()Landroid/os/IBinder;
    .locals 4

    .line 1002
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    if-nez v1, :cond_0

    .line 1004
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionToken:Landroidx/media2/session/SessionToken;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 1005
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v3

    .line 1004
    invoke-virtual {p0, v1, v2, v3}, Landroidx/media2/session/MediaSessionImplBase;->createLegacyBrowserService(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/MediaBrowserServiceCompat;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    goto :goto_0

    .line 1003
    :cond_0
    nop

    .line 1007
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    .line 1008
    .local v1, "legacyStub":Landroidx/media/MediaBrowserServiceCompat;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.browse.MediaBrowserService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    return-object v2

    .line 1008
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "legacyStub":Landroidx/media/MediaBrowserServiceCompat;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getNextMediaItemIndex()I
    .locals 2

    .line 785
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$32;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$32;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 790
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 785
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPlaybackInfo()Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 2

    .line 972
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    monitor-exit v0

    return-object v1

    .line 974
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 2

    .line 596
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$17;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$17;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 604
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 596
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPlayer()Landroidx/media2/common/SessionPlayer;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 392
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    monitor-exit v0

    return-object v1

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerState()I
    .locals 2

    .line 537
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$12;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$12;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 542
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 537
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 619
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$19;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$19;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;
    .locals 2

    .line 693
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$25;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$25;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaMetadata;

    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 2

    .line 775
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$31;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$31;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 780
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 775
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 2

    .line 806
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$34;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$34;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 811
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 806
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 2
    .param p1, "trackType"    # I

    .line 898
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$43;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$43;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 979
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 931
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 2

    .line 827
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$36;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$36;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    .line 832
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 827
    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToken()Landroidx/media2/session/SessionToken;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 409
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionToken:Landroidx/media2/session/SessionToken;

    return-object v0
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 868
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$40;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$40;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 404
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoSize()Landroidx/media2/common/VideoSize;
    .locals 3

    .line 848
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$38;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$38;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    new-instance v1, Landroidx/media2/common/VideoSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    invoke-direct {p0, v0, v1}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/VideoSize;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 936
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z
    .locals 3
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 424
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 425
    return v0

    .line 427
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionLegacyStub;->getControllersForAll()Landroidx/media2/session/MediaSession$ControllerInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media2/session/MediaSession$ControllerInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 428
    return v2

    .line 430
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media2/session/ConnectedControllersManager;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

    .line 431
    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media2/session/ConnectedControllersManager;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    .line 430
    :cond_3
    nop

    .line 431
    :goto_0
    const/4 v0, 0x1

    .line 430
    :goto_1
    return v0
.end method

.method isInPlaybackState(Landroidx/media2/common/SessionPlayer;)Z
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1021
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1022
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getPlayerState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 1022
    :cond_1
    goto :goto_0

    .line 1021
    :cond_2
    nop

    .line 1023
    :goto_0
    const/4 v0, 0x0

    .line 1021
    :goto_1
    return v0
.end method

.method notifyPlaybackInfoChangedNotLocked(Landroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 1
    .param p1, "info"    # Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1166
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$52;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$52;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/session/MediaController$PlaybackInfo;)V

    invoke-virtual {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1172
    return-void
.end method

.method public pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$9;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$9;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public play()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 488
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$8;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$8;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public prepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$10;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$10;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 720
    if-ltz p1, :cond_0

    .line 723
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$27;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$27;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replacePlaylistItem(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 738
    if-ltz p1, :cond_1

    .line 741
    if-eqz p2, :cond_0

    .line 744
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$28;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$28;-><init>(Landroidx/media2/session/MediaSessionImplBase;ILandroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 528
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$11;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$11;-><init>(Landroidx/media2/session/MediaSessionImplBase;J)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 878
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$41;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$41;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendCustomCommand(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "args"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Landroidx/media2/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$7;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/session/MediaSessionImplBase$7;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTask(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setAllowedCommands(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 448
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/session/ConnectedControllersManager;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionStub:Landroidx/media2/session/MediaSessionStub;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    .line 450
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/ConnectedControllersManager;->updateAllowedCommands(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V

    .line 451
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$5;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaSessionImplBase$5;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionLegacyStub:Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    .line 459
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/ConnectedControllersManager;->updateAllowedCommands(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommandGroup;)V

    .line 461
    :goto_0
    return-void
.end method

.method public setCustomLayout(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 437
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$4;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/MediaSessionImplBase$4;-><init>(Landroidx/media2/session/MediaSessionImplBase;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTask(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setMediaItem(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 643
    if-eqz p1, :cond_0

    .line 646
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$21;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$21;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "speed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 609
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$18;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$18;-><init>(Landroidx/media2/session/MediaSessionImplBase;F)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 630
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-eqz p1, :cond_0

    .line 633
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$20;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/MediaSessionImplBase$20;-><init>(Landroidx/media2/session/MediaSessionImplBase;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 817
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$35;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$35;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setShuffleMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "shuffleMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 838
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$37;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$37;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 858
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$39;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$39;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipToNextItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 683
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$24;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$24;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipToPlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 656
    if-ltz p1, :cond_0

    .line 659
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$22;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$22;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index shouldn\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipToPreviousItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 673
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$23;

    invoke-direct {v0, p0}, Landroidx/media2/session/MediaSessionImplBase$23;-><init>(Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public updatePlayer(Landroidx/media2/common/SessionPlayer;)V
    .locals 11
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase;->createPlaybackInfo(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 250
    .local v0, "info":Landroidx/media2/session/MediaController$PlaybackInfo;
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaController$PlaybackInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 253
    .local v2, "isPlaybackInfoChanged":Z
    :goto_0
    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    .line 254
    .local v3, "oldPlayer":Landroidx/media2/common/SessionPlayer;
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    .line 255
    iput-object v0, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 257
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    if-eq v3, v4, :cond_2

    .line 258
    if-eqz v3, :cond_1

    .line 259
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayerCallback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

    invoke-virtual {v3, v4}, Landroidx/media2/common/SessionPlayer;->unregisterPlayerCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    goto :goto_1

    .line 258
    :cond_1
    nop

    .line 261
    :goto_1
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    iget-object v5, p0, Landroidx/media2/session/MediaSessionImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroidx/media2/session/MediaSessionImplBase;->mPlayerCallback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

    invoke-virtual {v4, v5, v6}, Landroidx/media2/common/SessionPlayer;->registerPlayerCallback(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    goto :goto_2

    .line 257
    :cond_2
    nop

    .line 263
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    if-nez v3, :cond_3

    .line 270
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_4

    .line 272
    :cond_3
    if-eq p1, v3, :cond_4

    .line 273
    invoke-virtual {p0}, Landroidx/media2/session/MediaSessionImplBase;->getPlayerState()I

    move-result v1

    .line 274
    .local v1, "state":I
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/media2/session/MediaSessionImplBase$1;

    invoke-direct {v5, p0, v1}, Landroidx/media2/session/MediaSessionImplBase$1;-><init>(Landroidx/media2/session/MediaSessionImplBase;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 280
    invoke-direct {p0, v3}, Landroidx/media2/session/MediaSessionImplBase;->notifyPlayerUpdatedNotLocked(Landroidx/media2/common/SessionPlayer;)V

    goto :goto_3

    .line 272
    .end local v1    # "state":I
    :cond_4
    nop

    .line 282
    :goto_3
    if-eqz v2, :cond_5

    .line 283
    invoke-virtual {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->notifyPlaybackInfoChangedNotLocked(Landroidx/media2/session/MediaController$PlaybackInfo;)V

    goto :goto_4

    .line 282
    :cond_5
    nop

    .line 287
    :goto_4
    instance-of v1, p1, Landroidx/media2/session/RemoteSessionPlayer;

    if-eqz v1, :cond_6

    .line 288
    move-object v1, p1

    check-cast v1, Landroidx/media2/session/RemoteSessionPlayer;

    .line 289
    .local v1, "remotePlayer":Landroidx/media2/session/RemoteSessionPlayer;
    new-instance v10, Landroidx/media2/session/MediaSessionImplBase$2;

    .line 290
    invoke-virtual {v1}, Landroidx/media2/session/RemoteSessionPlayer;->getVolumeControlType()I

    move-result v6

    .line 291
    invoke-virtual {v1}, Landroidx/media2/session/RemoteSessionPlayer;->getMaxVolume()I

    move-result v7

    .line 292
    invoke-virtual {v1}, Landroidx/media2/session/RemoteSessionPlayer;->getVolume()I

    move-result v8

    move-object v4, v10

    move-object v5, p0

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Landroidx/media2/session/MediaSessionImplBase$2;-><init>(Landroidx/media2/session/MediaSessionImplBase;IIILandroidx/media2/session/RemoteSessionPlayer;)V

    .line 303
    .local v4, "volumeProvider":Landroidx/media/VolumeProviderCompat;
    iget-object v5, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v5, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V

    .line 304
    .end local v1    # "remotePlayer":Landroidx/media2/session/RemoteSessionPlayer;
    .end local v4    # "volumeProvider":Landroidx/media/VolumeProviderCompat;
    goto :goto_5

    .line 305
    :cond_6
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/media2/session/MediaSessionImplBase;->getLegacyStreamType(Landroidx/media/AudioAttributesCompat;)I

    move-result v1

    .line 306
    .local v1, "stream":I
    iget-object v4, p0, Landroidx/media2/session/MediaSessionImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 308
    .end local v1    # "stream":I
    :goto_5
    return-void

    .line 263
    .end local v2    # "isPlaybackInfoChanged":Z
    .end local v3    # "oldPlayer":Landroidx/media2/common/SessionPlayer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updatePlayer(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer;)V
    .locals 0
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "playlistAgent"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 239
    return-void
.end method

.method public updatePlaylistMetadata(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 796
    new-instance v0, Landroidx/media2/session/MediaSessionImplBase$33;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/MediaSessionImplBase$33;-><init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/MediaMetadata;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaSessionImplBase;->dispatchPlayerTask(Landroidx/media2/session/MediaSessionImplBase$PlayerTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
