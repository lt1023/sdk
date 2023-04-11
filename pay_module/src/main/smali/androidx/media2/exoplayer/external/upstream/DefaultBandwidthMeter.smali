.class public final Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
.implements Landroidx/media2/exoplayer/external/upstream/TransferListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;,
        Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field private static final BYTES_TRANSFERRED_FOR_ESTIMATE:I = 0x80000

.field public static final DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATE:J = 0xf4240L

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

.field public static final DEFAULT_SLIDING_WINDOW_MAX_WEIGHT:I = 0x7d0

.field private static final ELAPSED_MILLIS_FOR_ESTIMATE:I = 0x7d0


# instance fields
.field private bitrateEstimate:J

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/EventDispatcher<",
            "Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final initialBitrateEstimates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastReportedBitrateEstimate:J

.field private networkType:I

.field private networkTypeOverride:I

.field private networkTypeOverrideSet:Z

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private final slidingPercentile:Landroidx/media2/exoplayer/external/util/SlidingPercentile;

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalElapsedTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->createInitialBitrateCountryGroupAssignment()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;

    .line 64
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    .line 68
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

    .line 72
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

    .line 76
    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

    return-void

    :array_0
    .array-data 8
        0x5265c0
        0x33e140
        0x1cfde0
        0x10c8e0
        0x61a80
    .end array-data

    :array_1
    .array-data 8
        0x29810
        0x21ef8
        0x1dc90
        0x1a1f8
        0x15f90
    .end array-data

    :array_2
    .array-data 8
        0x200b20
        0x13d620
        0xea600
        0xbbfd0
        0x6ddd0
    .end array-data

    :array_3
    .array-data 8
        0x5b8d80
        0x33e140
        0x200b20
        0x155cc0
        0x8b290
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sget-object v4, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/Clock;Z)V

    .line 255
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/Clock;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "maxWeight"    # I
    .param p4, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;
    .param p5, "resetOnNetworkTypeChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;I",
            "Landroidx/media2/exoplayer/external/util/Clock;",
            "Z)V"
        }
    .end annotation

    .line 262
    .local p2, "initialBitrateEstimates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    .line 264
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Landroid/util/SparseArray;

    .line 265
    new-instance v0, Landroidx/media2/exoplayer/external/util/EventDispatcher;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    .line 266
    new-instance v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;

    invoke-direct {v0, p3}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media2/exoplayer/external/util/SlidingPercentile;

    .line 267
    iput-object p4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 269
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    :goto_1
    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkType:I

    .line 270
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkType:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 272
    if-eqz p1, :cond_2

    if-eqz p5, :cond_2

    .line 273
    nop

    .line 274
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->getInstance(Landroid/content/Context;)Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    move-result-object v0

    .line 275
    .local v0, "connectivityActionReceiver":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->register(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V

    goto :goto_2

    .line 272
    .end local v0    # "connectivityActionReceiver":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    :cond_2
    nop

    .line 277
    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/Clock;ZLandroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/SparseArray;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroidx/media2/exoplayer/external/util/Clock;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$1;

    .line 54
    invoke-direct/range {p0 .. p5}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILandroidx/media2/exoplayer/external/util/Clock;Z)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    .line 54
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->onConnectivityAction()V

    return-void
.end method

