.class public final Landroidx/core/text/LocaleKt;
.super Ljava/lang/Object;
.source "Locale.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c7\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "layoutDirection",
        "",
        "Ljava/util/Locale;",
        "getLayoutDirection",
        "(Ljava/util/Locale;)I",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final getLayoutDirection(Ljava/util/Locale;)I
    .locals 2
    .param p0, "$this$layoutDirection"    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$getLayoutDirection":I
    const-string v1, "$this$layoutDirection"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    return v1
.end method