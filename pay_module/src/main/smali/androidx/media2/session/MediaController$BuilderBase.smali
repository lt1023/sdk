.class abstract Landroidx/media2/session/MediaController$BuilderBase;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/media2/session/MediaController;",
        "U:",
        "Landroidx/media2/session/MediaController$BuilderBase<",
        "TT;TU;TC;>;C:",
        "Landroidx/media2/session/MediaController$ControllerCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCallback:Landroidx/media2/session/MediaController$ControllerCallback;

.field mCallbackExecutor:Ljava/util/concurrent/Executor;

.field mCompatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field mConnectionHints:Landroid/os/Bundle;

.field final mContext:Landroid/content/Context;

.field mToken:Landroidx/media2/session/SessionToken;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1514
    .local p0, "this":Landroidx/media2/session/MediaController$BuilderBase;, "Landroidx/media2/session/MediaController$BuilderBase<TT;TU;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1515
    if-eqz p1, :cond_0

    .line 1518
    iput-object p1, p0, Landroidx/media2/session/MediaController$BuilderBase;->mContext:Landroid/content/Context;

    .line 1519
    return-void

    .line 1516
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract build()Landroidx/media2/session/MediaController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setConnectionHints(Landroid/os/Bundle;)Landroidx/media2/session/MediaController$BuilderBase;
    .locals 2
    .param p1, "connectionHints"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TU;"
        }
    .end annotation

    .line 1601
    .local p0, "this":Landroidx/media2/session/MediaController$BuilderBase;, "Landroidx/media2/session/MediaController$BuilderBase<TT;TU;TC;>;"
    if-eqz p1, :cond_0

    .line 1604
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media2/session/MediaController$BuilderBase;->mConnectionHints:Landroid/os/Bundle;

    .line 1605
    return-object p0

    .line 1602
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionHints shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setControllerCallback(Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$ControllerCallback;)Landroidx/media2/session/MediaController$BuilderBase;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/media2/session/MediaController$ControllerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;)TU;"
        }
    .end annotation

    .line 1617
    .local p0, "this":Landroidx/media2/session/MediaController$BuilderBase;, "Landroidx/media2/session/MediaController$BuilderBase<TT;TU;TC;>;"
    .local p2, "callback":Landroidx/media2/session/MediaController$ControllerCallback;, "TC;"
    if-eqz p1, :cond_1

    .line 1620
    if-eqz p2, :cond_0

    .line 1623
    iput-object p1, p0, Landroidx/media2/session/MediaController$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1624
    iput-object p2, p0, Landroidx/media2/session/MediaController$BuilderBase;->mCallback:Landroidx/media2/session/MediaController$ControllerCallback;

    .line 1625
    return-object p0

    .line 1621
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSessionCompatToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media2/session/MediaController$BuilderBase;
    .locals 2
    .param p1, "compatToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
            ")TU;"
        }
    .end annotation

    .line 1579
    .local p0, "this":Landroidx/media2/session/MediaController$BuilderBase;, "Landroidx/media2/session/MediaController$BuilderBase<TT;TU;TC;>;"
    if-eqz p1, :cond_0

    .line 1582
    iput-object p1, p0, Landroidx/media2/session/MediaController$BuilderBase;->mCompatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1583
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/MediaController$BuilderBase;->mToken:Landroidx/media2/session/SessionToken;

    .line 1584
    return-object p0

    .line 1580
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "compatToken shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSessionToken(Landroidx/media2/session/SessionToken;)Landroidx/media2/session/MediaController$BuilderBase;
    .locals 2
    .param p1, "token"    # Landroidx/media2/session/SessionToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/SessionToken;",
            ")TU;"
        }
    .end annotation

    .line 1560
    .local p0, "this":Landroidx/media2/session/MediaController$BuilderBase;, "Landroidx/media2/session/MediaController$BuilderBase<TT;TU;TC;>;"
    if-eqz p1, :cond_0

    .line 1563
    iput-object p1, p0, Landroidx/media2/session/MediaController$BuilderBase;->mToken:Landroidx/media2/session/SessionToken;

    .line 1564
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/MediaController$BuilderBase;->mCompatToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1565
    return-object p0

    .line 1561
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
