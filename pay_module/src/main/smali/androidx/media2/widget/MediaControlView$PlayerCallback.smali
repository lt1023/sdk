.class Landroidx/media2/widget/MediaControlView$PlayerCallback;
.super Landroidx/media2/widget/PlayerWrapper$PlayerCallback;
.source "MediaControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/MediaControlView;

    .line 2014
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowedCommandsChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 1
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "commands"    # Landroidx/media2/session/SessionCommandGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2140
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2142
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->updateAllowedCommands()V

    .line 2143
    return-void
.end method

.method public onCurrentMediaItemChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaItem"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2101
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2103
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2104
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCurrentMediaItemChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2103
    :cond_1
    nop

    .line 2106
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p2}, Landroidx/media2/widget/MediaControlView;->updateTimeViews(Landroidx/media2/common/MediaItem;)V

    .line 2107
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p2}, Landroidx/media2/widget/MediaControlView;->updateTitleView(Landroidx/media2/common/MediaItem;)V

    .line 2108
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getPreviousMediaItemIndex()I

    move-result v1

    .line 2109
    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getNextMediaItemIndex()I

    move-result v2

    .line 2108
    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/MediaControlView;->updatePrevNextButtons(II)V

    .line 2110
    return-void
.end method

.method public onPlaybackCompleted(Landroidx/media2/widget/PlayerWrapper;)V
    .locals 4
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2126
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2128
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2129
    const-string v0, "MediaControlView"

    const-string v1, "onPlaybackCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2128
    :cond_1
    nop

    .line 2131
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    .line 2133
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2134
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v2, v1, Landroidx/media2/widget/MediaControlView;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroidx/media2/widget/MediaControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2135
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/widget/PlayerWrapper;F)V
    .locals 8
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "speed"    # F

    .line 2147
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2149
    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2153
    .local v1, "customSpeedMultBy100":I
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v2, v2, Landroidx/media2/widget/MediaControlView;->mCustomPlaybackSpeedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2155
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v2}, Landroidx/media2/widget/MediaControlView;->removeCustomSpeedFromList()V

    goto :goto_0

    .line 2153
    :cond_1
    nop

    .line 2158
    :goto_0
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2160
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2161
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v2, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroidx/media2/widget/MediaControlView;->updateSelectedSpeed(ILjava/lang/String;)V

    .line 2162
    goto :goto_2

    .line 2159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    :goto_2
    goto/16 :goto_6

    .line 2166
    :cond_4
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->MediaControlView_custom_playback_speed_text:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-float v7, v1

    div-float/2addr v7, v0

    .line 2168
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v6

    .line 2166
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, "customSpeedText":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 2171
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2172
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2173
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2174
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v3, v2, v0}, Landroidx/media2/widget/MediaControlView;->updateSelectedSpeed(ILjava/lang/String;)V

    .line 2175
    goto :goto_5

    .line 2179
    :cond_5
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_7

    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    .line 2180
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_6

    .line 2181
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2182
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2183
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5, v0}, Landroidx/media2/widget/MediaControlView;->updateSelectedSpeed(ILjava/lang/String;)V

    goto :goto_4

    .line 2180
    :cond_6
    goto :goto_4

    .line 2179
    :cond_7
    nop

    .line 2170
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2186
    .end local v2    # "i":I
    :cond_8
    :goto_5
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v3, v2, Landroidx/media2/widget/MediaControlView;->mSelectedSpeedIndex:I

    iput v3, v2, Landroidx/media2/widget/MediaControlView;->mCustomPlaybackSpeedIndex:I

    .line 2188
    .end local v0    # "customSpeedText":Ljava/lang/String;
    :goto_6
    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/widget/PlayerWrapper;I)V
    .locals 4
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # I

    .line 2017
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2019
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2020
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged(state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2019
    :cond_1
    nop

    .line 2023
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->updateTimeViews(Landroidx/media2/common/MediaItem;)V

    .line 2029
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 2044
    :pswitch_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1, v0}, Landroidx/media2/widget/MediaControlView;->updatePlayButton(I)V

    .line 2045
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v1, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2046
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1}, Landroidx/media2/widget/MediaControlView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2047
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v2}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Landroidx/media2/widget/R$string;->mcv2_playback_error_text:I

    .line 2048
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Landroidx/media2/widget/R$string;->mcv2_error_dialog_button:I

    new-instance v3, Landroidx/media2/widget/MediaControlView$PlayerCallback$1;

    invoke-direct {v3, p0}, Landroidx/media2/widget/MediaControlView$PlayerCallback$1;-><init>(Landroidx/media2/widget/MediaControlView$PlayerCallback;)V

    .line 2049
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 2058
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2059
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 2046
    :cond_2
    goto :goto_1

    .line 2031
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2032
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 2033
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->resetHideCallbacks()V

    .line 2034
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    .line 2035
    goto :goto_1

    .line 2037
    :pswitch_2
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1, v0}, Landroidx/media2/widget/MediaControlView;->updatePlayButton(I)V

    .line 2038
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2039
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2040
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mHideProgressBar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2041
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBars:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 2042
    nop

    .line 2063
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onPlaylistChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/PlayerWrapper;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    .line 2115
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2117
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2118
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaylistChanged(): list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2117
    :cond_1
    nop

    .line 2120
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getPreviousMediaItemIndex()I

    move-result v1

    .line 2121
    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getNextMediaItemIndex()I

    move-result v2

    .line 2120
    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/MediaControlView;->updatePrevNextButtons(II)V

    .line 2122
    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/widget/PlayerWrapper;J)V
    .locals 7
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # J

    .line 2067
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2069
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2070
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekCompleted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2069
    :cond_1
    nop

    .line 2073
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, v0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p2

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v2, v2, Landroidx/media2/widget/MediaControlView;->mDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 2075
    .local v0, "positionOnProgressBar":I
    :goto_1
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2076
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mCurrentTime:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v2, p2, p3}, Landroidx/media2/widget/MediaControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2078
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v1, v1, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 2079
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v5, v1, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    iput-wide v5, v1, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    .line 2082
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v1, v1, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    invoke-virtual {p1, v1, v2}, Landroidx/media2/widget/PlayerWrapper;->seekTo(J)V

    .line 2083
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-wide v3, v1, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    goto :goto_2

    .line 2085
    :cond_3
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-wide v3, v1, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    .line 2089
    iget-boolean v1, v1, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    if-nez v1, :cond_4

    .line 2090
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v1, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2091
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v1, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2092
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v1, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 2093
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v1, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v3, v3, Landroidx/media2/widget/MediaControlView;->mDelayedAnimationIntervalMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media2/widget/MediaControlView;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 2089
    :cond_4
    nop

    .line 2096
    :goto_2
    return-void
