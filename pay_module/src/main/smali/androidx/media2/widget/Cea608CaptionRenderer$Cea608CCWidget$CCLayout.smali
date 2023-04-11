.class Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "Cea608CaptionRenderer.java"

# interfaces
.implements Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCLayout"
.end annotation


# static fields
.field private static final MAX_ROWS:I = 0xf

.field private static final SAFE_AREA_RATIO:F = 0.9f


# instance fields
.field private final mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

.field final synthetic this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .line 306
    iput-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    .line 307
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 304
    const/16 v0, 0xf

    new-array v1, v0, [Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    iput-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    .line 308
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->setGravity(I)V

    .line 309
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->setOrientation(I)V

    .line 310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 311
    iget-object v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    new-instance v3, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;-><init>(Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 312
    iget-object v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->addView(Landroid/view/View;II)V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 369
    sub-int v0, p4, p2

    .line 370
    .local v0, "viewPortWidth":I
    sub-int v1, p5, p3

    .line 373
    .local v1, "viewPortHeight":I
    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x4

    if-lt v2, v3, :cond_0

    .line 374
    mul-int/lit8 v2, v1, 0x4

    div-int/lit8 v2, v2, 0x3

    .line 375
    .local v2, "safeWidth":I
    move v3, v1

    goto :goto_0

    .line 377
    .end local v2    # "safeWidth":I
    :cond_0
    move v2, v0

    .line 378
    .restart local v2    # "safeWidth":I
    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x4

    .line 380
    .local v3, "safeHeight":I
    :goto_0
    int-to-float v4, v2

    const v5, 0x3f666666    # 0.9f

    mul-float v4, v4, v5

    float-to-int v2, v4

    .line 381
    int-to-float v4, v3

    mul-float v4, v4, v5

    float-to-int v3, v4

    .line 382
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    .line 383
    .local v4, "left":I
    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    .line 385
    .local v5, "top":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v7, 0xf

    if-ge v6, v7, :cond_1

    .line 386
    move-object v8, p0

    iget-object v9, v8, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v9, v9, v6

    mul-int v10, v3, v6

    div-int/2addr v10, v7

    add-int/2addr v10, v5

    add-int v11, v4, v2

    add-int/lit8 v12, v6, 0x1

    mul-int v12, v12, v3

    div-int/2addr v12, v7

    add-int/2addr v12, v5

    invoke-virtual {v9, v4, v10, v11, v12}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->layout(IIII)V

    .line 385
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v8, p0

    .line 392
    .end local v6    # "i":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 341
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 343
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->getMeasuredWidth()I

    move-result v0

    .line 344
    .local v0, "safeWidth":I
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->getMeasuredHeight()I

    move-result v1

    .line 347
    .local v1, "safeHeight":I
    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x4

    if-lt v2, v3, :cond_0

    .line 348
    mul-int/lit8 v2, v1, 0x4

    div-int/lit8 v0, v2, 0x3

    goto :goto_0

    .line 350
    :cond_0
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v2, 0x4

    .line 352
    :goto_0
    int-to-float v2, v0

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    float-to-int v0, v2

    .line 353
    int-to-float v2, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    .line 355
    div-int/lit8 v2, v1, 0xf

    .line 356
    .local v2, "lineHeight":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 358
    .local v4, "lineHeightMeasureSpec":I
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 361
    .local v3, "lineWidthMeasureSpec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0xf

    if-ge v5, v6, :cond_1

    .line 362
    iget-object v6, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->measure(II)V

    .line 361
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 364
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .param p1, "fontScale"    # F

    .line 326
    return-void
.end method

.method update([Landroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "textBuffer"    # [Landroid/text/SpannableStringBuilder;

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 330
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 332
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setVisibility(I)V

    goto :goto_1

    .line 334
    :cond_0
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setVisibility(I)V

    .line 329
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
