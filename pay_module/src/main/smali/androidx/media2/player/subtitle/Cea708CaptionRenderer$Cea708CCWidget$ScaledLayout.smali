.class Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaledLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScaledLayout"


# instance fields
.field private mRectArray:[Landroid/graphics/Rect;

.field private final mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$1"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
    .param p2, "context"    # Landroid/content/Context;

    .line 178
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    .line 179
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$1;

    invoke-direct {v0, p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$1;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;)V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    .line 180
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 227
    instance-of v0, p1, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 371
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v0

    .line 372
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v1

    .line 373
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v2

    .line 374
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 375
    invoke-virtual {p0, v3}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 376
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 377
    iget-object v5, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    array-length v6, v5

    if-lt v3, v6, :cond_0

    .line 378
    goto :goto_2

    .line 380
    :cond_0
    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    .line 381
    .local v5, "childLeft":I
    iget-object v6, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 382
    .local v6, "childTop":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 383
    .local v7, "saveCount":I
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 385
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 376
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v7    # "saveCount":I
    :cond_1
    nop

    .line 374
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 222
    new-instance v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 349
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v0

    .line 350
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v1

    .line 351
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v2

    .line 352
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 353
    invoke-virtual {p0, v3}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 354
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 355
    iget-object v5, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    .line 356
    .local v5, "childLeft":I
    iget-object v6, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 357
    .local v6, "childTop":I
    iget-object v7, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    .line 358
    .local v7, "childBottom":I
    iget-object v8, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v1

    .line 364
    .local v8, "childRight":I
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 354
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v7    # "childBottom":I
    .end local v8    # "childRight":I
    :cond_0
    nop

    .line 352
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 232
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 233
    .local v1, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 234
    .local v2, "heightSpecSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 235
    .local v3, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 239
    .local v4, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v5

    .line 240
    .local v5, "count":I
    new-array v6, v5, [Landroid/graphics/Rect;

    iput-object v6, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 241
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_8

    .line 242
    invoke-virtual {v0, v6}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 243
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 245
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v9, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    if-eqz v10, :cond_7

    .line 249
    move-object v10, v9

    check-cast v10, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v10, v10, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 250
    .local v10, "scaleStartRow":F
    move-object v11, v9

    check-cast v11, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v11, v11, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 251
    .local v11, "scaleEndRow":F
    move-object v12, v9

    check-cast v12, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v12, v12, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 252
    .local v12, "scaleStartCol":F
    move-object v13, v9

    check-cast v13, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v13, v13, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    .line 253
    .local v13, "scaleEndCol":F
    const/4 v14, 0x0

    cmpg-float v15, v10, v14

    if-ltz v15, :cond_6

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v16, v10, v15

    if-gtz v16, :cond_6

    .line 257
    cmpg-float v16, v11, v10

    if-ltz v16, :cond_5

    cmpl-float v16, v10, v15

    if-gtz v16, :cond_5

    .line 261
    cmpg-float v14, v13, v14

    if-ltz v14, :cond_4

    cmpl-float v14, v13, v15

    if-gtz v14, :cond_4

    .line 265
    cmpg-float v14, v13, v12

    if-ltz v14, :cond_3

    cmpl-float v14, v13, v15

    if-gtz v14, :cond_3

    .line 274
    iget-object v14, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    int-to-float v7, v3

    mul-float v7, v7, v12

    float-to-int v7, v7

    move-object/from16 v17, v9

    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v17, "params":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v9, v4

    mul-float v9, v9, v10

    float-to-int v9, v9

    move/from16 v18, v1

    .end local v1    # "widthSpecSize":I
    .local v18, "widthSpecSize":I
    int-to-float v1, v3

    mul-float v1, v1, v13

    float-to-int v1, v1

    move/from16 v19, v2

    .end local v2    # "heightSpecSize":I
    .local v19, "heightSpecSize":I
    int-to-float v2, v4

    mul-float v2, v2, v11

    float-to-int v2, v2

    invoke-direct {v15, v7, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v15, v14, v6

    .line 276
    int-to-float v1, v3

    sub-float v2, v13, v12

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 278
    .local v1, "childWidthSpec":I
    const/4 v7, 0x0

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 279
    .local v9, "childHeightSpec":I
    invoke-virtual {v8, v1, v9}, Landroid/view/View;->measure(II)V

    .line 284
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v14, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v7, v14, :cond_2

    .line 285
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v14, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v7, v14

    .line 286
    .local v7, "overflowedHeight":I
    add-int/lit8 v14, v7, 0x1

    div-int/lit8 v14, v14, 0x2

    .line 287
    .end local v7    # "overflowedHeight":I
    .local v14, "overflowedHeight":I
    iget-object v7, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v14

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    .line 288
    iget-object v7, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v15, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v14

    iput v15, v7, Landroid/graphics/Rect;->top:I

    .line 289
    iget-object v7, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_0

    .line 290
    iget-object v7, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v6

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v2

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    .line 291
    iget-object v2, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    const/4 v7, 0x0

    iput v7, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 289
    :cond_0
    nop

    .line 293
    :goto_1
    iget-object v2, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v4, :cond_1

    .line 294
    iget-object v2, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget-object v15, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v15, v15, v6

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v4

    sub-int/2addr v7, v15

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 295
    iget-object v2, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 293
    :cond_1
    goto :goto_2

    .line 284
    .end local v14    # "overflowedHeight":I
    :cond_2
    nop

    .line 298
    :goto_2
    int-to-float v2, v4

    sub-float v7, v11, v10

    mul-float v2, v2, v7

    float-to-int v2, v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 300
    .end local v9    # "childHeightSpec":I
    .local v2, "childHeightSpec":I
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 241
    .end local v1    # "childWidthSpec":I
    .end local v2    # "childHeightSpec":I
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "scaleStartRow":F
    .end local v11    # "scaleEndRow":F
    .end local v12    # "scaleStartCol":F
    .end local v13    # "scaleEndCol":F
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    goto/16 :goto_0

    .line 265
    .end local v18    # "widthSpecSize":I
    .end local v19    # "heightSpecSize":I
    .local v1, "widthSpecSize":I
    .local v2, "heightSpecSize":I
    .restart local v8    # "child":Landroid/view/View;
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v10    # "scaleStartRow":F
    .restart local v11    # "scaleEndRow":F
    .restart local v12    # "scaleStartCol":F
    .restart local v13    # "scaleEndCol":F
    :cond_3
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    .line 266
    .end local v1    # "widthSpecSize":I
    .end local v2    # "heightSpecSize":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "widthSpecSize":I
    .restart local v19    # "heightSpecSize":I
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "widthSpecSize":I
    .end local v19    # "heightSpecSize":I
    .restart local v1    # "widthSpecSize":I
    .restart local v2    # "heightSpecSize":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    .line 262
    .end local v1    # "widthSpecSize":I
    .end local v2    # "heightSpecSize":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "widthSpecSize":I
    .restart local v19    # "heightSpecSize":I
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "widthSpecSize":I
    .end local v19    # "heightSpecSize":I
    .restart local v1    # "widthSpecSize":I
    .restart local v2    # "heightSpecSize":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    .line 258
    .end local v1    # "widthSpecSize":I
    .end local v2    # "heightSpecSize":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "widthSpecSize":I
    .restart local v19    # "heightSpecSize":I
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "widthSpecSize":I
    .end local v19    # "heightSpecSize":I
    .restart local v1    # "widthSpecSize":I
    .restart local v2    # "heightSpecSize":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    .line 254
    .end local v1    # "widthSpecSize":I
    .end local v2    # "heightSpecSize":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "widthSpecSize":I
    .restart local v19    # "heightSpecSize":I
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    .end local v10    # "scaleStartRow":F
    .end local v11    # "scaleEndRow":F
    .end local v12    # "scaleStartCol":F
    .end local v13    # "scaleEndCol":F
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "widthSpecSize":I
    .end local v19    # "heightSpecSize":I
    .restart local v1    # "widthSpecSize":I
    .restart local v2    # "heightSpecSize":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v17, v9

    .end local v1    # "widthSpecSize":I
    .end local v2    # "heightSpecSize":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "widthSpecSize":I
    .restart local v19    # "heightSpecSize":I
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v8    # "child":Landroid/view/View;
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "widthSpecSize":I
    .end local v19    # "heightSpecSize":I
    .restart local v1    # "widthSpecSize":I
    .restart local v2    # "heightSpecSize":I
    :cond_8
    move/from16 v18, v1

    move/from16 v19, v2

    .line 305
    .end local v1    # "widthSpecSize":I
    .end local v2    # "heightSpecSize":I
    .end local v6    # "i":I
    .restart local v18    # "widthSpecSize":I
    .restart local v19    # "heightSpecSize":I
    const/4 v1, 0x0

    .line 306
    .local v1, "visibleRectCount":I
    new-array v2, v5, [I

    .line 307
    .local v2, "visibleRectGroup":[I
    new-array v6, v5, [Landroid/graphics/Rect;

    .line 308
    .local v6, "visibleRectArray":[Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v5, :cond_a

    .line 309
    invoke-virtual {v0, v7}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_9

    .line 310
    aput v1, v2, v1

    .line 311
    iget-object v8, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v7

    aput-object v8, v6, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 309
    :cond_9
    nop

    .line 308
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 315
    .end local v7    # "i":I
    :cond_a
    iget-object v7, v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    const/4 v8, 0x0

    invoke-static {v6, v8, v1, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 318
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    add-int/lit8 v8, v1, -0x1

    if-ge v7, v8, :cond_d

    .line 319
    add-int/lit8 v8, v7, 0x1

    .local v8, "j":I
    :goto_6
    if-ge v8, v1, :cond_c

    .line 320
    aget-object v9, v6, v7

    aget-object v10, v6, v8

    invoke-static {v9, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 321
    aget v9, v2, v7

    aput v9, v2, v8

    .line 322
    aget-object v9, v6, v8

    aget-object v10, v6, v8

    iget v10, v10, Landroid/graphics/Rect;->left:I

    aget-object v11, v6, v7

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    aget-object v12, v6, v8

    iget v12, v12, Landroid/graphics/Rect;->right:I

    aget-object v13, v6, v7

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    aget-object v14, v6, v8

    .line 325
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    .line 322
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 320
    :cond_b
    nop

    .line 319
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 318
    .end local v8    # "j":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 331
    .end local v7    # "i":I
    :cond_d
    add-int/lit8 v7, v1, -0x1

    .restart local v7    # "i":I
    :goto_8
    if-ltz v7, :cond_11

    .line 332
    aget-object v8, v6, v7

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_10

    .line 333
    aget-object v8, v6, v7

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    .line 334
    .local v8, "overflowedHeight":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    if-gt v9, v7, :cond_f

    .line 335
    aget v10, v2, v7

    aget v11, v2, v9

    if-ne v10, v11, :cond_e

    .line 336
    aget-object v10, v6, v9

    aget-object v11, v6, v9

    iget v11, v11, Landroid/graphics/Rect;->left:I

    aget-object v12, v6, v9

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v8

    aget-object v13, v6, v9

    iget v13, v13, Landroid/graphics/Rect;->right:I

    aget-object v14, v6, v9

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    .line 335
    :cond_e
    nop

    .line 334
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_f
    goto :goto_b

    .line 332
    .end local v8    # "overflowedHeight":I
    .end local v9    # "j":I
    :cond_10
    nop

    .line 331
    :goto_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    .line 344
    .end local v7    # "i":I
    :cond_11
    move/from16 v7, v18

    move/from16 v8, v19

    .end local v18    # "widthSpecSize":I
    .end local v19    # "heightSpecSize":I
    .local v7, "widthSpecSize":I
    .local v8, "heightSpecSize":I
    invoke-virtual {v0, v7, v8}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->setMeasuredDimension(II)V

    .line 345
    return-void
.end method