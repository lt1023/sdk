.class Landroidx/media2/player/MediaPlayer$17$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$17;->onExecute()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/player/MediaPlayer$17;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$17;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/player/MediaPlayer$17;

    .line 1497
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$17$1;->this$1:Landroidx/media2/player/MediaPlayer$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media2/common/SessionPlayer$PlayerCallback;

    .line 1501
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$17$1;->this$1:Landroidx/media2/player/MediaPlayer$17;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$17;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$17$1;->this$1:Landroidx/media2/player/MediaPlayer$17;

    iget v1, v1, Landroidx/media2/player/MediaPlayer$17;->val$repeatMode:I

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$PlayerCallback;->onRepeatModeChanged(Landroidx/media2/common/SessionPlayer;I)V

    .line 1502
    return-void
.end method
