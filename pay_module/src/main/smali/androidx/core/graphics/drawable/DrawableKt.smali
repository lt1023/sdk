.class public final Landroidx/core/graphics/drawable/DrawableKt;
.super Ljava/lang/Object;
.source "Drawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,82:1\n38#2:83\n49#2:84\n60#2:85\n71#2:86\n*E\n*S KotlinDebug\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n*L\n58#1:83\n58#1:84\n58#1:85\n58#1:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\u0008\u001a\u00020\t*\u00020\u00022\u0008\u0008\u0003\u0010\n\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0003\u0010\r\u001a\u00020\u0004\u00a8\u0006\u000e"
    }
    d2 = {
        "toBitmap",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/Drawable;",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "updateBounds",
        "",
        "left",
        "top",
        "right",
        "bottom",
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
.method public static final toBitmap(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "$this$toBitmap"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "width"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2, "height"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$toBitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 48
    if-eqz p3, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "bitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    if-ne p1, v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "bitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 51
    :cond_2
    nop

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "Bitmap.createScaledBitma\u2026map, width, height, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 47
    :cond_3
    nop

    .line 58
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$component1$iv":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 83
    .local v2, "$i$f$component1":I
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 58
    .end local v1    # "$this$component1$iv":Landroid/graphics/Rect;
    .end local v2    # "$i$f$component1":I
    move-object v2, v0

    .local v2, "$this$component2$iv":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 84
    .local v3, "$i$f$component2":I
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 58
    .end local v2    # "$this$component2$iv":Landroid/graphics/Rect;
    .end local v3    # "$i$f$component2":I
    move-object v3, v0

    .local v3, "$this$component3$iv":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 85
    .local v4, "$i$f$component3":I
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 58
    .end local v3    # "$this$component3$iv":Landroid/graphics/Rect;
    .end local v4    # "$i$f$component3":I
    nop

    .local v0, "$this$component4$iv":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 86
    .local v4, "$i$f$component4":I
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 58
    .end local v0    # "$this$component4$iv":Landroid/graphics/Rect;
    .end local v4    # "$i$f$component4":I
    nop

    .line 60
    .local v0, "oldBottom":I
    .local v1, "oldLeft":I
    .local v2, "oldTop":I
    .local v3, "oldRight":I
    if-eqz p3, :cond_4

    move-object v4, p3

    goto :goto_2

    :cond_4
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 61
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    const-string v5, "bitmap"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method public static synthetic toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    goto :goto_0

    .line 43
    :cond_1
    nop

    .line 44
    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 45
    const/4 p3, 0x0

    check-cast p3, Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 44
    :cond_2
    nop

    .line 45
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final updateBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .param p0, "$this$updateBounds"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "left"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2, "top"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3, "right"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4, "bottom"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const-string v0, "$this$updateBounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    return-void
.end method

.method public static synthetic updateBounds$default(Landroid/graphics/drawable/Drawable;IIIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 75
    :cond_1
    nop

    .line 76
    :goto_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 76
    :cond_2
    nop

    .line 77
    :goto_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 77
    :cond_3
    nop

    .line 78
    :goto_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableKt;->updateBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method