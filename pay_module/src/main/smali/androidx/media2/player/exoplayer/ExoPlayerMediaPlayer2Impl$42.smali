.class Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;
.super Ljava/lang/Object;
.source "ExoPlayerMediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->onError(Landroidx/media2/common/MediaItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

.field final synthetic val$mediaItem:Landroidx/media2/common/MediaItem;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    .line 785
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;->val$mediaItem:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;->val$what:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/player/MediaPlayer2$EventCallback;)V
    .locals 4
    .param p1, "cb"    # Landroidx/media2/player/MediaPlayer2$EventCallback;

    .line 788
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;->val$mediaItem:Landroidx/media2/common/MediaItem;

    iget v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$42;->val$what:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/player/MediaPlayer2$EventCallback;->onError(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V

    .line 789
    return-void
.end method
