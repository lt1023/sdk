.class final Landroidx/media2/session/SessionToken$3;
.super Ljava/lang/Object;
.source "SessionToken.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/SessionToken;->notifySessionTokenCreated(Ljava/util/concurrent/Executor;Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final synthetic val$token2:Landroidx/media2/session/SessionToken;


# direct methods
.method constructor <init>(Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V
    .locals 0

    .line 363
    iput-object p1, p0, Landroidx/media2/session/SessionToken$3;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    iput-object p2, p0, Landroidx/media2/session/SessionToken$3;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p3, p0, Landroidx/media2/session/SessionToken$3;->val$token2:Landroidx/media2/session/SessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 366
    iget-object v0, p0, Landroidx/media2/session/SessionToken$3;->val$listener:Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;

    iget-object v1, p0, Landroidx/media2/session/SessionToken$3;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v2, p0, Landroidx/media2/session/SessionToken$3;->val$token2:Landroidx/media2/session/SessionToken;

    invoke-interface {v0, v1, v2}, Landroidx/media2/session/SessionToken$OnSessionTokenCreatedListener;->onSessionTokenCreated(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    .line 367
    return-void
.end method
