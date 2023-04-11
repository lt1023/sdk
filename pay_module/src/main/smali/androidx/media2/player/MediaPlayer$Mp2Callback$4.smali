.class Landroidx/media2/player/MediaPlayer$Mp2Callback$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$Mp2Callback;->onInfo(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/player/MediaPlayer$Mp2Callback;

    .line 3132
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$4;->this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media2/common/SessionPlayer$PlayerCallback;

    .line 3135
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$4;->this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$4;->this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->getTrackInfoInternal()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$PlayerCallback;->onTrackInfoChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V

    .line 3136
    return-void
.end method
