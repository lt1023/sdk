.class final Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field private final isLoadingChanged:Z

.field private final listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final playWhenReady:Z

.field private final playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

.field private final playbackStateChanged:Z

.field private final positionDiscontinuity:Z

.field private final positionDiscontinuityReason:I

.field private final seekProcessed:Z

.field private final timelineChangeReason:I

.field private final timelineOrManifestChanged:Z

.field private final trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

.field private final trackSelectorResultChanged:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/PlaybackInfo;Landroidx/media2/exoplayer/external/PlaybackInfo;Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;ZIIZZ)V
    .locals 4
    .param p1, "playbackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;
    .param p2, "previousPlaybackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;
    .param p4, "trackSelector"    # Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
    .param p5, "positionDiscontinuity"    # Z
    .param p6, "positionDiscontinuityReason"    # I
    .param p7, "timelineChangeReason"    # I
    .param p8, "seekProcessed"    # Z
    .param p9, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/PlaybackInfo;",
            "Landroidx/media2/exoplayer/external/PlaybackInfo;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;",
            ">;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "ZIIZZ)V"
        }
    .end annotation

    .line 779
    .local p3, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 781
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 782
    iput-object p4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 783
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 784
    iput p6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuityReason:I

    .line 785
    iput p7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->timelineChangeReason:I

    .line 786
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->seekProcessed:Z

    .line 787
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playWhenReady:Z

    .line 788
    iget v0, p2, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    iget v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackStateChanged:Z

    .line 789
    iget-object v0, p2, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->timelineOrManifestChanged:Z

    .line 792
    iget-boolean v0, p2, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->isLoadingChanged:Z

    .line 793
    iget-object v0, p2, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    if-eq v0, v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelectorResultChanged:Z

    .line 795
    return-void
.end method


# virtual methods
.method final synthetic lambda$run$0$ExoPlayerImpl$PlaybackInfoUpdate(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 803
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->timelineChangeReason:I

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/Player$EventListener;->onTimelineChanged(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method final synthetic lambda$run$1$ExoPlayerImpl$PlaybackInfoUpdate(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 809
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuityReason:I

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPositionDiscontinuity(I)V

    return-void
.end method

.method final synthetic lambda$run$2$ExoPlayerImpl$PlaybackInfoUpdate(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 816
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/Player$EventListener;->onTracksChanged(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method final synthetic lambda$run$3$ExoPlayerImpl$PlaybackInfoUpdate(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 820
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onLoadingChanged(Z)V

    return-void
.end method

.method final synthetic lambda$run$4$ExoPlayerImpl$PlaybackInfoUpdate(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/Player$EventListener;

    .line 825
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playWhenReady:Z

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 799
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->timelineOrManifestChanged:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->timelineChangeReason:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 800
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$0;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;)V

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    .line 806
    :goto_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuity:Z

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$1;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;)V

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_2

    .line 806
    :cond_2
    nop

    .line 811
    :goto_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelectorResultChanged:Z

    if-eqz v0, :cond_3

    .line 812
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 813
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$2;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$2;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;)V

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_3

    .line 811
    :cond_3
    nop

    .line 819
    :goto_3
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->isLoadingChanged:Z

    if-eqz v0, :cond_4

    .line 820
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$3;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$3;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;)V

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_4

    .line 819
    :cond_4
    nop

    .line 822
    :goto_4
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->playbackStateChanged:Z

    if-eqz v0, :cond_5

    .line 823
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$4;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$4;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;)V

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_5

    .line 822
    :cond_5
    nop

    .line 827
    :goto_5
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->seekProcessed:Z

    if-eqz v0, :cond_6

    .line 828
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->listenerSnapshot:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$5;->$instance:Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_6

    .line 827
    :cond_6
    nop

    .line 830
    :goto_6
    return-void
.end method
