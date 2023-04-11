.class final Landroidx/media2/session/SessionToken$2;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "SessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/SessionToken;->createSessionToken(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/util/concurrent/Executor;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final synthetic val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/os/Handler;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/HandlerThread;)V
    .locals 0

    .line 323
    iput-object p1, p0, Landroidx/media2/session/SessionToken$2;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    iput-object p2, p0, Landroidx/media2/session/SessionToken$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/media2/session/SessionToken$2;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    iput-object p4, p0, Landroidx/media2/session/SessionToken$2;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroidx/media2/session/SessionToken$2;->val$packageName:Ljava/lang/String;

    iput p6, p0, Landroidx/media2/session/SessionToken$2;->val$uid:I

    iput-object p7, p0, Landroidx/media2/session/SessionToken$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Landroidx/media2/session/SessionToken$2;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionReady()V
    .locals 6

    .line 327
    iget-object v0, p0, Landroidx/media2/session/SessionToken$2;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->val$handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 334
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    instance-of v1, v1, Landroidx/media2/session/SessionToken;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionToken;

    goto :goto_0

    .line 340
    :cond_0
    new-instance v1, Landroidx/media2/session/SessionToken;

    new-instance v2, Landroidx/media2/session/SessionTokenImplLegacy;

    iget-object v3, p0, Landroidx/media2/session/SessionToken$2;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v4, p0, Landroidx/media2/session/SessionToken$2;->val$packageName:Ljava/lang/String;

    iget v5, p0, Landroidx/media2/session/SessionToken$2;->val$uid:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/session/SessionTokenImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    .line 344
    .local v1, "resultToken":Landroidx/media2/session/SessionToken;
    iget-object v2, p0, Landroidx/media2/session/SessionToken$2;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 347
    :goto_0
    iget-object v2, p0, Landroidx/media2/session/SessionToken$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/media2/session/SessionToken$2;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    iget-object v4, p0, Landroidx/media2/session/SessionToken$2;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v2, v3, v4, v1}, Landroidx/media2/session/SessionToken;->notifySessionTokenCreated(Ljava/util/concurrent/Executor;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    .line 348
    iget-object v2, p0, Landroidx/media2/session/SessionToken$2;->val$thread:Landroid/os/HandlerThread;

    invoke-static {v2}, Landroidx/media2/session/SessionToken;->quitHandlerThread(Landroid/os/HandlerThread;)V

    .line 349
    .end local v1    # "resultToken":Landroidx/media2/session/SessionToken;
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
