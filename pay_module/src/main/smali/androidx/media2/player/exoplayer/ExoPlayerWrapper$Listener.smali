.class public interface abstract Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ExoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBandwidthSample(Landroidx/media2/common/MediaItem;I)V
.end method

.method public abstract onBufferingEnded(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onBufferingStarted(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onBufferingUpdate(Landroidx/media2/common/MediaItem;I)V
.end method

.method public abstract onError(Landroidx/media2/common/MediaItem;I)V
.end method

.method public abstract onLoop(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onMediaItemEnded(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onMediaItemStartedAsNext(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onMediaTimeDiscontinuity(Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V
.end method

.method public abstract onMetadataChanged(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onPlaybackEnded(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onPrepared(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onSeekCompleted()V
.end method

.method public abstract onSubtitleData(Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
.end method

.method public abstract onTimedMetadata(Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V
.end method

.method public abstract onVideoRenderingStart(Landroidx/media2/common/MediaItem;)V
.end method

.method public abstract onVideoSizeChanged(Landroidx/media2/common/MediaItem;II)V
.end method
