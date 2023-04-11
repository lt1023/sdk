.class Landroidx/media2/widget/MediaControlView$27;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1279
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$27;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1282
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$27;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_0

    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$27;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->resetHideCallbacks()V

    .line 1285
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$27;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mOverflowIsShowing:Z

    .line 1286
    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mOverflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1287
    return-void
.end method
