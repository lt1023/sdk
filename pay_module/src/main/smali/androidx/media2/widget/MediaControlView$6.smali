.class Landroidx/media2/widget/MediaControlView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediaControlView.java"


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

    .line 799
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$6;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 807
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    .line 808
    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mNeedToShowBars:Z

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBars:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 810
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mNeedToShowBars:Z

    goto :goto_0

    .line 808
    :cond_0
    nop

    .line 812
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 802
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x3

    iput v1, v0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    .line 803
    return-void
.end method
