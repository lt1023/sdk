.class Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$metadata:Landroidx/media2/common/MediaMetadata;

.field final synthetic val$session:Landroidx/media2/session/MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Ljava/util/List;Landroidx/media2/common/MediaMetadata;Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

    .line 1411
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->this$0:Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$list:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$metadata:Landroidx/media2/common/MediaMetadata;

    iput-object p4, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerCb;I)V
    .locals 7
    .param p1, "callback"    # Landroidx/media2/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1414
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$list:Ljava/util/List;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$metadata:Landroidx/media2/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    .line 1415
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getCurrentMediaItemIndex()I

    move-result v4

    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPreviousMediaItemIndex()I

    move-result v5

    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$6;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    .line 1416
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getNextMediaItemIndex()I

    move-result v6

    .line 1414
    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaSession$ControllerCb;->onPlaylistChanged(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V

    .line 1417
    return-void
.end method
