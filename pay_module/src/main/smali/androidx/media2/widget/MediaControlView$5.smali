.class Landroidx/media2/widget/MediaControlView$5;
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

    .line 780
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$5;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 788
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$5;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    .line 789
    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mNeedToShowBars:Z

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$5;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBars:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 791
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$5;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mNeedToShowBars:Z

    goto :goto_0

    .line 789
    :cond_0
    nop

    .line 793
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 783
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$5;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x3

    iput v1, v0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    .line 784
    return-void
.end method
