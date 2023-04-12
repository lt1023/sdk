.class Landroidx/media2/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media2/widget/SubtitleView;->mSpacingMult:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/widget/SubtitleView;->mSpacingAdd:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    .line 91
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/media2/widget/R$dimen;->subtitle_corner_radius:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/media2/widget/SubtitleView;->mCornerRadius:F

    .line 94
    sget v1, Landroidx/media2/widget/R$dimen;->subtitle_outline_width:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/media2/widget/SubtitleView;->mOutlineWidth:F

    .line 96
    sget v1, Landroidx/media2/widget/R$dimen;->subtitle_shadow_radius:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    .line 98
    sget v1, Landroidx/media2/widget/R$dimen;->subtitle_shadow_offset:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetX:F

    .line 100
    iget v1, p0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetX:F

    iput v1, p0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetY:F

    .line 102
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 103
    iget-object v1, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 104
    iget-object v1, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Landroidx/media2/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    return-void
.end method

.method private computeMeasurements(I)Z
    .locals 13
    .param p1, "maxWidth"    # I

    .line 214
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    .line 215
    return v1

    .line 214
    :cond_0
    nop

    .line 219
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 220
    .local v0, "paddingX":I
    sub-int/2addr p1, v0

    .line 221
    const/4 v2, 0x0

    if-gtz p1, :cond_1

    .line 222
    return v2

    .line 228
    :cond_1
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 229
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 230
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 231
    iget-object v3, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    .line 232
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v2, v4, v5, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 233
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media2/widget/SubtitleView;->mSpacingAdd:F

    iget v4, p0, Landroidx/media2/widget/SubtitleView;->mSpacingMult:F

    .line 234
    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 235
    .local v2, "builder":Landroid/text/StaticLayout$Builder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    .line 236
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    goto :goto_0

    .line 235
    :cond_2
    nop

    .line 238
    :goto_0
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 239
    .end local v2    # "builder":Landroid/text/StaticLayout$Builder;
    goto :goto_1

    .line 240
    :cond_3
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    iget v9, p0, Landroidx/media2/widget/SubtitleView;->mSpacingMult:F

    iget v10, p0, Landroidx/media2/widget/SubtitleView;->mSpacingAdd:F

    const/4 v11, 0x1

    move-object v2, v12

    move v7, p1

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, p0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 243
    :goto_1
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 249
    .local v2, "layout":Landroid/text/StaticLayout;
    if-nez v2, :cond_0

    .line 250
    return-void

    .line 253
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 254
    .local v3, "saveCount":I
    iget v4, v0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    .line 255
    .local v4, "innerPaddingX":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/SubtitleView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/SubtitleView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 258
    .local v5, "lineCount":I
    iget-object v6, v0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 259
    .local v6, "textPaint":Landroid/graphics/Paint;
    iget-object v7, v0, Landroidx/media2/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 260
    .local v7, "paint":Landroid/graphics/Paint;
    iget-object v8, v0, Landroidx/media2/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 262
    .local v8, "bounds":Landroid/graphics/RectF;
    iget v9, v0, Landroidx/media2/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_2

    .line 263
    iget v9, v0, Landroidx/media2/widget/SubtitleView;->mCornerRadius:F

    .line 264
    .local v9, "cornerRadius":F
    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    .line 266
    .local v11, "previousBottom":F
    iget v12, v0, Landroidx/media2/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v5, :cond_1

    .line 270
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    int-to-float v14, v4

    sub-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->left:F

    .line 271
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v4

    add-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->right:F

    .line 272
    iput v11, v8, Landroid/graphics/RectF;->top:F

    .line 273
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v13

    int-to-float v13, v13

    iput v13, v8, Landroid/graphics/RectF;->bottom:F

    .line 274
    iget v11, v8, Landroid/graphics/RectF;->bottom:F

    .line 276
    invoke-virtual {v1, v8, v9, v9, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 269
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 262
    .end local v9    # "cornerRadius":F
    .end local v11    # "previousBottom":F
    .end local v12    # "i":I
    :cond_2
    nop

    .line 280
    :goto_1
    iget v9, v0, Landroidx/media2/widget/SubtitleView;->mEdgeType:I

    .line 281
    .local v9, "edgeType":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    .line 282
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 283
    iget v11, v0, Landroidx/media2/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 284
    iget v11, v0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    sget-object v11, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    move/from16 v16, v4

    goto :goto_5

    .line 289
    :cond_3
    const/4 v12, 0x2

    if-ne v9, v12, :cond_4

    .line 290
    iget v11, v0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    iget v12, v0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetX:F

    iget v13, v0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetY:F

    iget v14, v0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move/from16 v16, v4

    goto :goto_5

    .line 291
    :cond_4
    const/4 v12, 0x3

    if-eq v9, v12, :cond_6

    const/4 v13, 0x4

    if-ne v9, v13, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v16, v4

    goto :goto_5

    .line 293
    :cond_6
    :goto_2
    if-ne v9, v12, :cond_7

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 294
    .local v11, "raised":Z
    :goto_3
    const/4 v12, -0x1

    if-eqz v11, :cond_8

    const/4 v13, -0x1

    goto :goto_4

    :cond_8
    iget v13, v0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    .line 295
    .local v13, "colorUp":I
    :goto_4
    if-eqz v11, :cond_9

    iget v12, v0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    nop

    .line 296
    .local v12, "colorDown":I
    :cond_9
    iget v14, v0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 298
    .local v14, "offset":F
    iget v15, v0, Landroidx/media2/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget v15, v0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    neg-float v10, v14

    move/from16 v16, v4

    .end local v4    # "innerPaddingX":I
    .local v16, "innerPaddingX":I
    neg-float v4, v14

    invoke-virtual {v6, v15, v10, v4, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 302
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 304
    iget v4, v0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    invoke-virtual {v6, v4, v14, v14, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 307
    .end local v11    # "raised":Z
    .end local v12    # "colorDown":I
    .end local v13    # "colorUp":I
    .end local v14    # "offset":F
    :goto_5
    iget v4, v0, Landroidx/media2/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 312
    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v4, v4, v4, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 313
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 314
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 208
    sub-int v0, p4, p2

    .line 210
    .local v0, "width":I
    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleView;->computeMeasurements(I)Z

    .line 211
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 193
    .local v0, "widthSpec":I
    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 197
    .local v1, "layout":Landroid/text/StaticLayout;
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 198
    .local v2, "paddingX":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 199
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 200
    .local v4, "height":I
    invoke-virtual {p0, v3, v4}, Landroidx/media2/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 201
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "paddingX":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    goto :goto_0

    .line 202
    :cond_0
    const/high16 v1, 0x1000000

    invoke-virtual {p0, v1, v1}, Landroidx/media2/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 204
    :goto_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .line 179
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 180
    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 184
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    goto :goto_0

    .line 179
    :cond_0
    nop

    .line 187
    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 133
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mBackgroundColor:I

    .line 135
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    .line 136
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 145
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    .line 147
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    .line 148
    return-void
.end method

.method public setEdgeType(I)V
    .locals 0
    .param p1, "edgeType"    # I

    .line 139
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mEdgeType:I

    .line 141
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    .line 142
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 126
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mForegroundColor:I

    .line 128
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    .line 129
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 111
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Landroidx/media2/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 117
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 121
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 122
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    .line 123
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .line 156
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 158
    const/high16 v0, 0x3e000000    # 0.125f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 162
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 163
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    goto :goto_0

    .line 156
    :cond_0
    nop

    .line 165
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 168
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 173
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 174
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    goto :goto_0

    .line 168
    :cond_0
    nop

    .line 176
    :goto_0
    return-void
.end method