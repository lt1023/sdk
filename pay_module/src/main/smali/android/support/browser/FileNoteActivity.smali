.class public Landroid/support/browser/FileNoteActivity;
.super Landroid/app/Activity;
.source "FileNoteActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/browser/FileNoteActivity;->requestWindowFeature(I)Z

    .line 21
    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget-object v0, v0, Landroid/support/browser/ez/AdssData;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/support/browser/ACC;->initAdss(Landroid/app/Activity;Ljava/lang/String;)V

    .line 27
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/support/browser/FileNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/browser/utils/MyHelper;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/support/browser/FileNoteActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/support/browser/FileNoteActivity;->finish()V

    .line 35
    :goto_0
    return-void
.end method
