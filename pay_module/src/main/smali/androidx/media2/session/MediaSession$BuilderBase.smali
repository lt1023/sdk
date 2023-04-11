.class abstract Landroidx/media2/session/MediaSession$BuilderBase;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/media2/session/MediaSession;",
        "U:",
        "Landroidx/media2/session/MediaSession$BuilderBase<",
        "TT;TU;TC;>;C:",
        "Landroidx/media2/session/MediaSession$SessionCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCallback:Landroidx/media2/session/MediaSession$SessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mId:Ljava/lang/String;

.field mPlayer:Landroidx/media2/common/SessionPlayer;

.field mSessionActivity:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/common/SessionPlayer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1253
    .local p0, "this":Landroidx/media2/session/MediaSession$BuilderBase;, "Landroidx/media2/session/MediaSession$BuilderBase<TT;TU;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    if-eqz p1, :cond_1

    .line 1257
    if-eqz p2, :cond_0

    .line 1260
    iput-object p1, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mContext:Landroid/content/Context;

    .line 1261
    iput-object p2, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mPlayer:Landroidx/media2/common/SessionPlayer;

    .line 1263
    const-string v0, ""

    iput-object v0, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mId:Ljava/lang/String;

    .line 1264
    return-void

    .line 1258
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "player shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract build()Landroidx/media2/session/MediaSession;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media2/session/MediaSession$BuilderBase;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
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

    .line 1326
    .local p0, "this":Landroidx/media2/session/MediaSession$BuilderBase;, "Landroidx/media2/session/MediaSession$BuilderBase<TT;TU;TC;>;"
    if-eqz p1, :cond_0

    .line 1329
    iput-object p1, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mExtras:Landroid/os/Bundle;

    .line 1330
    return-object p0

    .line 1327
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extras shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setId(Ljava/lang/String;)Landroidx/media2/session/MediaSession$BuilderBase;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .line 1291
    .local p0, "this":Landroidx/media2/session/MediaSession$BuilderBase;, "Landroidx/media2/session/MediaSession$BuilderBase<TT;TU;TC;>;"
    if-eqz p1, :cond_0

    .line 1294
    iput-object p1, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mId:Ljava/lang/String;

    .line 1295
    return-object p0

    .line 1292
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/session/MediaSession$BuilderBase;
    .locals 0
    .param p1, "pi"    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")TU;"
        }
    .end annotation

    .line 1274
    .local p0, "this":Landroidx/media2/session/MediaSession$BuilderBase;, "Landroidx/media2/session/MediaSession$BuilderBase<TT;TU;TC;>;"
    iput-object p1, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mSessionActivity:Landroid/app/PendingIntent;

    .line 1275
    return-object p0
.end method

.method setSessionCallback(Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$SessionCallback;)Landroidx/media2/session/MediaSession$BuilderBase;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/media2/session/MediaSession$SessionCallback;
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

    .line 1306
    .local p0, "this":Landroidx/media2/session/MediaSession$BuilderBase;, "Landroidx/media2/session/MediaSession$BuilderBase<TT;TU;TC;>;"
    .local p2, "callback":Landroidx/media2/session/MediaSession$SessionCallback;, "TC;"
    if-eqz p1, :cond_1

    .line 1309
    if-eqz p2, :cond_0

    .line 1312
    iput-object p1, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1313
    iput-object p2, p0, Landroidx/media2/session/MediaSession$BuilderBase;->mCallback:Landroidx/media2/session/MediaSession$SessionCallback;

    .line 1314
    return-object p0

    .line 1310
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1307
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
