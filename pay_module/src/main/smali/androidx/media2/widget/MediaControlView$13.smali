.class Landroidx/media2/widget/MediaControlView$13;
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

    .line 903
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$13;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 914
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$13;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mExtraControls:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 915
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 906
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$13;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$13;->this$0:Landroidx/media2/widget/MediaControlView;

    sget v2, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$13;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$13;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 909
    invoke-virtual {v2}, Landroidx/media2/widget/PlayerWrapper;->canSeekForward()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 908
    :cond_1
    nop

    .line 909
    :goto_0
    const/16 v1, 0x8

    .line 908
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 910
    return-void
.end method
