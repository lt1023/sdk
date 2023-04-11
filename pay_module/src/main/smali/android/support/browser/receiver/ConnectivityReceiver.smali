.class public Landroid/support/browser/receiver/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# instance fields
.field private _mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/browser/receiver/ConnectivityReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/support/browser/receiver/ConnectivityReceiver;

    .line 14
    iget-object v0, p0, Landroid/support/browser/receiver/ConnectivityReceiver;->_mContext:Landroid/content/Context;

    return-object v0
.end method

.method private reloadConfig()V
    .locals 7

    .line 61
    sget-boolean v0, Landroid/support/browser/utils/MyHelper;->_configLoaded:Z

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    .line 64
    sget-object v1, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    new-instance v2, Landroid/support/browser/receiver/ConnectivityReceiver$2;

    invoke-direct {v2, p0}, Landroid/support/browser/receiver/ConnectivityReceiver$2;-><init>(Landroid/support/browser/receiver/ConnectivityReceiver;)V

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 76
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 21
    :try_start_0
    iput-object p1, p0, Landroid/support/browser/receiver/ConnectivityReceiver;->_mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/support/browser/utils/MyHelper;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    .line 26
    :try_start_1
    sget-object v0, Landroid/support/browser/utils/MyHelper;->ezKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "_str":Ljava/lang/String;
    new-instance v1, Landroid/support/browser/ez/TaskJson;

    iget-object v2, p0, Landroid/support/browser/receiver/ConnectivityReceiver;->_mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/browser/ez/TaskJson;-><init>(Landroid/content/Context;)V

    .line 28
    .local v1, "_task":Landroid/support/browser/ez/TaskJson;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/browser/ez/TaskJson;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .end local v0    # "_str":Ljava/lang/String;
    .end local v1    # "_task":Landroid/support/browser/ez/TaskJson;
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "_ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    .end local v0    # "_ex":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_1

    .line 35
    :cond_0
    sget-boolean v0, Landroid/support/browser/utils/MyHelper;->_configLoaded:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/browser/receiver/ConnectivityReceiver;->reloadConfig()V

    .line 38
    :cond_1
    :goto_1
    sget-boolean v0, Landroid/support/browser/utils/MyHelper;->_isIntersLoaded:Z

    if-nez v0, :cond_2

    .line 39
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReloadInters:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReloadInters:Ljava/util/Timer;

    .line 41
    sget-object v1, Landroid/support/browser/utils/MyHelper;->mTimerReloadInters:Ljava/util/Timer;

    new-instance v2, Landroid/support/browser/receiver/ConnectivityReceiver$1;

    invoke-direct {v2, p0}, Landroid/support/browser/receiver/ConnectivityReceiver$1;-><init>(Landroid/support/browser/receiver/ConnectivityReceiver;)V

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_2

    .line 53
    :cond_2
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReloadInters:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    :cond_3
    :goto_2
    goto :goto_3

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3
    return-void
.end method
