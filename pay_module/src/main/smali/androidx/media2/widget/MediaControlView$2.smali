.class Landroidx/media2/widget/MediaControlView$2;
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

    .line 746
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$2;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 749
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$2;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mCenterView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$2;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 751
    return-void
.end method
