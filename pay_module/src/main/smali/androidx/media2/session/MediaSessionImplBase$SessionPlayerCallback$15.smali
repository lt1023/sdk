.class Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

.field final synthetic val$data:Landroidx/media2/common/SubtitleData;

.field final synthetic val$item:Landroidx/media2/common/MediaItem;

.field final synthetic val$track:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

    .line 1538
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;->this$0:Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;->val$item:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;->val$track:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object p4, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;->val$data:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerCb;I)V
    .locals 3
    .param p1, "callback"    # Landroidx/media2/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1541
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;->val$item:Landroidx/media2/common/MediaItem;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;->val$track:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$15;->val$data:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/media2/session/MediaSession$ControllerCb;->onSubtitleData(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    .line 1542
    return-void
.end method
