.class public Landroid/support/browser/ACC;
.super Ljava/lang/Object;
.source "ACC.java"


# static fields
.field private static _cc:I

.field private static _cc2:I

.field static _ranNumm:Ljava/util/Random;

.field private static _vvall:I

.field static banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private static canShowBG:Z

.field private static hasCreatBanner:Z

.field private static idInters:Ljava/lang/String;

.field static isBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

.field private static isDialogClosed:Z

.field private static isFirstShow:Z

.field private static isInterOpening:Z

.field private static isIntersLoaded:Z

.field static isShowTop:Z

.field static mTimerBanner:Ljava/util/Timer;

.field static mTimerTask:Ljava/util/Timer;

.field static mTimerTaskFirstShow:Ljava/util/Timer;

.field private static popUp:Landroid/widget/PopupWindow;

.field static rlBannerLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/browser/ACC;->canShowBG:Z

    .line 35
    sput-boolean v0, Landroid/support/browser/ACC;->isFirstShow:Z

    .line 36
    sput v0, Landroid/support/browser/ACC;->_cc2:I

    .line 145
    sput-boolean v0, Landroid/support/browser/ACC;->hasCreatBanner:Z

    .line 332
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/browser/ACC;->isInterOpening:Z

    .line 333
    sput v0, Landroid/support/browser/ACC;->_vvall:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 29
    invoke-static {}, Landroid/support/browser/ACC;->showWindowPopup()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 29
    invoke-static {}, Landroid/support/browser/ACC;->createTimerBanner()V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 29
    sget v0, Landroid/support/browser/ACC;->_cc:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 29
    sput p0, Landroid/support/browser/ACC;->_cc:I

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 29
    sget v0, Landroid/support/browser/ACC;->_cc2:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 29
    sput p0, Landroid/support/browser/ACC;->_cc2:I

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 29
    sput-boolean p0, Landroid/support/browser/ACC;->isDialogClosed:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 29
    sget-boolean v0, Landroid/support/browser/ACC;->isIntersLoaded:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 29
    sput-boolean p0, Landroid/support/browser/ACC;->isIntersLoaded:Z

    return p0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 29
    invoke-static {}, Landroid/support/browser/ACC;->showAlert()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 29
    sget-boolean v0, Landroid/support/browser/ACC;->canShowBG:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 29
    sget-boolean v0, Landroid/support/browser/ACC;->isFirstShow:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 29
    sput-boolean p0, Landroid/support/browser/ACC;->isFirstShow:Z

    return p0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 29
    invoke-static {}, Landroid/support/browser/ACC;->mNewFirstShow()V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .line 29
    invoke-static {}, Landroid/support/browser/ACC;->checkShowIntersByTime()V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 29
    sput-boolean p0, Landroid/support/browser/ACC;->isInterOpening:Z

    return p0
.end method

.method private static checkFirstShow()V
    .locals 9

    .line 391
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 392
    .local v0, "_ranNum":Ljava/util/Random;
    sget-object v1, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v1, v1, Landroid/support/browser/ez/AdssData;->p07:I

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p06:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p06:I

    add-int/2addr v1, v2

    .line 393
    .local v1, "_val":I
    sget-object v2, Landroid/support/browser/ACC;->mTimerTaskFirstShow:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 394
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    sput-object v3, Landroid/support/browser/ACC;->mTimerTaskFirstShow:Ljava/util/Timer;

    .line 395
    new-instance v4, Landroid/support/browser/ACC$11;

    invoke-direct {v4}, Landroid/support/browser/ACC$11;-><init>()V

    const-wide/16 v5, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 408
    :cond_0
    return-void
.end method

