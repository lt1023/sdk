.class public Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnalyticsCollector(Landroidx/media2/exoplayer/external/Player;Landroidx/media2/exoplayer/external/util/Clock;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
    .locals 1
    .param p1, "player"    # Landroidx/media2/exoplayer/external/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "clock"    # Landroidx/media2/exoplayer/external/util/Clock;

    .line 89
    new-instance v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;-><init>(Landroidx/media2/exoplayer/external/Player;Landroidx/media2/exoplayer/external/util/Clock;)V

    return-object v0
.end method
