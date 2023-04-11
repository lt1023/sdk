.class Landroid/support/browser/receiver/ConnectivityReceiver$1;
.super Ljava/util/TimerTask;
.source "ConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/receiver/ConnectivityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/browser/receiver/ConnectivityReceiver;


# direct methods
.method constructor <init>(Landroid/support/browser/receiver/ConnectivityReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/browser/receiver/ConnectivityReceiver;

    .line 41
    iput-object p1, p0, Landroid/support/browser/receiver/ConnectivityReceiver$1;->this$0:Landroid/support/browser/receiver/ConnectivityReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 45
    sget v0, Landroid/support/browser/utils/MyHelper;->_loadCount:I

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Landroid/support/browser/ACC;->loadInters()V

    .line 47
    const-string v0, "Receiver call LoadInters"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
