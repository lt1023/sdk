.class final Landroid/support/browser/ACC$9;
.super Ljava/util/TimerTask;
.source "ACC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC;->checkShowIntersByTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    invoke-static {}, Landroid/support/browser/ACC;->access$1000()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/support/browser/ACC;->access$1002(I)I

    .line 352
    const-string v0, "--> 4"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Landroid/support/browser/ACC;->access$1000()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 354
    const-string v0, "--> 5"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 356
    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget-boolean v0, v0, Landroid/support/browser/ez/AdssData;->p03:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-static {}, Landroid/support/browser/ACC;->access$400()V

    goto :goto_0

    .line 359
    :cond_0
    invoke-static {}, Landroid/support/browser/ACC;->showInterstitial()V

    .line 361
    :cond_1
    :goto_0
    return-void
.end method
