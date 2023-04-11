.class Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;
.super Ljava/lang/Object;
.source "ExoPlayerMediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;->notifyOnInfo(Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

.field final synthetic val$extra:I

.field final synthetic val$mediaItem:Landroidx/media2/common/MediaItem;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;Landroidx/media2/common/MediaItem;II)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    .line 800
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->val$mediaItem:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->val$what:I

    iput p4, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/player/MediaPlayer2$EventCallback;)V
    .locals 4
    .param p1, "callback"    # Landroidx/media2/player/MediaPlayer2$EventCallback;

    .line 803
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->this$0:Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->val$mediaItem:Landroidx/media2/common/MediaItem;

    iget v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->val$what:I

    iget v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$43;->val$extra:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/player/MediaPlayer2$EventCallback;->onInfo(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V

    .line 804
    return-void
.end method
