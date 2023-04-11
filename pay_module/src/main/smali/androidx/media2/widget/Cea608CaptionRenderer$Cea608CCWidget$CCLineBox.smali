.class Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "Cea608CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I

.field final synthetic this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .line 153
    iput-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    .line 154
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 148
    const/4 p1, -0x1

    iput p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 149
    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 151
    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 155
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setGravity(I)V

    .line 156
    invoke-virtual {p0, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundColor(I)V

    .line 157
    invoke-virtual {p0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 158
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setVisibility(I)V

    .line 161
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 164
    .local p1, "res":Landroid/content/res/Resources;
    sget v0, Landroidx/media2/widget/R$dimen;->subtitle_outline_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 166
    sget v0, Landroidx/media2/widget/R$dimen;->subtitle_shadow_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 168
    sget v0, Landroidx/media2/widget/R$dimen;->subtitle_shadow_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 170
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 229
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 231
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 232
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    .line 233
    .local v2, "previousJoin":Landroid/graphics/Paint$Join;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    .line 235
    .local v3, "previousWidth":F
    iget v4, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 236
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 238
    iget v4, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 241
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget v4, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 247
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 250
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 252
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 254
    iget v4, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 255
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 259
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 261
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 262
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 264
    iget v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 265
    .local v2, "raised":Z
    :goto_0
    const/4 v4, -0x1

    if-eqz v2, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 266
    .local v5, "colorUp":I
    :goto_1
    if-eqz v2, :cond_2

    iget v4, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    nop

    .line 267
    .local v4, "colorDown":I
    :cond_2
    iget v6, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v6, v7

    .line 270
    .local v7, "offset":F
    neg-float v8, v7

    neg-float v9, v7

    invoke-virtual {p0, v6, v8, v9, v5}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 271
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-direct {p0, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 277
    iget v3, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v3, v7, v7, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget v3, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 285
    return-void
.end method

.method private setBackgroundSpans(I)V
    .locals 5
    .param p1, "color"    # I

    .line 288
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 289
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 290
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 291
    .local v1, "spannable":Landroid/text/Spannable;
    const/4 v2, 0x0

    .line 292
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;

    .line 291
    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;

    .line 293
    .local v2, "bgSpans":[Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 294
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 289
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "bgSpans":[Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;
    .end local v3    # "i":I
    :cond_1
    nop

    .line 297
    :goto_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 211
    iget v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 220
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    .line 225
    :goto_0
    return-void

    .line 211
    :cond_2
    :goto_1
    nop

    .line 215
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 216
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 189
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    .line 190
    .local v0, "fontSize":F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setTextSize(IF)V

    .line 192
    const v2, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 193
    const v2, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 194
    iget v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iput v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 197
    invoke-virtual {p0, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setScaleX(F)V

    .line 198
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "1234567890123456789012345678901234"

    const-string v4, "1234567890123456789012345678901234"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    iget-object v5, v5, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 199
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    iget-object v1, v1, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 200
    .local v1, "actualTextWidth":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 201
    .local v2, "requiredTextWidth":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 202
    div-float v3, v2, v1

    invoke-virtual {p0, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setScaleX(F)V

    goto :goto_0

    .line 204
    :cond_0
    const-string v3, "Cea608CaptionRenderer"

    const-string v4, "onMeasure(): Paint#getTextBounds() returned zero width. Ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 207
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 3
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 173
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 174
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 175
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 176
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 178
    iget v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 179
    iget v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    iget v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v0, v1, v1, v2}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 182
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 184
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->invalidate()V

    .line 185
    return-void
.end method
