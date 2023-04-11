.class final Landroid/support/browser/ACC$10;
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

    .line 372
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 376
    invoke-static {}, Landroid/support/browser/ACC;->access$1000()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/support/browser/ACC;->access$1002(I)I

    .line 377
    invoke-static {}, Landroid/support/browser/ACC;->access$1000()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 379
    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget-boolean v0, v0, Landroid/support/browser/ez/AdssData;->p03:Z

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Landroid/support/browser/ACC;->access$400()V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {}, Landroid/support/browser/ACC;->showInterstitial()V

    .line 384
    :cond_1
    :goto_0
    return-void
.end method