.method private static checkShowIntersByTime()V
    .locals 8

    .line 336
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 337
    .local v0, "_ranNumm":Ljava/util/Random;
    sget-object v1, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v1, v1, Landroid/support/browser/ez/AdssData;->p07:I

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p06:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p06:I

    add-int/2addr v1, v2

    sput v1, Landroid/support/browser/ACC;->_vvall:I

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show timeeeeeeeeeeeee: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/support/browser/ACC;->_vvall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 339
    sget-object v1, Landroid/support/browser/ACC;->mTimerTask:Ljava/util/Timer;

    if-nez v1, :cond_1

    .line 340
    const-string v1, "--> 1"

    invoke-static {v1}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Landroid/support/browser/ACC;->mTimerTask:Ljava/util/Timer;

    .line 342
    sget-boolean v1, Landroid/support/browser/ACC;->isInterOpening:Z

    if-nez v1, :cond_0

    .line 343
    const-string v1, "--> 2"

    invoke-static {v1}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 344
    sget-object v1, Landroid/support/browser/ACC;->mTimerTask:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 346
    :cond_0
    const-string v1, "--> 3"

    invoke-static {v1}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 347
    sget-object v2, Landroid/support/browser/ACC;->mTimerTask:Ljava/util/Timer;

    new-instance v3, Landroid/support/browser/ACC$9;

    invoke-direct {v3}, Landroid/support/browser/ACC$9;-><init>()V

    const-wide/16 v4, 0x3e8

    sget v1, Landroid/support/browser/ACC;->_vvall:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 365
    :cond_1
    const-string v1, "NOT NULLLLLLLLLLLLL"

    invoke-static {v1}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 367
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    sput-object v2, Landroid/support/browser/ACC;->mTimerTask:Ljava/util/Timer;

    .line 368
    sget-boolean v1, Landroid/support/browser/ACC;->isInterOpening:Z

    if-nez v1, :cond_2

    .line 369
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 372
    :cond_2
    new-instance v3, Landroid/support/browser/ACC$10;

    invoke-direct {v3}, Landroid/support/browser/ACC$10;-><init>()V

    const-wide/16 v4, 0x3e8

    sget v1, Landroid/support/browser/ACC;->_vvall:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 388
    :goto_0
    return-void
.end method

.method private static createTimerBanner()V
    .locals 6

    .line 85
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 86
    .local v0, "_ranNumm":Ljava/util/Random;
    sget-object v1, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v1, v1, Landroid/support/browser/ez/AdssData;->x12:I

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->x11:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->x11:I

    add-int/2addr v1, v2

    .line 87
    .local v1, "_valueRanBanner":I
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/support/browser/ACC$1;

    invoke-direct {v3}, Landroid/support/browser/ACC$1;-><init>()V

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    return-void
.end method

.method private static getSize(I)Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 2
    .param p0, "_iSize"    # I

    .line 66
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 67
    .local v0, "bannerSize":Lcom/ironsource/mediationsdk/ISBannerSize;
    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 79
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 77
    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "ISBannerSize RECTANGLE"

    invoke-static {v1}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 74
    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->LARGE:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 70
    nop

    .line 82
    :goto_0
    return-object v0
.end method

