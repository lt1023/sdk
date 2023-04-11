.class Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityActionReceiver"
.end annotation


# static fields
.field private static staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;


# instance fields
.field private final bandwidthMeters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 437
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 438
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->mainHandler:Landroid/os/Handler;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    .line 440
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    monitor-enter v0

    .line 428
    :try_start_0
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    if-nez v1, :cond_0

    .line 429
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;-><init>()V

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    .line 430
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 431
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 428
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    nop

    .line 434
    :goto_0
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 427
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private removeClearedReferences()V
    .locals 4

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 471
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 472
    .local v1, "bandwidthMeterReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    .line 473
    .local v2, "bandwidthMeter":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    if-nez v2, :cond_0

    .line 474
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 473
    :cond_0
    nop

    .line 470
    .end local v1    # "bandwidthMeterReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;>;"
    .end local v2    # "bandwidthMeter":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 477
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateBandwidthMeter(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    .locals 0
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    .line 466
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->access$100(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V

    .line 467
    return-void
.end method


# virtual methods
.method final synthetic lambda$register$0$DefaultBandwidthMeter$ConnectivityActionReceiver(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    .locals 0
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    .line 447
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->updateBandwidthMeter(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V

    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 452
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->isInitialStickyBroadcast()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 453
    monitor-exit p0

    return-void

    .line 455
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->removeClearedReferences()V

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 457
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 458
    .local v1, "bandwidthMeterReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    .line 459
    .local v2, "bandwidthMeter":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    if-eqz v2, :cond_1

    .line 460
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->updateBandwidthMeter(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 459
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    :cond_1
    nop

    .line 456
    .end local v1    # "bandwidthMeterReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;>;"
    .end local v2    # "bandwidthMeter":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 451
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized register(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    .locals 2
    .param p1, "bandwidthMeter"    # Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    monitor-enter p0

    .line 443
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->removeClearedReferences()V

    .line 444
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 442
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    .end local p1    # "bandwidthMeter":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
