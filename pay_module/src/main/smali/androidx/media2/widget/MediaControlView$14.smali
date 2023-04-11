.class Landroidx/media2/widget/MediaControlView$14;
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

    .line 919
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 922
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 923
    .local v0, "isShowing":Z
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v1, v1, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v1}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1}, Landroidx/media2/widget/MediaControlView;->setProgress()J

    move-result-wide v1

    .line 925
    .local v1, "pos":J
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v4, v3, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    rem-long v7, v1, v5

    sub-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroidx/media2/widget/MediaControlView;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 923
    .end local v1    # "pos":J
    :cond_1
    nop

    .line 928
    :goto_1
    return-void
.end method
