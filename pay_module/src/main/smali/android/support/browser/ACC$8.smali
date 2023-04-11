.class final Landroid/support/browser/ACC$8;
.super Ljava/lang/Object;
.source "ACC.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC;->loadInters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked()V
    .locals 0

    .line 328
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    .line 301
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    .line 302
    invoke-static {}, Landroid/support/browser/ACC;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/support/browser/ACC;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    sget-boolean v0, Landroid/support/browser/utils/MyHelper;->isZero:Z

    if-nez v0, :cond_0

    .line 304
    invoke-static {}, Landroid/support/browser/ACC;->access$800()V

    .line 306
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/browser/ACC;->access$902(Z)Z

    .line 308
    :cond_1
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/browser/ACC;->access$302(Z)Z

    .line 285
    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 1

    .line 291
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/browser/ACC;->access$902(Z)Z

    .line 292
    sget-object v0, Landroid/support/browser/ACC;->mTimerTask:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Landroid/support/browser/ACC;->mTimerTask:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 294
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/browser/ACC;->access$1002(I)I

    .line 295
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 2

    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/browser/ACC;->access$302(Z)Z

    .line 262
    sput-boolean v0, Landroid/support/browser/utils/MyHelper;->_isIntersLoaded:Z

    .line 263
    invoke-static {}, Landroid/support/browser/ACC;->access$500()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/support/browser/ACC;->access$600()Z

    move-result v1

    if-nez v1, :cond_2

    .line 264
    sget-boolean v1, Landroid/support/browser/utils/MyHelper;->isZero:Z

    if-nez v1, :cond_1

    .line 265
    const-string v1, "Call Show"

    invoke-static {v1}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Landroid/support/browser/ACC;->access$600()Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    invoke-static {}, Landroid/support/browser/ACC;->access$700()V

    .line 268
    sget-object v1, Landroid/support/browser/ACC;->mTimerTaskFirstShow:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Landroid/support/browser/ACC;->mTimerTaskFirstShow:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 271
    :cond_0
    invoke-static {v0}, Landroid/support/browser/ACC;->access$602(Z)Z

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {}, Landroid/support/browser/ACC;->access$800()V

    .line 278
    :cond_2
    :goto_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 322
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 0

    .line 314
    return-void
.end method
