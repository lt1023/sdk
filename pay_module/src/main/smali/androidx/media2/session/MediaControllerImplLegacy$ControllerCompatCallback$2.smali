.class Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$2;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

.field final synthetic val$currentItem:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroidx/media2/common/MediaItem;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    .line 1150
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$2;->this$1:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$2;->val$currentItem:Landroidx/media2/common/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaController$ControllerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media2/session/MediaController$ControllerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1153
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$2;->this$1:Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback$2;->val$currentItem:Landroidx/media2/common/MediaItem;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/session/MediaController$ControllerCallback;->onCurrentMediaItemChanged(Landroidx/media2/session/MediaController;Landroidx/media2/common/MediaItem;)V

    .line 1154
    return-void
.end method
