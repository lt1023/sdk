.class Landroidx/media2/widget/SubtitleAnchorView;
.super Landroid/view/View;
.source "SubtitleAnchorView.java"

# interfaces
.implements Landroidx/media2/widget/SubtitleController$Anchor;


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleAnchorView"


# instance fields
.field private mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/SubtitleAnchorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/SubtitleAnchorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 138
    const-string v0, "androidx.media2.widget.SubtitleAnchorView"

    return-object v0
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 97
    iget-object v0, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    goto :goto_0

    .line 97
    :cond_0
    nop

    .line 100
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    goto :goto_0

    .line 106
    :cond_0
    nop

    .line 109
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v0, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 129
    .local v0, "saveCount":I
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    iget-object v1, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, p1}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 127
    .end local v0    # "saveCount":I
    :cond_0
    nop

    .line 133
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 113
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 115
    iget-object v0, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 117
    .local v0, "width":I
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 119
    .local v1, "height":I
    iget-object v2, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    invoke-interface {v2, v0, v1}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->setSize(II)V

    goto :goto_0

    .line 115
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    nop

    .line 121
    :goto_0
    return-void
.end method

.method public setSubtitleWidget(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V
    .locals 3
    .param p1, "subtitleWidget"    # Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    .line 50
    iget-object v0, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    if-ne v0, p1, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->isAttachedToWindow()Z

    move-result v0

    .line 55
    .local v0, "attachedToWindow":Z
    iget-object v1, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_2

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v1}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    goto :goto_0

    .line 56
    :cond_1
    nop

    .line 60
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    goto :goto_1

    .line 55
    :cond_2
    nop

    .line 62
    :goto_1
    iput-object p1, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitleWidget:Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    .line 64
    if-eqz p1, :cond_5

    .line 65
    iget-object v1, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitlesChangedListener:Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_3

    .line 66
    new-instance v1, Landroidx/media2/widget/SubtitleAnchorView$1;

    invoke-direct {v1, p0}, Landroidx/media2/widget/SubtitleAnchorView$1;-><init>(Landroidx/media2/widget/SubtitleAnchorView;)V

    iput-object v1, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitlesChangedListener:Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;

    goto :goto_2

    .line 65
    :cond_3
    nop

    .line 74
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/media2/widget/SubtitleAnchorView;->setWillNotDraw(Z)V

    .line 75
    iget-object v1, p0, Landroidx/media2/widget/SubtitleAnchorView;->mSubtitlesChangedListener:Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 77
    if-eqz v0, :cond_4

    .line 78
    invoke-interface {p1}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 79
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->requestLayout()V

    goto :goto_3

    .line 77
    :cond_4
    goto :goto_3

    .line 82
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/media2/widget/SubtitleAnchorView;->setWillNotDraw(Z)V

    .line 85
    :goto_3
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleAnchorView;->invalidate()V

    .line 86
    return-void
.end method
