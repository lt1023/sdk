.class Landroidx/media2/widget/VideoView$PlayerCallback;
.super Landroidx/media2/widget/PlayerWrapper$PlayerCallback;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/VideoView;

    .line 667
    iput-object p1, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Landroidx/media2/widget/PlayerWrapper$PlayerCallback;-><init>()V

    return-void
.end method

.method private shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z
    .locals 5
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 778
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eq p1, v0, :cond_1

    .line 779
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 781
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 782
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "methodName":Ljava/lang/String;
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " should be ignored. player is already gone."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    goto :goto_0

    .line 784
    .end local v0    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "VideoView"

    const-string v3, "A PlayerCallback should be ignored. player is already gone."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 779
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    nop

    .line 788
    :goto_0
    return v1

    .line 790
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method onConnected(Landroidx/media2/widget/PlayerWrapper;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 670
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "VideoView"

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_0
    nop

    .line 673
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    iget-object v1, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v1, v1, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {v0, v1}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_1

    .line 674
    :cond_2
    nop

    .line 677
    :goto_1
    return-void
.end method

.method onCurrentMediaItemChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 734
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 735
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCurrentMediaItemChanged(): MediaItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    :cond_0
    nop

    .line 737
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0, p2}, Landroidx/media2/widget/VideoView;->updateMusicView(Landroidx/media2/common/MediaItem;)V

    .line 740
    return-void
.end method

.method onPlayerStateChanged(Landroidx/media2/widget/PlayerWrapper;I)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # I

    .line 723
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 724
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged(): state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_0
    nop

    .line 726
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 727
    :cond_1
    nop

    .line 730
    return-void
.end method

.method onSubtitleData(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 6
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "track"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "data"    # Landroidx/media2/common/SubtitleData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 702
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 703
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubtitleData(): TrackInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", getCurrentPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", getStartTimeUs(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p4}, Landroidx/media2/common/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", diff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {p4}, Landroidx/media2/common/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms, getDurationUs(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p4}, Landroidx/media2/common/SubtitleData;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    :cond_0
    nop

    .line 711
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p3, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 713
    return-void

    .line 715
    :cond_2
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/SubtitleTrack;

    .line 716
    .local v0, "subtitleTrack":Landroidx/media2/widget/SubtitleTrack;
    if-eqz v0, :cond_3

    .line 717
    invoke-virtual {v0, p4}, Landroidx/media2/widget/SubtitleTrack;->onData(Landroidx/media2/common/SubtitleData;)V

    goto :goto_1

    .line 716
    :cond_3
    nop

    .line 719
    :goto_1
    return-void
.end method

.method onTrackDeselected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 767
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 768
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackDeselected(): deselected track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    :cond_0
    nop

    .line 770
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/SubtitleTrack;

    .line 772
    .local v0, "subtitleTrack":Landroidx/media2/widget/SubtitleTrack;
    if-eqz v0, :cond_2

    .line 773
    iget-object v1, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v1, v1, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/widget/SubtitleController;->selectTrack(Landroidx/media2/widget/SubtitleTrack;)Z

    goto :goto_1

    .line 772
    :cond_2
    nop

    .line 775
    :goto_1
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

    .line 745
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 746
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackInfoChanged(): tracks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_0
    nop

    .line 748
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/VideoView;->updateTracks(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V

    .line 750
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/widget/VideoView;->updateMusicView(Landroidx/media2/common/MediaItem;)V

    .line 751
    return-void
.end method

.method onTrackSelected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackInfo"    # Landroidx/media2/common/SessionPlayer$TrackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 755
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackSelected(): selected track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_0
    nop

    .line 758
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/SubtitleTrack;

    .line 760
    .local v0, "subtitleTrack":Landroidx/media2/widget/SubtitleTrack;
    if-eqz v0, :cond_2

    .line 761
    iget-object v1, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v1, v1, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    invoke-virtual {v1, v0}, Landroidx/media2/widget/SubtitleController;->selectTrack(Landroidx/media2/widget/SubtitleTrack;)Z

    goto :goto_1

    .line 760
    :cond_2
    nop

    .line 763
    :goto_1
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

    .line 682
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged(): size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 682
    :cond_0
    nop

    .line 685
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$PlayerCallback;->shouldIgnoreCallback(Landroidx/media2/widget/PlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget v0, v0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 687
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0}, Landroidx/media2/widget/VideoView;->isMediaPrepared()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 689
    .local v0, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    if-eqz v0, :cond_2

    .line 690
    iget-object v1, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {v1, p1, v0}, Landroidx/media2/widget/VideoView;->updateTracks(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V

    goto :goto_1

    .line 689
    :cond_2
    goto :goto_1

    .line 687
    .end local v0    # "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    :cond_3
    goto :goto_1

    .line 686
    :cond_4
    nop

    .line 694
    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    invoke-virtual {v0}, Landroidx/media2/widget/VideoTextureView;->forceLayout()V

    .line 695
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    invoke-virtual {v0}, Landroidx/media2/widget/VideoSurfaceView;->forceLayout()V

    .line 696
    iget-object v0, p0, Landroidx/media2/widget/VideoView$PlayerCallback;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0}, Landroidx/media2/widget/VideoView;->requestLayout()V

    .line 697
    return-void
.end method
