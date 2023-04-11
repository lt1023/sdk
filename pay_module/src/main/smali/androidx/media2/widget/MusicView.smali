.class Landroidx/media2/widget/MusicView;
.super Landroid/view/ViewGroup;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/MusicView$MusicViewType;
    }
.end annotation


# instance fields
.field private mType:Landroidx/media2/widget/MusicView$MusicViewType;

.field private mWithTitleLandscape:Landroid/view/View;

.field private mWithTitlePortrait:Landroid/view/View;

.field private mWithoutTitle:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    sget-object v0, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v0, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 38
    invoke-direct {p0}, Landroidx/media2/widget/MusicView;->inflateLayout()V

    .line 39
    return-void
.end method

.method private static hasTooSmallMeasuredState(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0
.end method

.method private inflateLayout()V
    .locals 3

    .line 141
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 144
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroidx/media2/widget/R$layout;->music_with_title_landscape:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    .line 145
    sget v1, Landroidx/media2/widget/R$layout;->music_with_title_portrait:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    .line 146
    sget v1, Landroidx/media2/widget/R$layout;->music_without_title:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    .line 148
    iget-object v1, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->addView(Landroid/view/View;)V

    .line 149
    iget-object v1, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->addView(Landroid/view/View;)V

    .line 150
    iget-object v1, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->addView(Landroid/view/View;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 80
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    sget-object v1, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_LANDSCAPE:Landroidx/media2/widget/MusicView$MusicViewType;

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    sget-object v1, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_PORTRAIT:Landroidx/media2/widget/MusicView$MusicViewType;

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    .line 88
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v1

    .line 89
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 90
    invoke-virtual {p0, v2}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, "child":Landroid/view/View;
    if-ne v3, v0, :cond_2

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 94
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .end local v3    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v2    # "i":I
    :cond_3
    sub-int v2, p4, p2

    .line 99
    .local v2, "parentWidth":I
    sub-int v3, p5, p3

    .line 101
    .local v3, "parentHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 102
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 104
    .local v5, "height":I
    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    .line 105
    .local v6, "childLeft":I
    sub-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    .line 107
    .local v7, "childTop":I
    add-int v8, v6, v4

    add-int v9, v7, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_7

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 49
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 51
    .local v2, "height":I
    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    if-le v0, v2, :cond_2

    .line 52
    sget-object v5, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_LANDSCAPE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v5, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 53
    iget-object v5, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 54
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 53
    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    .line 55
    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    invoke-static {v3}, Landroidx/media2/widget/MusicView;->hasTooSmallMeasuredState(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-le v3, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 55
    :cond_1
    nop

    .line 57
    :goto_0
    sget-object v3, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v3, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    goto :goto_2

    .line 60
    :cond_2
    sget-object v5, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_PORTRAIT:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v5, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 61
    iget-object v5, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 62
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 61
    invoke-virtual {v5, v4, v3}, Landroid/view/View;->measure(II)V

    .line 63
    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    invoke-static {v3}, Landroidx/media2/widget/MusicView;->hasTooSmallMeasuredState(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v2, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    .line 63
    :cond_4
    nop

    .line 65
    :goto_1
    sget-object v3, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v3, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 69
    :goto_2
    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    sget-object v4, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    if-ne v3, v4, :cond_5

    .line 70
    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    div-int/lit8 v4, v0, 0x2

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    div-int/lit8 v5, v2, 0x2

    .line 71
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 70
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 69
    :cond_5
    nop

    .line 74
    :goto_3
    invoke-virtual {p0, v0, v2}, Landroidx/media2/widget/MusicView;->setMeasuredDimension(II)V

    .line 75
    return-void

    .line 44
    .end local v0    # "width":I
    .end local v2    # "height":I
    :cond_6
    goto :goto_4

    .line 43
    :cond_7
    nop

    .line 45
    :goto_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "MusicView should be measured in MeasureSpec.EXACTLY"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method setAlbumDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "album"    # Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v0

    .line 112
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 113
    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/R$id;->album:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 114
    .local v2, "albumView":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 114
    :cond_0
    nop

    .line 112
    .end local v2    # "albumView":Landroid/widget/ImageView;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method setArtistText(Ljava/lang/String;)V
    .locals 4
    .param p1, "artist"    # Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v0

    .line 132
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/R$id;->artist:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    .local v2, "artistView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_0
    nop

    .line 132
    .end local v2    # "artistView":Landroid/widget/TextView;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method setTitleText(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v0

    .line 122
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 124
    .local v2, "titleView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    :cond_0
    nop

    .line 122
    .end local v2    # "titleView":Landroid/widget/TextView;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
