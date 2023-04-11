.class Landroidx/media2/widget/SelectiveLayout;
.super Landroidx/media2/widget/MediaViewGroup;
.source "SelectiveLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/SelectiveLayout$LayoutParams;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Landroidx/media2/widget/MediaViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/MediaViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/widget/MediaViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private getPositivePaddingBottom()I
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPositivePaddingLeft()I
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPositivePaddingRight()I
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingRight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPositivePaddingTop()I
    .locals 2

    .line 163
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 46
    instance-of v0, p1, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 51
    new-instance v0, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    new-instance v0, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 61
    instance-of v0, p1, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 62
    return-object p1

    .line 64
    :cond_0
    new-instance v0, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 127
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getChildCount()I

    move-result v0

    .line 129
    .local v0, "count":I
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingLeft()I

    move-result v1

    .line 130
    .local v1, "parentLeft":I
    sub-int v2, p4, p2

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 132
    .local v2, "parentRight":I
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingTop()I

    move-result v3

    .line 133
    .local v3, "parentTop":I
    sub-int v4, p5, p3

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 135
    .local v4, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 136
    move-object v6, p0

    invoke-virtual {p0, v5}, Landroidx/media2/widget/SelectiveLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 137
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 138
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 139
    .local v8, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 141
    .local v9, "height":I
    sub-int v10, v2, v1

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    .line 142
    .local v10, "childLeft":I
    sub-int v11, v4, v3

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    .line 144
    .local v11, "childTop":I
    add-int v12, v10, v8

    add-int v13, v11, v9

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 137
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "childLeft":I
    .end local v11    # "childTop":I
    :cond_0
    nop

    .line 135
    .end local v7    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, p0

    .line 147
    .end local v5    # "i":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 69
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getChildCount()I

    move-result v0

    .line 71
    .local v0, "count":I
    const/4 v1, 0x0

    .line 72
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 73
    .local v2, "maxHeight":I
    const/4 v3, 0x0

    .line 76
    .local v3, "childState":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v0, :cond_1

    .line 77
    invoke-virtual {p0, v4}, Landroidx/media2/widget/SelectiveLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 78
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    .line 79
    .local v7, "lp":Landroidx/media2/widget/SelectiveLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_0

    iget-boolean v5, v7, Landroidx/media2/widget/SelectiveLayout$LayoutParams;->forceMatchParent:Z

    if-nez v5, :cond_0

    .line 80
    invoke-virtual {p0, v6, p1, p2}, Landroidx/media2/widget/SelectiveLayout;->measureChild(Landroid/view/View;II)V

    .line 81
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 82
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 83
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    or-int/2addr v3, v5

    goto :goto_1

    .line 79
    :cond_0
    nop

    .line 76
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroidx/media2/widget/SelectiveLayout$LayoutParams;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingLeft()I

    move-result v4

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    .line 89
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingTop()I

    move-result v4

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 92
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 95
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v4, v6, :cond_3

    .line 97
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 98
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 100
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 98
    :cond_2
    goto :goto_2

    .line 95
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    nop

    .line 104
    :goto_2
    nop

    .line 105
    invoke-static {v1, p1, v3}, Landroidx/media2/widget/SelectiveLayout;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v6, v3, 0x10

    .line 106
    invoke-static {v2, p2, v6}, Landroidx/media2/widget/SelectiveLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 104
    invoke-virtual {p0, v4, v6}, Landroidx/media2/widget/SelectiveLayout;->setMeasuredDimension(II)V

    .line 110
    nop

    .line 111
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getMeasuredWidth()I

    move-result v4

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingLeft()I

    move-result v6

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 110
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 113
    .local v4, "widthMeasureSpecForChild":I
    nop

    .line 114
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getMeasuredHeight()I

    move-result v7

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingTop()I

    move-result v8

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 113
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 116
    .local v6, "heightMeasureSpecForChild":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v0, :cond_5

    .line 117
    invoke-virtual {p0, v7}, Landroidx/media2/widget/SelectiveLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 118
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    .line 119
    .local v9, "lp":Landroidx/media2/widget/SelectiveLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v5, :cond_4

    iget-boolean v10, v9, Landroidx/media2/widget/SelectiveLayout$LayoutParams;->forceMatchParent:Z

    if-eqz v10, :cond_4

    .line 120
    invoke-virtual {v8, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 119
    :cond_4
    nop

    .line 116
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/media2/widget/SelectiveLayout$LayoutParams;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 123
    .end local v7    # "i":I
    :cond_5
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method
