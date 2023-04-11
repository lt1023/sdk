.class final Landroid/support/browser/ACC$2;
.super Ljava/lang/Object;
.source "ACC.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/browser/ACC;->loadBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked()V
    .locals 0

    .line 123
    return-void
.end method

.method public onBannerAdLeftApplication()V
    .locals 0

    .line 135
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 118
    const-string v0, "Banner Load Failed"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onBannerAdLoaded()V
    .locals 1

    .line 111
    const-string v0, "Banner loaded - Create timer check show after xxx seconds"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Landroid/support/browser/ACC;->hideBanner()V

    .line 113
    invoke-static {}, Landroid/support/browser/ACC;->access$100()V

    .line 114
    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .locals 0

    .line 131
    return-void
.end method

.method public onBannerAdScreenPresented()V
    .locals 0

    .line 127
    return-void
.end method
