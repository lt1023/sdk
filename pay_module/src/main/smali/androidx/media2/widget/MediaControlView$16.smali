.class Landroidx/media2/widget/MediaControlView$16;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
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

    .line 1061
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$16;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1064
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$16;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->shouldNotHideBars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$16;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mHideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1068
    return-void
.end method