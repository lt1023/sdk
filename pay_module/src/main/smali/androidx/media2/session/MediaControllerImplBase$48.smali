.class Landroidx/media2/session/MediaControllerImplBase$48;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->notifyTrackInfoChanged(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$trackInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 1159
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$48;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$48;->val$trackInfos:Ljava/util/List;

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

    .line 1162
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$48;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$48;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$48;->val$trackInfos:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/session/MediaController$ControllerCallback;->onTrackInfoChanged(Landroidx/media2/session/MediaController;Ljava/util/List;)V

    .line 1166
    return-void
.end method
