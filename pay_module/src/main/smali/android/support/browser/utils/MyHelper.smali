.class public Landroid/support/browser/utils/MyHelper;
.super Ljava/lang/Object;
.source "MyHelper.java"


# static fields
.field static TAG:Ljava/lang/String;

.field public static _configLoaded:Z

.field public static _isIntersLoaded:Z

.field public static _loadCount:I

.field public static adData:Landroid/support/browser/ez/AdssData;

.field public static ezKey:Ljava/lang/String;

.field public static isZero:Z

.field public static mMainActivity:Landroid/app/Activity;

.field public static mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field public static mTimerReload:Ljava/util/Timer;

.field public static mTimerReloadInters:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "TAGG-Adss"

    sput-object v0, Landroid/support/browser/utils/MyHelper;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "WVVoU01HTklUVFpNZVRscFlqSjRhMkpYT1RKYVdFMTBXa1JLYkZwdFdYVmtNbFpwVEcxR2QyTkRPV2hhU0UxMllsYzVhMHh0VG5sWlYxb3dXakpHZEZwVE5YUmhWelZ3V2pKR2RGcFRPREZPVXpsd1kyMU9ORXh0Y0hwaU1qUTk="

    sput-object v0, Landroid/support/browser/utils/MyHelper;->ezKey:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput v0, Landroid/support/browser/utils/MyHelper;->_loadCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "valueDecode"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 34
    .local v0, "decodeValue":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static myData(Ljava/lang/String;)Landroid/support/browser/ez/AdssData;
    .locals 2
    .param p0, "dataInput"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, [Landroid/support/browser/ez/AdssData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/browser/ez/AdssData;

    .line 42
    .local v0, "_data":[Landroid/support/browser/ez/AdssData;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "_mess"    # Ljava/lang/String;

    .line 31
    return-void
.end method
