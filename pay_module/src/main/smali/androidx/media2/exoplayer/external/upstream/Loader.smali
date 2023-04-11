.class public final Landroidx/media2/exoplayer/external/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/LoaderErrorThrower;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseTask;,
        Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;,
        Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;,
        Landroidx/media2/exoplayer/external/upstream/Loader$RetryActionType;,
        Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;,
        Landroidx/media2/exoplayer/external/upstream/Loader$Callback;,
        Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;,
        Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_DONT_RETRY:I = 0x2

.field private static final ACTION_TYPE_DONT_RETRY_FATAL:I = 0x3

.field private static final ACTION_TYPE_RETRY:I = 0x0

.field private static final ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT:I = 0x1

.field public static final DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

.field public static final DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

.field public static final RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

.field public static final RETRY_RESET_ERROR_COUNT:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;


# instance fields
.field private currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<",
            "+",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 162
    nop

    .line 163
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v2

    sput-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 165
    nop

    .line 166
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v2

    sput-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->RETRY_RESET_ERROR_COUNT:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 168
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v4, v0, v1, v3}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    sput-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 174
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v0, v1, v3}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    sput-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 207
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 45
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    return-object v0
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/upstream/Loader;
    .param p1, "x1"    # Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/upstream/Loader;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 45
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .locals 2
    .param p0, "resetErrorCount"    # Z
    .param p1, "retryDelayMillis"    # J

    .line 217
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 218
    nop

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    .line 217
    nop

    return-object v0
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->cancel(Z)V

    .line 258
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError(I)V

    .line 290
    return-void
.end method

.method public maybeThrowError(I)V
    .locals 2
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    if-eqz v0, :cond_1

    .line 297
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 298
    iget v1, v0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    goto :goto_0

    :cond_0
    move v1, p1

    .line 297
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->maybeThrowError(I)V

    goto :goto_1

    .line 296
    :cond_1
    nop

    .line 300
    :goto_1
    return-void

    .line 295
    :cond_2
    throw v0
.end method

.method public release()V
    .locals 1

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    .line 266
    return-void
.end method

.method public release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->cancel(Z)V

    goto :goto_0

    .line 276
    :cond_0
    nop

    .line 279
    :goto_0
    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseTask;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseTask;-><init>(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 279
    :cond_1
    nop

    .line 282
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 283
    return-void
.end method

.method public startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J
    .locals 12
    .param p3, "defaultMinRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;",
            ">(TT;",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
            "TT;>;I)J"
        }
    .end annotation

    .line 238
    .local p1, "loadable":Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;, "TT;"
    .local p2, "callback":Landroidx/media2/exoplayer/external/upstream/Loader$Callback;, "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    .line 239
    .local v8, "looper":Landroid/os/Looper;
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 242
    .local v9, "startTimeMs":J
    new-instance v11, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;-><init>(Landroidx/media2/exoplayer/external/upstream/Loader;Landroid/os/Looper;Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v11, v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->start(J)V

    .line 243
    return-wide v9
.end method