.method public static hideBanner()V
    .locals 2

    .line 180
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Landroid/support/browser/ACC$4;

    invoke-direct {v1}, Landroid/support/browser/ACC$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public static initAdss(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "_ac"    # Landroid/app/Activity;
    .param p1, "intersID"    # Ljava/lang/String;

    .line 46
    sput-object p1, Landroid/support/browser/ACC;->idInters:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/support/browser/ACC;->_ranNumm:Ljava/util/Random;

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    sget-object v1, Landroid/support/browser/ACC;->idInters:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setAdaptersDebug(Z)V

    .line 51
    const-string v1, "Facebook_IS_CacheFlag"

    const-string v2, "IMAGE"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "AdMob_TFCD"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "AdMob_TFUA"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 55
    invoke-static {}, Landroid/support/browser/ACC;->loadInters()V

    .line 56
    sget-object v1, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v1, v1, Landroid/support/browser/ez/AdssData;->x0:I

    if-ne v1, v0, :cond_1

    .line 57
    sget-object v1, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v1, v1, Landroid/support/browser/ez/AdssData;->x2:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/browser/ACC;->isShowTop:Z

    .line 58
    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v0, v0, Landroid/support/browser/ez/AdssData;->x3:I

    invoke-static {v0}, Landroid/support/browser/ACC;->getSize(I)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    sput-object v0, Landroid/support/browser/ACC;->isBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 59
    invoke-static {}, Landroid/support/browser/ACC;->loadBanner()V

    .line 62
    :cond_1
    return-void
.end method

.method public static intersReady()Z
    .locals 1

    .line 217
    sget-boolean v0, Landroid/support/browser/ACC;->isIntersLoaded:Z

    return v0
.end method

.method private static loadBanner()V
    .locals 4

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v0, "paramsRL":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout;

    sget-object v2, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/support/browser/ACC;->rlBannerLayout:Landroid/widget/RelativeLayout;

    .line 101
    sget-object v1, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    sget-object v2, Landroid/support/browser/ACC;->rlBannerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v1, "paramsView":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    sget-boolean v2, Landroid/support/browser/ACC;->isShowTop:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    sget-object v2, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    sget-object v3, Landroid/support/browser/ACC;->isBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v2

    sput-object v2, Landroid/support/browser/ACC;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 107
    new-instance v3, Landroid/support/browser/ACC$2;

    invoke-direct {v3}, Landroid/support/browser/ACC$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 137
    sget-object v2, Landroid/support/browser/ACC;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 140
    sget-object v2, Landroid/support/browser/ACC;->rlBannerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 142
    return-void
.end method

.method public static loadInters()V
    .locals 1

    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/browser/ACC;->canShowBG:Z

    .line 255
    new-instance v0, Landroid/support/browser/ACC$8;

    invoke-direct {v0}, Landroid/support/browser/ACC$8;-><init>()V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 330
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    .line 331
    return-void
.end method

.method private static mNewFirstShow()V
    .locals 6

    .line 233
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 234
    .local v0, "_ranNum":Ljava/util/Random;
    const/4 v1, 0x5

    .line 235
    .local v1, "_val":I
    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p04:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p05:I

    if-nez v2, :cond_0

    .line 236
    sput-boolean v3, Landroid/support/browser/utils/MyHelper;->isZero:Z

    goto :goto_0

    .line 237
    :cond_0
    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p04:I

    if-ltz v2, :cond_1

    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p05:I

    if-lez v2, :cond_1

    .line 238
    sget-object v2, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v2, v2, Landroid/support/browser/ez/AdssData;->p05:I

    sget-object v4, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v4, v4, Landroid/support/browser/ez/AdssData;->p04:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v3, v3, Landroid/support/browser/ez/AdssData;->p04:I

    add-int v1, v2, v3

    .line 241
    :cond_1
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/support/browser/ACC$7;

    invoke-direct {v3}, Landroid/support/browser/ACC$7;-><init>()V

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    return-void
.end method

.method public static onBackKeyPress()V
    .locals 0

    .line 190
    invoke-static {}, Landroid/support/browser/ACC;->showInterstitial()V

    .line 191
    return-void
.end method

.method private static showAlert()V
    .locals 2

    .line 194
    const-string v0, "Show Alert"

    invoke-static {v0}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 195
    sget-boolean v0, Landroid/support/browser/ACC;->isDialogClosed:Z

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/browser/ACC;->isDialogClosed:Z

    .line 197
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Landroid/support/browser/ACC$5;

    invoke-direct {v1}, Landroid/support/browser/ACC$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static showBanner()V
    .locals 2

    .line 172
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Landroid/support/browser/ACC$3;

    invoke-direct {v1}, Landroid/support/browser/ACC$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public static showInterstitial()V
    .locals 2

    .line 220
    sget-object v0, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Landroid/support/browser/ACC$6;

    invoke-direct {v1}, Landroid/support/browser/ACC$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method private static showWindowPopup()V
    .locals 7

    .line 148
    sget-boolean v0, Landroid/support/browser/ACC;->hasCreatBanner:Z

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 149
    new-instance v0, Landroid/widget/PopupWindow;

    sget-object v3, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/browser/ACC;->popUp:Landroid/widget/PopupWindow;

    .line 150
    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v3, Landroid/support/browser/utils/MyHelper;->mMainActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v4, "paramsView":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    sget-boolean v5, Landroid/support/browser/ACC;->isShowTop:Z

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :cond_0
    const/16 v5, 0xc

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    sget-object v5, Landroid/support/browser/ACC;->banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    sget-object v5, Landroid/support/browser/ACC;->popUp:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 159
    sget-object v5, Landroid/support/browser/ACC;->popUp:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    sget-object v5, Landroid/support/browser/ACC;->popUp:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 161
    sget-object v5, Landroid/support/browser/ACC;->popUp:Landroid/widget/PopupWindow;

    sget-boolean v6, Landroid/support/browser/ACC;->isShowTop:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x30

    goto :goto_1

    :cond_1
    const/16 v6, 0x50

    :goto_1
    invoke-virtual {v5, v0, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/support/browser/ACC;->isBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/support/browser/ACC;->isBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/browser/utils/MyHelper;->showLog(Ljava/lang/String;)V

    .line 163
    const/4 v5, 0x1

    sput-boolean v5, Landroid/support/browser/ACC;->hasCreatBanner:Z

    .line 166
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "paramsView":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    sget-object v0, Landroid/support/browser/ACC;->isBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 167
    .local v0, "_realWidth":I
    sget-object v3, Landroid/support/browser/ACC;->isBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 168
    .local v3, "_realHeight":I
    sget-object v4, Landroid/support/browser/ACC;->popUp:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3

    const/16 v5, 0x280

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {v4, v2, v2, v5, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 169
    return-void
.end method
