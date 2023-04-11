.class Landroidx/media2/widget/MediaControlView$21;
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

    .line 1185
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 1188
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_0

    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->resetHideCallbacks()V

    .line 1190
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1193
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v5, v0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1194
    .local v0, "stoppedWithDuration":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v5, v5, Landroidx/media2/widget/MediaControlView;->mDuration:J

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v5}, Landroidx/media2/widget/MediaControlView;->getLatestSeekPosition()J

    move-result-wide v5

    .line 1195
    .local v5, "currentPosition":J
    :goto_1
    const-wide/16 v7, 0x2710

    sub-long v7, v5, v7

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1196
    .local v2, "seekPosition":J
    iget-object v7, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v7, v2, v3, v1}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    .line 1197
    if-eqz v0, :cond_3

    .line 1198
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1, v4}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    goto :goto_2

    .line 1197
    :cond_3
    nop

    .line 1200
    :goto_2
    return-void
.end method
