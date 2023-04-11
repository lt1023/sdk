.class final Landroidx/media2/session/SessionToken$1;
.super Landroid/os/Handler;
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

.field final synthetic val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .line 297
    iput-object p2, p0, Landroidx/media2/session/SessionToken$1;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    iput-object p3, p0, Landroidx/media2/session/SessionToken$1;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    iput-object p4, p0, Landroidx/media2/session/SessionToken$1;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroidx/media2/session/SessionToken$1;->val$packageName:Ljava/lang/String;

    iput p6, p0, Landroidx/media2/session/SessionToken$1;->val$uid:I

    iput-object p7, p0, Landroidx/media2/session/SessionToken$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Landroidx/media2/session/SessionToken$1;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 300
    iget-object v0, p0, Landroidx/media2/session/SessionToken$1;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    monitor-enter v0

    .line 301
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 302
    monitor-exit v0

    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/SessionToken$1;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 308
    new-instance v1, Landroidx/media2/session/SessionToken;

    new-instance v2, Landroidx/media2/session/SessionTokenImplLegacy;

    iget-object v3, p0, Landroidx/media2/session/SessionToken$1;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v4, p0, Landroidx/media2/session/SessionToken$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Landroidx/media2/session/SessionToken$1;->val$uid:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/session/SessionTokenImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    .line 313
    .local v1, "resultToken":Landroidx/media2/session/SessionToken;
    iget-object v2, p0, Landroidx/media2/session/SessionToken$1;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 317
    iget-object v2, p0, Landroidx/media2/session/SessionToken$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/media2/session/SessionToken$1;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    iget-object v4, p0, Landroidx/media2/session/SessionToken$1;->val$compatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v2, v3, v4, v1}, Landroidx/media2/session/SessionToken;->notifySessionTokenCreated(Ljava/util/concurrent/Executor;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    .line 318
    iget-object v2, p0, Landroidx/media2/session/SessionToken$1;->val$thread:Landroid/os/HandlerThread;

    invoke-static {v2}, Landroidx/media2/session/SessionToken;->quitHandlerThread(Landroid/os/HandlerThread;)V

    .line 319
    .end local v1    # "resultToken":Landroidx/media2/session/SessionToken;
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