.end method

.method onTrackDeselected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 4
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2241
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2243
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2244
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackDeselected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2243
    :cond_1
    nop

    .line 2246
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 2247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2248
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v1, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2249
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    .line 2251
    iget v1, v1, Landroidx/media2/widget/MediaControlView;->mSettingsMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2252
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v2, v2, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setCheckPosition(I)V

    goto :goto_2

    .line 2251
    :cond_2
    nop

    .line 2254
    :goto_2
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$drawable;->ic_subtitle_off:I

    .line 2255
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2254
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2256
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->mcv2_cc_is_off:I

    .line 2257
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2256
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2258
    goto :goto_3

    .line 2247
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    goto :goto_3

    .line 2246
    .end local v0    # "i":I
    :cond_5
    nop

    .line 2262
    :goto_3
    return-void
.end method

.method onTrackInfoChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/PlayerWrapper;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 2193
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2195
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2196
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackInfoChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2195
    :cond_1
    nop

    .line 2199
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/MediaControlView;->updateTracks(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V

    .line 2200
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->updateTimeViews(Landroidx/media2/common/MediaItem;)V

    .line 2201
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->updateTitleView(Landroidx/media2/common/MediaItem;)V

    .line 2202
    return-void
.end method

.method onTrackSelected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 5
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2206
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2208
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2209
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackSelected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2208
    :cond_1
    nop

    .line 2211
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v1, :cond_5

    .line 2212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2213
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v1, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2214
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iput v0, v1, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    .line 2216
    iget v1, v1, Landroidx/media2/widget/MediaControlView;->mSettingsMode:I

    if-ne v1, v2, :cond_2

    .line 2217
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v2, v2, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setCheckPosition(I)V

    goto :goto_2

    .line 2216
    :cond_2
    nop

    .line 2219
    :goto_2
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$drawable;->ic_subtitle_on:I

    .line 2220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2219
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2221
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->mcv2_cc_is_on:I

    .line 2222
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2221
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2223
    goto :goto_3

    .line 2212
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    :goto_3
    goto :goto_5

    .line 2226
    :cond_5
    invoke-virtual {p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 2227
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2228
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v1, p2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2229
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iput v0, v1, Landroidx/media2/widget/MediaControlView;->mSelectedAudioTrackIndex:I

    .line 2231
    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v3, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v4, v4, Landroidx/media2/widget/MediaControlView;->mSelectedAudioTrackIndex:I

    .line 2232
    invoke-virtual {v3, v4}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->getMainText(I)Ljava/lang/String;

    move-result-object v3

    .line 2231
    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2233
    goto :goto_5

    .line 2227
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    goto :goto_5

    .line 2226
    .end local v0    # "i":I
    :cond_8
    nop

    .line 2237
    :goto_5
    return-void
.end method

.method onVideoSizeChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "videoSize"    # Landroidx/media2/common/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2267
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_0

    return-void

    .line 2269
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2270
    const-string v0, "MediaControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2269
    :cond_1
    nop

    .line 2272
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->mVideoTrackCount:I

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 2273
    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 2274
    .local v0, "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    if-eqz v0, :cond_2

    .line 2275
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$PlayerCallback;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1, p1, v0}, Landroidx/media2/widget/MediaControlView;->updateTracks(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V

    goto :goto_1

    .line 2274
    :cond_2
    goto :goto_1

    .line 2272
    .end local v0    # "tracks":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    :cond_3
    nop

    .line 2278
    :goto_1
    return-void
.end method
