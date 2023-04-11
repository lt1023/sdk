.class Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;
.super Landroidx/media2/player/MediaPlayer2$DrmEventCallback;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mp2DrmCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;

    .line 3066
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer2$DrmEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmInfo(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaPlayer2$DrmInfo;)V
    .locals 2
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "drmInfo"    # Landroidx/media2/player/MediaPlayer2$DrmInfo;

    .line 3070
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;->this$0:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback$1;

    invoke-direct {v1, p0, p2, p3}, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback$1;-><init>(Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaPlayer2$DrmInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->notifyMediaPlayerCallback(Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;)V

    .line 3077
    return-void
.end method

.method public onDrmPrepared(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;I)V
    .locals 2
    .param p1, "mp"    # Landroidx/media2/player/MediaPlayer2;
    .param p2, "item"    # Landroidx/media2/common/MediaItem;
    .param p3, "status"    # I

    .line 3081
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;->this$0:Landroidx/media2/player/MediaPlayer;

    const/16 v1, 0x3e9

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/media2/player/MediaPlayer;->handleCallComplete(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V

    .line 3082
    return-void
.end method
