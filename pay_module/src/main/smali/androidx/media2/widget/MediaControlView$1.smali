.class Landroidx/media2/widget/MediaControlView$1;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/MediaControlView;->initControllerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/MediaControlView;

    .line 735
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$1;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 738
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 739
    .local v0, "alpha":F
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$1;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v1, v1, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    .line 740
    .local v1, "scaleLevel":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$1;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v3, v1

    mul-float v3, v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 742
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$1;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mCenterView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 743
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$1;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 744
    return-void
.end method
