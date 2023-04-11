.class Landroidx/media2/widget/MediaControlView$22;
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

    .line 1203
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 1206
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_0

    return-void

    .line 1207
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->resetHideCallbacks()V

    .line 1208
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1210
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getLatestSeekPosition()J

    move-result-wide v0

    .line 1211
    .local v0, "latestSeekPosition":J
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    const-wide/16 v3, 0x7530

    add-long v5, v0, v3

    iget-wide v7, v2, Landroidx/media2/widget/MediaControlView;->mDuration:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v6, v7}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    .line 1216
    add-long/2addr v3, v0

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v5, v2, Landroidx/media2/widget/MediaControlView;->mDuration:J

    cmp-long v2, v3, v5

    if-ltz v2, :cond_1

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v2}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1217
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v2, v7}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    goto :goto_0

    .line 1216
    :cond_1
    nop

    .line 1219
    :goto_0
    return-void
.end method
