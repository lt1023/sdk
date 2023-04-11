.class Landroidx/media2/session/MediaControllerImplBase$47;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->notifyVideoSizeChanged(Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$item:Landroidx/media2/common/MediaItem;

.field final synthetic val$videoSize:Landroidx/media2/common/VideoSize;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 1136
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$47;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$47;->val$item:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplBase$47;->val$videoSize:Landroidx/media2/common/VideoSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaController$ControllerCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/media2/session/MediaController$ControllerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1139
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$47;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$47;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$47;->val$item:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$47;->val$videoSize:Landroidx/media2/common/VideoSize;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/session/MediaController$ControllerCallback;->onVideoSizeChanged(Landroidx/media2/session/MediaController;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    .line 1143
    return-void
.end method
