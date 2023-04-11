.class final Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final MSG_END_OF_SOURCE:I = 0x2

.field private static final MSG_FATAL_ERROR:I = 0x4

.field private static final MSG_IO_EXCEPTION:I = 0x3

.field private static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private volatile executorThread:Ljava/lang/Thread;

.field private final loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Landroidx/media2/exoplayer/external/upstream/Loader;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/Loader;Landroid/os/Looper;Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;IJ)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p5, "defaultMinRetryCount"    # I
    .param p6, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 329
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    .local p3, "loadable":Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;, "TT;"
    .local p4, "callback":Landroidx/media2/exoplayer/external/upstream/Loader$Callback;, "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<TT;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 330
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 331
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    .line 332
    iput-object p4, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    .line 333
    iput p5, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 334
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->startTimeMs:J

    .line 335
    return-void
.end method

.method private execute()V
    .locals 2

    .line 487
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 488
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$500(Landroidx/media2/exoplayer/external/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$100(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method private finish()V
    .locals 2

    .line 492
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$102(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    .line 493
    return-void
.end method

.method private getRetryDelayMillis()J
    .locals 2

    .line 496
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 11
    .param p1, "released"    # Z

    .line 354
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 356
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 357
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->removeMessages(I)V

    .line 358
    if-nez p1, :cond_0

    .line 359
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 358
    :cond_0
    goto :goto_0

    .line 362
    :cond_1
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    .line 363
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;->cancelLoad()V

    .line 364
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 364
    :cond_2
    nop

    .line 368
    :goto_0
    if-eqz p1, :cond_3

    .line 369
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->finish()V

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 371
    .local v9, "nowMs":J
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v9, v4

    const/4 v8, 0x1

    move-wide v4, v9

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V

    .line 376
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    goto :goto_1

    .line 368
    .end local v9    # "nowMs":J
    :cond_3
    nop

    .line 378
    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 433
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_0

    .line 434
    return-void

    .line 436
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 437
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->execute()V

    .line 438
    return-void

    .line 440
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    .line 443
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->finish()V

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 445
    .local v0, "nowMs":J
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v10, v0, v2

    .line 446
    .local v10, "durationMs":J
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    const/4 v8, 0x0

    move-wide v4, v0

    move-wide v6, v10

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V

    .line 448
    return-void

    .line 450
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 464
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/io/IOException;

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 465
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    const/4 v12, 0x1

    add-int/2addr v2, v12

    iput v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    .line 466
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    iget v9, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    .line 467
    move-wide v4, v0

    move-wide v6, v10

    invoke-interface/range {v2 .. v9}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v2

    .line 468
    .local v2, "action":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    invoke-static {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 469
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$202(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_2

    .line 470
    :cond_3
    invoke-static {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 471
    invoke-static {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I

    move-result v3

    if-ne v3, v12, :cond_4

    .line 472
    iput v12, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    goto :goto_0

    .line 471
    :cond_4
    nop

    .line 474
    :goto_0
    nop

    .line 475
    invoke-static {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    .line 476
    invoke-static {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)J

    move-result-wide v3

    goto :goto_1

    .line 477
    :cond_5
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v3

    .line 474
    :goto_1
    invoke-virtual {p0, v3, v4}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->start(J)V

    goto :goto_2

    .line 470
    :cond_6
    goto :goto_2

    .line 456
    .end local v2    # "action":Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    move-wide v4, v0

    move-wide v6, v10

    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_2

    .line 457
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "LoadTask"

    const-string v4, "Unexpected exception handling load completed"

    invoke-static {v3, v4, v2}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    new-instance v4, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v4, v2}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$202(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    .line 462
    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_2

    .line 452
    :pswitch_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    const/4 v8, 0x0

    move-wide v4, v0

    move-wide v6, v10

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V

    .line 453
    nop

    .line 484
    :goto_2
    return-void

    .line 441
    .end local v0    # "nowMs":J
    .end local v10    # "durationMs":J
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public maybeThrowError(I)V
    .locals 2
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    throw v0

    .line 338
    :cond_1
    :goto_0
    nop

    .line 341
    return-void
.end method

.method public run()V
    .locals 5

    .line 383
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 384
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    if-nez v2, :cond_1

    .line 385
    const-string v2, "load:"

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;->load()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 390
    goto :goto_1

    .line 389
    :catchall_0
    move-exception v2

    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    throw v2

    .line 384
    :cond_1
    nop

    .line 392
    :goto_1
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_2

    .line 393
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 392
    :cond_2
    goto/16 :goto_3

    .line 419
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Error;
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_3

    .line 425
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 424
    :cond_3
    nop

    .line 427
    :goto_2
    throw v0

    .line 411
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_4

    .line 417
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 416
    :cond_4
    goto :goto_3

    .line 405
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_5

    .line 409
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 408
    :cond_5
    goto :goto_3

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 402
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_6

    .line 403
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 402
    :cond_6
    goto :goto_3

    .line 395
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_7

    .line 397
    invoke-virtual {p0, v1, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 396
    :cond_7
    nop

    .line 428
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 429
    return-void
.end method

.method public start(J)V
    .locals 4
    .param p1, "delayMillis"    # J

    .line 344
    .local p0, "this":Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;, "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$100(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$102(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    .line 346
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 347
    invoke-virtual {p0, v1, p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 349
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->execute()V

    .line 351
    :goto_1
    return-void
.end method
