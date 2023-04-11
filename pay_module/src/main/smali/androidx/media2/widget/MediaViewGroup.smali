.class abstract Landroidx/media2/widget/MediaViewGroup;
.super Landroid/view/ViewGroup;
.source "MediaViewGroup.java"


# instance fields
.field private mAggregatedIsVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/MediaViewGroup;->mAggregatedIsVisible:Z

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/MediaViewGroup;->mAggregatedIsVisible:Z

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/MediaViewGroup;->mAggregatedIsVisible:Z

    .line 44
    return-void
.end method


# virtual methods
.method isAggregatedVisible()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Landroidx/media2/widget/MediaViewGroup;->mAggregatedIsVisible:Z

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 74
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    .line 75
    invoke-virtual {p0, p1}, Landroidx/media2/widget/MediaViewGroup;->onVisibilityAggregatedCompat(Z)V

    .line 76
    return-void
.end method

.method onVisibilityAggregatedCompat(Z)V
    .locals 0
    .param p1, "isVisible"    # Z
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 80
    iput-boolean p1, p0, Landroidx/media2/widget/MediaViewGroup;->mAggregatedIsVisible:Z

    .line 81
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 51
    invoke-virtual {p0}, Landroidx/media2/widget/MediaViewGroup;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Landroidx/media2/widget/MediaViewGroup;->isShown()Z

    move-result v0

    .line 53
    .local v0, "newIsVisible":Z
    iget-boolean v1, p0, Landroidx/media2/widget/MediaViewGroup;->mAggregatedIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaViewGroup;->onVisibilityAggregatedCompat(Z)V

    goto :goto_0

    .line 53
    :cond_0
    goto :goto_0

    .line 51
    .end local v0    # "newIsVisible":Z
    :cond_1
    goto :goto_0

    .line 48
    :cond_2
    nop

    .line 58
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 65
    invoke-virtual {p0}, Landroidx/media2/widget/MediaViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaViewGroup;->onVisibilityAggregatedCompat(Z)V

    goto :goto_1

    .line 65
    :cond_1
    goto :goto_1

    .line 62
    :cond_2
    nop

    .line 69
    :goto_1
    return-void
.end method
