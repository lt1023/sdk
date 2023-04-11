.class Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;->onMetadataChanged(Landroidx/media2/common/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$session:Landroidx/media2/session/MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;Ljava/util/List;Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

    .line 1669
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->this$0:Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->val$list:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->val$session:Landroidx/media2/session/MediaSessionImplBase;

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

    .line 1672
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->val$list:Ljava/util/List;

    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    .line 1673
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPlaylistMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    .line 1674
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getCurrentMediaItemIndex()I

    move-result v4

    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    .line 1675
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPreviousMediaItemIndex()I

    move-result v5

    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;->val$session:Landroidx/media2/session/MediaSessionImplBase;

    .line 1676
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getNextMediaItemIndex()I

    move-result v6

    .line 1672
    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaSession$ControllerCb;->onPlaylistChanged(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V

    .line 1677
    return-void
.end method
