.class public final Landroidx/media2/exoplayer/external/util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;

    .line 42
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 43
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    nop

    .line 45
    :goto_0
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .locals 0
    .param p0, "sectionName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 60
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static endSection()V
    .locals 2

    .line 53
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 54
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSectionV18()V

    goto :goto_0

    .line 53
    :cond_0
    nop

    .line 56
    :goto_0
    return-void
.end method

.method private static endSectionV18()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 65
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    return-void
.end method
