.class Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$16;
.super Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;
.source "ExoPlayerMediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->setNextMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

.field final synthetic val$item:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZLandroidx/media2/common/MediaItem;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;
    .param p2, "mediaCallType"    # I
    .param p3, "needToWaitForEventToComplete"    # Z

    .line 348
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$16;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iput-object p4, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$16;->val$item:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    .line 351
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$16;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->mPlayer:Landroidx/media2/player/exoplayer/ExoPlayerWrapper;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$16;->val$item:Landroidx/media2/common/MediaItem;

    invoke-virtual {v0, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->setNextMediaItem(Landroidx/media2/common/MediaItem;)V

    .line 352
    return-void
.end method
