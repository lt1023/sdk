.class public Landroid/app/intent;
.super Ljava/lang/Object;
.source "intent.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;


# instance fields
.field private APP_KEY:Ljava/lang/String;

.field private final FALLBACK_USER_ID:Ljava/lang/String;

.field private Init:I

.field private PACKAGE_NAME:Ljava/lang/String;

.field private PeriodTime1:I

.field private PeriodTime2:I

.field private final TAG:Ljava/lang/String;

.field private act:Lcom/mojang/minecraftpe/MainActivity;

.field private data:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 1
    .param p1, "a"    # Lcom/mojang/minecraftpe/MainActivity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "MainActivity"

    iput-object v0, p0, Landroid/app/intent;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "106376529"

    iput-object v0, p0, Landroid/app/intent;->APP_KEY:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "userId"

    iput-object v0, p0, Landroid/app/intent;->FALLBACK_USER_ID:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Landroid/app/intent;->data:Ljava/lang/String;

    .line 37
    const-string v0, "aHR0cHM6Ly9ib2xkbW92ZXMtZDJlZmYud2ViLmFwcC9hZHMvbW9kLmNyYWZ0Z2FtZS5taW5pZ2FtZS81NS9pcmMyLmpzb24="

    iput-object v0, p0, Landroid/app/intent;->url:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/intent;->act:Lcom/mojang/minecraftpe/MainActivity;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/app/intent;->PACKAGE_NAME:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/intent;->PeriodTime1:I

    .line 43
    iput v0, p0, Landroid/app/intent;->PeriodTime2:I

    .line 44
    iput v0, p0, Landroid/app/intent;->Init:I

    .line 47
    iput-object p1, p0, Landroid/app/intent;->act:Lcom/mojang/minecraftpe/MainActivity;

    .line 48
    invoke-direct {p0}, Landroid/app/intent;->GetInfo()V

    .line 50
    return-void
.end method

.method private GetInfo()V
    .locals 2

    .line 54
    new-instance v0, Landroid/app/intent$1;

    invoke-direct {v0, p0}, Landroid/app/intent$1;-><init>(Landroid/app/intent;)V

    .line 119
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method private ShowAd()V
    .locals 4

    .line 154
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial()V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/app/intent$3;

    invoke-direct {v1, p0}, Landroid/app/intent$3;-><init>(Landroid/app/intent;)V

    iget v2, p0, Landroid/app/intent;->Init:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/intent;

    .line 30
    iget-object v0, p0, Landroid/app/intent;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/intent;

    .line 30
    iget-object v0, p0, Landroid/app/intent;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/app/intent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Landroid/app/intent;->data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/intent;

    .line 30
    iget-object v0, p0, Landroid/app/intent;->APP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/app/intent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Landroid/app/intent;->APP_KEY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/app/intent;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/intent;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Landroid/app/intent;->Init:I

    return p1
.end method

.method static synthetic access$402(Landroid/app/intent;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/intent;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Landroid/app/intent;->PeriodTime1:I

    return p1
.end method

.method static synthetic access$502(Landroid/app/intent;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/intent;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Landroid/app/intent;->PeriodTime2:I

    return p1
.end method

.method static synthetic access$600(Landroid/app/intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/intent;

    .line 30
    iget-object v0, p0, Landroid/app/intent;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/intent;)Lcom/mojang/minecraftpe/MainActivity;
    .locals 1
    .param p0, "x0"    # Landroid/app/intent;

    .line 30
    iget-object v0, p0, Landroid/app/intent;->act:Lcom/mojang/minecraftpe/MainActivity;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/intent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/app/intent;->initIronSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/intent;

    .line 30
    invoke-direct {p0}, Landroid/app/intent;->ShowAd()V

    return-void
.end method

.method private initIronSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    .line 188
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 191
    invoke-static {p2}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/app/intent;->act:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    .line 196
    return-void
.end method

.method private startIronSourceInitTask()V
    .locals 2

    .line 135
    new-instance v0, Landroid/app/intent$2;

    invoke-direct {v0, p0}, Landroid/app/intent$2;-><init>(Landroid/app/intent;)V

    .line 149
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method


# virtual methods
.method public RepeatAD()V
    .locals 6

    .line 170
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 171
    .local v0, "rd":Ljava/util/Random;
    iget v1, p0, Landroid/app/intent;->PeriodTime2:I

    iget v2, p0, Landroid/app/intent;->PeriodTime1:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, p0, Landroid/app/intent;->PeriodTime1:I

    add-int/2addr v1, v2

    .line 172
    .line 175
    .local v1, "periodTime":I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Landroid/app/intent$4;

    invoke-direct {v3, p0}, Landroid/app/intent$4;-><init>(Landroid/app/intent;)V

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 2

    .line 205
    const-string v0, "MainActivity"

    const-string v1, "onInterstitialAdClicked"

    .line 206
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 2

    .line 234
    const-string v0, "MainActivity"

    const-string v1, "onInterstitialAdClosed"

    .line 235
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    .line 236
    invoke-virtual {p0}, Landroid/app/intent;->RepeatAD()V

    .line 237
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3
    .param p1, "ironSourceError"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 221
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialAdLoadFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 2

    .line 228
    const-string v0, "MainActivity"

    const-string v1, "onInterstitialAdOpened"

    .line 229
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 2

    .line 211
    const-string v0, "MainActivity"

    const-string v1, "onInterstitialAdReady"

    .line 213
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3
    .param p1, "ironSourceError"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 251
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialAdShowFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 2

    .line 242
    const-string v0, "MainActivity"

    const-string v1, "onInterstitialAdShowSucceeded"

    .line 243
    return-void
.end method

.method public prepareAd()V
    .locals 2

    .line 125
    iget-object v0, p0, Landroid/app/intent;->act:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 126
    invoke-direct {p0}, Landroid/app/intent;->startIronSourceInitTask()V

    .line 128
    iget-object v0, p0, Landroid/app/intent;->act:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 129
    invoke-direct {p0}, Landroid/app/intent;->ShowAd()V

    .line 130
    return-void
.end method
