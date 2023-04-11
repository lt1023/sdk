.class public final Landroidx/media2/exoplayer/external/drm/WidevineUtil;
.super Ljava/lang/Object;
.source "WidevineUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final PROPERTY_LICENSE_DURATION_REMAINING:Ljava/lang/String; = "LicenseDurationRemaining"

.field public static final PROPERTY_PLAYBACK_DURATION_REMAINING:Ljava/lang/String; = "PlaybackDurationRemaining"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 59
    .local p0, "keyStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 61
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 62
    :cond_0
    nop

    .line 67
    .end local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :cond_1
    nop

    .line 69
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public static getLicenseDurationRemainingSec(Landroidx/media2/exoplayer/external/drm/DrmSession;)Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "*>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 50
    .local p0, "drmSession":Landroidx/media2/exoplayer/external/drm/DrmSession;, "Landroidx/media2/exoplayer/external/drm/DrmSession<*>;"
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->queryKeyStatus()Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "keyStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    return-object v1

    .line 54
    :cond_0
    new-instance v1, Landroid/util/Pair;

    const-string v2, "LicenseDurationRemaining"

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/drm/WidevineUtil;->getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "PlaybackDurationRemaining"

    .line 55
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/drm/WidevineUtil;->getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-object v1
.end method