.method private static createInitialBitrateCountryGroupAssignment()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 482
    .local v0, "countryGroupAssignment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const-string v1, "AD"

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v1, "AE"

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v1, "AF"

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v1, "AG"

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v1, "AI"

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v1, "AL"

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v1, "AM"

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v1, "AO"

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v1, "AQ"

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v1, "AR"

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v1, "AS"

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v1, "AT"

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "AU"

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "AW"

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v1, "AX"

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v1, "AZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v1, "BA"

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v1, "BB"

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v1, "BD"

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v1, "BE"

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v1, "BF"

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v1, "BG"

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v1, "BH"

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "BI"

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v1, "BJ"

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v1, "BL"

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v1, "BM"

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v1, "BN"

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v1, "BO"

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v1, "BQ"

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v1, "BR"

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v1, "BS"

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v1, "BT"

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v1, "BW"

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v1, "BY"

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v1, "BZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v1, "CA"

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v1, "CD"

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v1, "CF"

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v1, "CG"

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v1, "CH"

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "CI"

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v1, "CK"

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v1, "CL"

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v1, "CM"

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, "CN"

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "CO"

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "CR"

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v1, "CU"

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v1, "CV"

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v1, "CW"

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v1, "CX"

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v1, "CY"

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v1, "CZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_35

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v1, "DE"

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "DJ"

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "DK"

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "DM"

    new-array v3, v2, [I

    fill-array-data v3, :array_39

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "DO"

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "DZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_3b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "EC"

    new-array v3, v2, [I

    fill-array-data v3, :array_3c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v1, "EE"

    new-array v3, v2, [I

    fill-array-data v3, :array_3d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "EG"

    new-array v3, v2, [I

    fill-array-data v3, :array_3e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "EH"

    new-array v3, v2, [I

    fill-array-data v3, :array_3f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "ER"

    new-array v3, v2, [I

    fill-array-data v3, :array_40

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "ES"

    new-array v3, v2, [I

    fill-array-data v3, :array_41

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "ET"

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "FI"

    new-array v3, v2, [I

    fill-array-data v3, :array_43

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "FJ"

    new-array v3, v2, [I

    fill-array-data v3, :array_44

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v1, "FK"

    new-array v3, v2, [I

    fill-array-data v3, :array_45

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v1, "FM"

    new-array v3, v2, [I

    fill-array-data v3, :array_46

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v1, "FO"

    new-array v3, v2, [I

    fill-array-data v3, :array_47

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v1, "FR"

    new-array v3, v2, [I

    fill-array-data v3, :array_48

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v1, "GA"

    new-array v3, v2, [I

    fill-array-data v3, :array_49

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "GB"

    new-array v3, v2, [I

    fill-array-data v3, :array_4a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v1, "GD"

    new-array v3, v2, [I

    fill-array-data v3, :array_4b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "GE"

    new-array v3, v2, [I

    fill-array-data v3, :array_4c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v1, "GF"

    new-array v3, v2, [I

    fill-array-data v3, :array_4d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v1, "GG"

    new-array v3, v2, [I

    fill-array-data v3, :array_4e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "GH"

    new-array v3, v2, [I

    fill-array-data v3, :array_4f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v1, "GI"

    new-array v3, v2, [I

    fill-array-data v3, :array_50

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v1, "GL"

    new-array v3, v2, [I

    fill-array-data v3, :array_51

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v1, "GM"

    new-array v3, v2, [I

    fill-array-data v3, :array_52

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "GN"

    new-array v3, v2, [I

    fill-array-data v3, :array_53

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v1, "GP"

    new-array v3, v2, [I

    fill-array-data v3, :array_54

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "GQ"

    new-array v3, v2, [I

    fill-array-data v3, :array_55

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v1, "GR"

    new-array v3, v2, [I

    fill-array-data v3, :array_56

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v1, "GT"

    new-array v3, v2, [I

    fill-array-data v3, :array_57

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v1, "GU"

    new-array v3, v2, [I

    fill-array-data v3, :array_58

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v1, "GW"

    new-array v3, v2, [I

    fill-array-data v3, :array_59

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v1, "GY"

    new-array v3, v2, [I

    fill-array-data v3, :array_5a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v1, "HK"

    new-array v3, v2, [I

    fill-array-data v3, :array_5b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v1, "HN"

    new-array v3, v2, [I

    fill-array-data v3, :array_5c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v1, "HR"

    new-array v3, v2, [I

    fill-array-data v3, :array_5d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v1, "HT"

    new-array v3, v2, [I

    fill-array-data v3, :array_5e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v1, "HU"

    new-array v3, v2, [I

    fill-array-data v3, :array_5f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "ID"

    new-array v3, v2, [I

    fill-array-data v3, :array_60

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v1, "IE"

    new-array v3, v2, [I

    fill-array-data v3, :array_61

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v1, "IL"

    new-array v3, v2, [I

    fill-array-data v3, :array_62

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v1, "IM"

    new-array v3, v2, [I

    fill-array-data v3, :array_63

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v1, "IN"

    new-array v3, v2, [I

    fill-array-data v3, :array_64

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v1, "IO"

    new-array v3, v2, [I

    fill-array-data v3, :array_65

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "IQ"

    new-array v3, v2, [I

    fill-array-data v3, :array_66

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v1, "IR"

    new-array v3, v2, [I

    fill-array-data v3, :array_67

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v1, "IS"

    new-array v3, v2, [I

    fill-array-data v3, :array_68

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v1, "IT"

    new-array v3, v2, [I

    fill-array-data v3, :array_69

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v1, "JE"

    new-array v3, v2, [I

    fill-array-data v3, :array_6a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v1, "JM"

    new-array v3, v2, [I

    fill-array-data v3, :array_6b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v1, "JO"

    new-array v3, v2, [I

    fill-array-data v3, :array_6c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v1, "JP"

    new-array v3, v2, [I

    fill-array-data v3, :array_6d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v1, "KE"

    new-array v3, v2, [I

    fill-array-data v3, :array_6e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v1, "KG"

    new-array v3, v2, [I

    fill-array-data v3, :array_6f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v1, "KH"

    new-array v3, v2, [I

    fill-array-data v3, :array_70

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v1, "KI"

    new-array v3, v2, [I

    fill-array-data v3, :array_71

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v1, "KM"

    new-array v3, v2, [I

    fill-array-data v3, :array_72

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v1, "KN"

    new-array v3, v2, [I

    fill-array-data v3, :array_73

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v1, "KP"

    new-array v3, v2, [I

    fill-array-data v3, :array_74

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v1, "KR"

    new-array v3, v2, [I

    fill-array-data v3, :array_75

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v1, "KW"

    new-array v3, v2, [I

    fill-array-data v3, :array_76

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v1, "KY"

    new-array v3, v2, [I

    fill-array-data v3, :array_77

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "KZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_78

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v1, "LA"

    new-array v3, v2, [I

    fill-array-data v3, :array_79

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "LB"

    new-array v3, v2, [I

    fill-array-data v3, :array_7a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v1, "LC"

    new-array v3, v2, [I

    fill-array-data v3, :array_7b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v1, "LI"

    new-array v3, v2, [I

    fill-array-data v3, :array_7c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v1, "LK"

    new-array v3, v2, [I

    fill-array-data v3, :array_7d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v1, "LR"

    new-array v3, v2, [I

    fill-array-data v3, :array_7e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v1, "LS"

    new-array v3, v2, [I

    fill-array-data v3, :array_7f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v1, "LT"

    new-array v3, v2, [I

    fill-array-data v3, :array_80

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v1, "LU"

    new-array v3, v2, [I

    fill-array-data v3, :array_81

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v1, "LV"

    new-array v3, v2, [I

    fill-array-data v3, :array_82

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v1, "LY"

    new-array v3, v2, [I

    fill-array-data v3, :array_83

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v1, "MA"

    new-array v3, v2, [I

    fill-array-data v3, :array_84

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v1, "MC"

    new-array v3, v2, [I

    fill-array-data v3, :array_85

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v1, "MD"

    new-array v3, v2, [I

    fill-array-data v3, :array_86

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v1, "ME"

    new-array v3, v2, [I

    fill-array-data v3, :array_87

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v1, "MF"

    new-array v3, v2, [I

    fill-array-data v3, :array_88

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v1, "MG"

    new-array v3, v2, [I

    fill-array-data v3, :array_89

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v1, "MH"

    new-array v3, v2, [I

    fill-array-data v3, :array_8a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v1, "MK"

    new-array v3, v2, [I

    fill-array-data v3, :array_8b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v1, "ML"

    new-array v3, v2, [I

    fill-array-data v3, :array_8c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v1, "MM"

    new-array v3, v2, [I

    fill-array-data v3, :array_8d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v1, "MN"

    new-array v3, v2, [I

    fill-array-data v3, :array_8e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, "MO"

    new-array v3, v2, [I

    fill-array-data v3, :array_8f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v1, "MP"

    new-array v3, v2, [I

    fill-array-data v3, :array_90

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v1, "MQ"

    new-array v3, v2, [I

    fill-array-data v3, :array_91

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "MR"

    new-array v3, v2, [I

    fill-array-data v3, :array_92

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v1, "MS"

    new-array v3, v2, [I

    fill-array-data v3, :array_93

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v1, "MT"

    new-array v3, v2, [I

    fill-array-data v3, :array_94

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v1, "MU"

    new-array v3, v2, [I

    fill-array-data v3, :array_95

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v1, "MV"

    new-array v3, v2, [I

    fill-array-data v3, :array_96

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v1, "MW"

    new-array v3, v2, [I

    fill-array-data v3, :array_97

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v1, "MX"

    new-array v3, v2, [I

    fill-array-data v3, :array_98

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v1, "MY"

    new-array v3, v2, [I

    fill-array-data v3, :array_99

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v1, "MZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_9a

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v1, "NA"

    new-array v3, v2, [I

    fill-array-data v3, :array_9b

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v1, "NC"

    new-array v3, v2, [I

    fill-array-data v3, :array_9c

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v1, "NE"

    new-array v3, v2, [I

    fill-array-data v3, :array_9d

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "NF"

    new-array v3, v2, [I

    fill-array-data v3, :array_9e

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "NG"

    new-array v3, v2, [I

    fill-array-data v3, :array_9f

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v1, "NI"

    new-array v3, v2, [I

    fill-array-data v3, :array_a0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v1, "NL"

    new-array v3, v2, [I

    fill-array-data v3, :array_a1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v1, "NO"

    new-array v3, v2, [I

    fill-array-data v3, :array_a2

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v1, "NP"

    new-array v3, v2, [I

    fill-array-data v3, :array_a3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v1, "NR"

    new-array v3, v2, [I

    fill-array-data v3, :array_a4

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "NU"

    new-array v3, v2, [I

    fill-array-data v3, :array_a5

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "NZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_a6

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v1, "OM"

    new-array v3, v2, [I

    fill-array-data v3, :array_a7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v1, "PA"

    new-array v3, v2, [I

    fill-array-data v3, :array_a8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v1, "PE"

    new-array v3, v2, [I

    fill-array-data v3, :array_a9

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v1, "PF"

    new-array v3, v2, [I

    fill-array-data v3, :array_aa

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v1, "PG"

    new-array v3, v2, [I

    fill-array-data v3, :array_ab

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v1, "PH"

    new-array v3, v2, [I

    fill-array-data v3, :array_ac

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v1, "PK"

    new-array v3, v2, [I

    fill-array-data v3, :array_ad

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v1, "PL"

    new-array v3, v2, [I

    fill-array-data v3, :array_ae

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v1, "PM"

    new-array v3, v2, [I

    fill-array-data v3, :array_af

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v1, "PR"

    new-array v3, v2, [I

    fill-array-data v3, :array_b0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v1, "PS"

    new-array v3, v2, [I

    fill-array-data v3, :array_b1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v1, "PT"

    new-array v3, v2, [I

    fill-array-data v3, :array_b2

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v1, "PW"

    new-array v3, v2, [I

    fill-array-data v3, :array_b3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v1, "PY"

    new-array v3, v2, [I

    fill-array-data v3, :array_b4

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "QA"

    new-array v3, v2, [I

    fill-array-data v3, :array_b5

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v1, "RE"

    new-array v3, v2, [I

    fill-array-data v3, :array_b6

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v1, "RO"

    new-array v3, v2, [I

    fill-array-data v3, :array_b7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string v1, "RS"

    new-array v3, v2, [I

    fill-array-data v3, :array_b8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v1, "RU"

    new-array v3, v2, [I

    fill-array-data v3, :array_b9

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v1, "RW"

    new-array v3, v2, [I

    fill-array-data v3, :array_ba

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string v1, "SA"

    new-array v3, v2, [I

    fill-array-data v3, :array_bb

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v1, "SB"

    new-array v3, v2, [I

    fill-array-data v3, :array_bc

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v1, "SC"

    new-array v3, v2, [I

    fill-array-data v3, :array_bd

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v1, "SD"

    new-array v3, v2, [I

    fill-array-data v3, :array_be

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v1, "SE"

    new-array v3, v2, [I

    fill-array-data v3, :array_bf

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v1, "SG"

    new-array v3, v2, [I

    fill-array-data v3, :array_c0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v1, "SH"

    new-array v3, v2, [I

    fill-array-data v3, :array_c1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v1, "SI"

    new-array v3, v2, [I

    fill-array-data v3, :array_c2

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v1, "SJ"

    new-array v3, v2, [I

    fill-array-data v3, :array_c3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v1, "SK"

    new-array v3, v2, [I

    fill-array-data v3, :array_c4

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v1, "SL"

    new-array v3, v2, [I

    fill-array-data v3, :array_c5

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v1, "SM"

    new-array v3, v2, [I

    fill-array-data v3, :array_c6

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "SN"

    new-array v3, v2, [I

    fill-array-data v3, :array_c7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v1, "SO"

    new-array v3, v2, [I

    fill-array-data v3, :array_c8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v1, "SR"

    new-array v3, v2, [I

    fill-array-data v3, :array_c9

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v1, "SS"

    new-array v3, v2, [I

    fill-array-data v3, :array_ca

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v1, "ST"

    new-array v3, v2, [I

    fill-array-data v3, :array_cb

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v1, "SV"

    new-array v3, v2, [I

    fill-array-data v3, :array_cc

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v1, "SX"

    new-array v3, v2, [I

    fill-array-data v3, :array_cd

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v1, "SY"

    new-array v3, v2, [I

    fill-array-data v3, :array_ce

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v1, "SZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_cf

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v1, "TC"

    new-array v3, v2, [I

    fill-array-data v3, :array_d0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v1, "TD"

    new-array v3, v2, [I

    fill-array-data v3, :array_d1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v1, "TG"

    new-array v3, v2, [I

    fill-array-data v3, :array_d2

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v1, "TH"

    new-array v3, v2, [I

    fill-array-data v3, :array_d3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v1, "TJ"

    new-array v3, v2, [I

    fill-array-data v3, :array_d4

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v1, "TL"

    new-array v3, v2, [I

    fill-array-data v3, :array_d5

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v1, "TM"

    new-array v3, v2, [I

    fill-array-data v3, :array_d6

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string v1, "TN"

    new-array v3, v2, [I

    fill-array-data v3, :array_d7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string v1, "TO"

    new-array v3, v2, [I

    fill-array-data v3, :array_d8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v1, "TR"

    new-array v3, v2, [I

    fill-array-data v3, :array_d9

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v1, "TT"

    new-array v3, v2, [I

    fill-array-data v3, :array_da

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string v1, "TV"

    new-array v3, v2, [I

    fill-array-data v3, :array_db

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v1, "TW"

    new-array v3, v2, [I

    fill-array-data v3, :array_dc

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v1, "TZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_dd

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string v1, "UA"

    new-array v3, v2, [I

    fill-array-data v3, :array_de

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v1, "UG"

    new-array v3, v2, [I

    fill-array-data v3, :array_df

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v1, "US"

    new-array v3, v2, [I

    fill-array-data v3, :array_e0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v1, "UY"

    new-array v3, v2, [I

    fill-array-data v3, :array_e1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v1, "UZ"

    new-array v3, v2, [I

    fill-array-data v3, :array_e2

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v1, "VA"

    new-array v3, v2, [I

    fill-array-data v3, :array_e3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v1, "VC"

    new-array v3, v2, [I

    fill-array-data v3, :array_e4

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v1, "VE"

    new-array v3, v2, [I

    fill-array-data v3, :array_e5

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v1, "VG"

    new-array v3, v2, [I

    fill-array-data v3, :array_e6

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v1, "VI"

    new-array v3, v2, [I

    fill-array-data v3, :array_e7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v1, "VN"

    new-array v3, v2, [I

    fill-array-data v3, :array_e8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v1, "VU"

    new-array v3, v2, [I

    fill-array-data v3, :array_e9

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v1, "WS"

    new-array v3, v2, [I

    fill-array-data v3, :array_ea

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v1, "XK"

    new-array v3, v2, [I

    fill-array-data v3, :array_eb

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v1, "YE"

    new-array v3, v2, [I

    fill-array-data v3, :array_ec

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v1, "YT"

    new-array v3, v2, [I

    fill-array-data v3, :array_ed

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v1, "ZA"

    new-array v3, v2, [I

    fill-array-data v3, :array_ee

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v1, "ZM"

    new-array v3, v2, [I

    fill-array-data v3, :array_ef

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v1, "ZW"

    new-array v2, v2, [I

    fill-array-data v2, :array_f0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0x4
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x4
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x4
        0x2
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x3
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x2
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x2
        0x1
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x4
        0x4
        0x3
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data

    :array_17
    .array-data 4
        0x4
        0x3
        0x4
        0x4
    .end array-data

    :array_18
    .array-data 4
        0x4
        0x3
        0x4
        0x4
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x2
        0x3
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x0
        0x3
        0x4
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x3
        0x3
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x0
        0x1
        0x4
    .end array-data

    :array_20
    .array-data 4
        0x3
        0x0
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x4
        0x4
        0x1
        0x2
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_23
    .array-data 4
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x3
        0x3
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_26
    .array-data 4
        0x4
        0x3
        0x3
        0x4
    .end array-data

    :array_27
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x3
        0x4
        0x3
        0x3
    .end array-data

    :array_2a
    .array-data 4
        0x2
        0x4
        0x1
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_2c
    .array-data 4
        0x3
        0x4
        0x2
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_2f
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_30
    .array-data 4
        0x4
        0x4
        0x3
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x3
        0x2
        0x4
    .end array-data

    :array_32
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_34
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x3
        0x4
        0x0
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x1
        0x0
        0x0
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_3c
    .array-data 4
        0x2
        0x4
        0x4
        0x2
    .end array-data

    :array_3d
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3e
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_3f
    .array-data 4
        0x2
        0x0
        0x3
        0x3
    .end array-data

    :array_40
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_42
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_43
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_44
    .array-data 4
        0x3
        0x1
        0x3
        0x3
    .end array-data

    :array_45
    .array-data 4
        0x4
        0x2
        0x2
        0x3
    .end array-data

    :array_46
    .array-data 4
        0x4
        0x2
        0x4
        0x0
    .end array-data

    :array_47
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x0
        0x3
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_4a
    .array-data 4
        0x0
        0x1
        0x3
        0x3
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x0
        0x4
        0x4
    .end array-data

    :array_4c
    .array-data 4
        0x1
        0x1
        0x0
        0x3
    .end array-data

    :array_4d
    .array-data 4
        0x1
        0x2
        0x4
        0x4
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4f
    .array-data 4
        0x3
        0x3
        0x3
        0x2
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_51
    .array-data 4
        0x2
        0x2
        0x3
        0x4
    .end array-data

    :array_52
    .array-data 4
        0x4
        0x3
        0x3
        0x2
    .end array-data

    :array_53
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_54
    .array-data 4
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_55
    .array-data 4
        0x4
        0x3
        0x3
        0x0
    .end array-data

    :array_56
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_57
    .array-data 4
        0x3
        0x3
        0x3
        0x4
    .end array-data

    :array_58
    .array-data 4
        0x1
        0x2
        0x4
        0x4
    .end array-data

    :array_59
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_5a
    .array-data 4
        0x3
        0x4
        0x1
        0x0
    .end array-data

    :array_5b
    .array-data 4
        0x0
        0x1
        0x4
        0x4
    .end array-data

    :array_5c
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_5e
    .array-data 4
        0x3
        0x4
        0x4
        0x3
    .end array-data

    :array_5f
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_60
    .array-data 4
        0x3
        0x2
        0x3
        0x4
    .end array-data

    :array_61
    .array-data 4
        0x0
        0x0
        0x3
        0x2
    .end array-data

    :array_62
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_63
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_65
    .array-data 4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_66
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_67
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_69
    .array-data 4
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_6a
    .array-data 4
        0x1
        0x0
        0x0
        0x1
    .end array-data

    :array_6b
    .array-data 4
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_6c
    .array-data 4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_6d
    .array-data 4
        0x0
        0x2
        0x2
        0x2
    .end array-data

    :array_6e
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_6f
    .array-data 4
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_70
    .array-data 4
        0x2
        0x0
        0x4
        0x4
    .end array-data

    :array_71
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_72
    .array-data 4
        0x4
        0x4
        0x3
        0x3
    .end array-data

    :array_73
    .array-data 4
        0x1
        0x0
        0x1
        0x4
    .end array-data

    :array_74
    .array-data 4
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_75
    .array-data 4
        0x0
        0x3
        0x0
        0x2
    .end array-data

    :array_76
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_77
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_78
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_79
    .array-data 4
        0x2
        0x1
        0x1
        0x0
    .end array-data

    :array_7a
    .array-data 4
        0x3
        0x2
        0x0
        0x0
    .end array-data

    :array_7b
    .array-data 4
        0x2
        0x1
        0x0
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_7d
    .array-data 4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_7e
    .array-data 4
        0x3
        0x4
        0x4
        0x1
    .end array-data

    :array_7f
    .array-data 4
        0x3
        0x3
        0x2
        0x0
    .end array-data

    :array_80
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_81
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_82
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_83
    .array-data 4
        0x4
        0x3
        0x4
        0x4
    .end array-data

    :array_84
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_85
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_86
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_87
    .array-data 4
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_88
    .array-data 4
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_89
    .array-data 4
        0x3
        0x4
        0x1
        0x3
    .end array-data

    :array_8a
    .array-data 4
        0x4
        0x0
        0x2
        0x3
    .end array-data

    :array_8b
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_8c
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_8d
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8e
    .array-data 4
        0x2
        0x3
        0x2
        0x4
    .end array-data

    :array_8f
    .array-data 4
        0x0
        0x0
        0x4
        0x4
    .end array-data

    :array_90
    .array-data 4
        0x0
        0x2
        0x4
        0x4
    .end array-data

    :array_91
    .array-data 4
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_92
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_93
    .array-data 4
        0x1
        0x4
        0x0
        0x3
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_95
    .array-data 4
        0x2
        0x2
        0x3
        0x4
    .end array-data

    :array_96
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_97
    .array-data 4
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_98
    .array-data 4
        0x2
        0x4
        0x3
        0x2
    .end array-data

    :array_99
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_9a
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_9b
    .array-data 4
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_9c
    .array-data 4
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_9d
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_9e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_9f
    .array-data 4
        0x3
        0x4
        0x3
        0x2
    .end array-data

    :array_a0
    .array-data 4
        0x3
        0x3
        0x3
        0x4
    .end array-data

    :array_a1
    .array-data 4
        0x0
        0x2
        0x4
        0x3
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_a3
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_a4
    .array-data 4
        0x4
        0x0
        0x4
        0x0
    .end array-data

    :array_a5
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_a7
    .array-data 4
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_a8
    .array-data 4
        0x1
        0x3
        0x3
        0x4
    .end array-data

    :array_a9
    .array-data 4
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_aa
    .array-data 4
        0x3
        0x1
        0x0
        0x1
    .end array-data

    :array_ab
    .array-data 4
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_ac
    .array-data 4
        0x3
        0x0
        0x4
        0x4
    .end array-data

    :array_ad
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_ae
    .array-data 4
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_af
    .array-data 4
        0x0
        0x2
        0x0
        0x0
    .end array-data

    :array_b0
    .array-data 4
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_b1
    .array-data 4
        0x3
        0x3
        0x1
        0x4
    .end array-data

    :array_b2
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_b3
    .array-data 4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_b4
    .array-data 4
        0x3
        0x1
        0x3
        0x3
    .end array-data

    :array_b5
    .array-data 4
        0x2
        0x3
        0x0
        0x1
    .end array-data

    :array_b6
    .array-data 4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_b7
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_b8
    .array-data 4
        0x1
        0x2
        0x0
        0x0
    .end array-data

    :array_b9
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_ba
    .array-data 4
        0x3
        0x4
        0x2
        0x4
    .end array-data

    :array_bb
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_bc
    .array-data 4
        0x4
        0x4
        0x3
        0x0
    .end array-data

    :array_bd
    .array-data 4
        0x4
        0x2
        0x0
        0x1
    .end array-data

    :array_be
    .array-data 4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_bf
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_c0
    .array-data 4
        0x1
        0x2
        0x3
        0x3
    .end array-data

    :array_c1
    .array-data 4
        0x4
        0x4
        0x2
        0x3
    .end array-data

    :array_c2
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_c3
    .array-data 4
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_c4
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_c5
    .array-data 4
        0x4
        0x3
        0x2
        0x4
    .end array-data

    :array_c6
    .array-data 4
        0x0
        0x0
        0x1
        0x3
    .end array-data

    :array_c7
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_c8
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_c9
    .array-data 4
        0x3
        0x2
        0x2
        0x4
    .end array-data

    :array_ca
    .array-data 4
        0x4
        0x2
        0x4
        0x2
    .end array-data

    :array_cb
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_cc
    .array-data 4
        0x2
        0x3
        0x3
        0x4
    .end array-data

    :array_cd
    .array-data 4
        0x2
        0x4
        0x1
        0x0
    .end array-data

    :array_ce
    .array-data 4
        0x4
        0x4
        0x1
        0x0
    .end array-data

    :array_cf
    .array-data 4
        0x3
        0x4
        0x2
        0x3
    .end array-data

    :array_d0
    .array-data 4
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_d1
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_d2
    .array-data 4
        0x3
        0x3
        0x1
        0x0
    .end array-data

    :array_d3
    .array-data 4
        0x1
        0x3
        0x4
        0x4
    .end array-data

    :array_d4
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_d5
    .array-data 4
        0x4
        0x2
        0x4
        0x4
    .end array-data

    :array_d6
    .array-data 4
        0x4
        0x1
        0x2
        0x3
    .end array-data

    :array_d7
    .array-data 4
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_d8
    .array-data 4
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_d9
    .array-data 4
        0x1
        0x2
        0x0
        0x1
    .end array-data

    :array_da
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_db
    .array-data 4
        0x4
        0x2
        0x2
        0x4
    .end array-data

    :array_dc
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_dd
    .array-data 4
        0x3
        0x3
        0x4
        0x3
    .end array-data

    :array_de
    .array-data 4
        0x0
        0x2
        0x1
        0x2
    .end array-data

    :array_df
    .array-data 4
        0x4
        0x3
        0x2
        0x3
    .end array-data

    :array_e0
    .array-data 4
        0x0
        0x1
        0x3
        0x3
    .end array-data

    :array_e1
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_e2
    .array-data 4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_e3
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_e4
    .array-data 4
        0x2
        0x1
        0x0
        0x0
    .end array-data

    :array_e5
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_e6
    .array-data 4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_e7
    .array-data 4
        0x1
        0x0
        0x2
        0x4
    .end array-data

    :array_e8
    .array-data 4
        0x0
        0x2
        0x4
        0x4
    .end array-data

    :array_e9
    .array-data 4
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_ea
    .array-data 4
        0x3
        0x2
        0x3
        0x1
    .end array-data

    :array_eb
    .array-data 4
        0x1
        0x2
        0x1
        0x0
    .end array-data

    :array_ec
    .array-data 4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_ed
    .array-data 4
        0x2
        0x0
        0x2
        0x3
    .end array-data

    :array_ee
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_ef
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_f0
    .array-data 4
        0x3
        0x3
        0x3
        0x1
    .end array-data
.end method

.method private getInitialBitrateEstimateForNetworkType(I)J
    .locals 3
    .param p1, "networkType"    # I

    .line 406
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 407
    .local v0, "initialBitrateEstimate":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 408
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 407
    :cond_0
    nop

    .line 410
    :goto_0
    if-nez v0, :cond_1

    .line 411
    const-wide/32 v1, 0xf4240

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 410
    :cond_1
    nop

    .line 413
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method static final synthetic lambda$maybeNotifyBandwidthSample$0$DefaultBandwidthMeter(IJJLandroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V
    .locals 6
    .param p0, "elapsedMs"    # I
    .param p1, "bytesTransferred"    # J
    .param p3, "bitrateEstimate"    # J
    .param p5, "listener"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;

    .line 402
    move-object v0, p5

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    return-void
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .locals 8
    .param p1, "elapsedMs"    # I
    .param p2, "bytesTransferred"    # J
    .param p4, "bitrateEstimate"    # J

    .line 397
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 398
    return-void

    .line 397
    :cond_0
    nop

    .line 400
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    .line 401
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    new-instance v7, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$$Lambda$0;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter$$Lambda$0;-><init>(IJJ)V

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    .line 403
    return-void
.end method

.method private declared-synchronized onConnectivityAction()V
    .locals 10

    monitor-enter p0

    .line 366
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkTypeOverride:I

    goto :goto_0

    .line 368
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    :goto_0
    nop

    .line 369
    .local v0, "networkType":I
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    .line 370
    monitor-exit p0

    return-void

    .line 373
    :cond_2
    :try_start_1
    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkType:I

    .line 374
    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 382
    :cond_3
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 383
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 384
    .local v2, "nowMs":J
    iget v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v4, :cond_4

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v4, v2, v4

    long-to-int v1, v4

    move v5, v1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 385
    .local v5, "sampleElapsedTimeMs":I
    :goto_1
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 388
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    .line 389
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 390
    iput-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    .line 391
    iput-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 392
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media2/exoplayer/external/util/SlidingPercentile;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 374
    .end local v2    # "nowMs":J
    .end local v5    # "sampleElapsedTimeMs":I
    :cond_5
    :goto_2
    nop

    .line 378
    monitor-exit p0

    return-void

    .line 365
    .end local v0    # "networkType":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;

    .line 306
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->addListener(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public declared-synchronized getBitrateEstimate()J
    .locals 2

    monitor-enter p0

    .line 295
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransferListener()Landroidx/media2/exoplayer/external/upstream/TransferListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 301
    return-object p0
.end method

.method public declared-synchronized onBytesTransferred(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ZI)V
    .locals 4
    .param p1, "source"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "isNetwork"    # Z
    .param p4, "bytes"    # I

    monitor-enter p0

    .line 334
    if-nez p3, :cond_0

    .line 335
    monitor-exit p0

    return-void

    .line 337
    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 333
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    .end local p1    # "source":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .end local p2    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local p3    # "isNetwork":Z
    .end local p4    # "bytes":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V
    .locals 12
    .param p1, "source"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "isNetwork"    # Z

    monitor-enter p0

    .line 342
    if-nez p3, :cond_0

    .line 343
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->streamCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 346
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 347
    .local v2, "nowMs":J
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 348
    .local v0, "sampleElapsedTimeMs":I
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 349
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    .line 350
    if-lez v0, :cond_4

    .line 351
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-float v4, v4

    const/high16 v5, 0x45fa0000    # 8000.0f

    mul-float v4, v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 352
    .local v4, "bitsPerSecond":F
    iget-object v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media2/exoplayer/external/util/SlidingPercentile;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6, v4}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->addSample(IF)V

    .line 353
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    const-wide/16 v7, 0x7d0

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    const-wide/32 v7, 0x80000

    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 355
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    :cond_3
    :goto_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media2/exoplayer/external/util/SlidingPercentile;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->getPercentile(F)F

    move-result v5

    float-to-long v5, v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 357
    :goto_2
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v10, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v6, p0

    move v7, v0

    invoke-direct/range {v6 .. v11}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 358
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    .line 359
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    goto :goto_3

    .line 350
    .end local v4    # "bitsPerSecond":F
    :cond_4
    nop

    .line 361
    :goto_3
    iget v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->streamCount:I

    sub-int/2addr v4, v1

    iput v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 341
    .end local v0    # "sampleElapsedTimeMs":I
    .end local v2    # "nowMs":J
    .end local p1    # "source":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .end local p2    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local p3    # "isNetwork":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTransferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V
    .locals 0
    .param p1, "source"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "isNetwork"    # Z

    .line 317
    return-void
.end method

.method public declared-synchronized onTransferStart(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V
    .locals 2
    .param p1, "source"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "isNetwork"    # Z

    monitor-enter p0

    .line 322
    if-nez p3, :cond_0

    .line 323
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    goto :goto_0

    .line 325
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    :cond_1
    nop

    .line 328
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 321
    .end local p1    # "source":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .end local p2    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local p3    # "isNetwork":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeEventListener(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V
    .locals 1
    .param p1, "eventListener"    # Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;

    .line 311
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->eventDispatcher:Landroidx/media2/exoplayer/external/util/EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public declared-synchronized setNetworkTypeOverride(I)V
    .locals 1
    .param p1, "networkType"    # I

    monitor-enter p0

    .line 288
    :try_start_0
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkTypeOverride:I

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z

    .line 290
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->onConnectivityAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 287
    .end local p0    # "this":Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;
    .end local p1    # "networkType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
