.class Landroidx/media2/widget/MediaControlView$19;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 1103
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 1135
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1138
    :cond_0
    if-nez p3, :cond_1

    .line 1141
    return-void

    .line 1145
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, v0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 1146
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, v0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    int-to-long v2, p2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1149
    .local v0, "newPosition":J
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v2}, Landroidx/media2/widget/MediaControlView;->isCurrentMediaItemFromNetwork()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1150
    .local v2, "shouldSeekNow":Z
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    goto :goto_0

    .line 1145
    .end local v0    # "newPosition":J
    .end local v2    # "shouldSeekNow":Z
    :cond_2
    nop

    .line 1152
    :goto_0
    return-void

    .line 1135
    :cond_3
    :goto_1
    nop

    .line 1136
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .line 1106
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1110
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    .line 1117
    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1118
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1119
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mHideProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1123
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    goto :goto_0

    .line 1123
    :cond_1
    nop

    .line 1127
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->isCurrentMediaItemFromNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1128
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mWasPlaying:Z

    .line 1129
    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->pause()V

    goto :goto_1

    .line 1127
    :cond_2
    nop

    .line 1131
    :goto_1
    return-void

    .line 1106
    :cond_3
    :goto_2
    nop

    .line 1107
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .line 1156
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1159
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    .line 1161
    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getLatestSeekPosition()J

    move-result-wide v2

    .line 1163
    .local v2, "latestSeekPosition":J
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->isCurrentMediaItemFromNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    .line 1165
    iput-wide v4, v0, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    goto :goto_0

    .line 1163
    :cond_1
    nop

    .line 1167
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    .line 1169
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mWasPlaying:Z

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mWasPlaying:Z

    .line 1171
    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->play()V

    goto :goto_1

    .line 1169
    :cond_2
    nop

    .line 1173
    :goto_1
    return-void

    .line 1156
    .end local v2    # "latestSeekPosition":J
    :cond_3
    :goto_2
    nop

    .line 1157
    return-void
.end method
