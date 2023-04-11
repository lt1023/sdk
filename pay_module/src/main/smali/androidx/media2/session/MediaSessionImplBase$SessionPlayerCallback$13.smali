.class Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$13;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;->onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

.field final synthetic val$trackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

    .line 1516
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$13;->this$0:Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$13;->val$trackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerCb;I)V
    .locals 1
    .param p1, "callback"    # Landroidx/media2/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$SessionPlayerCallback$13;->val$trackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, p2, v0}, Landroidx/media2/session/MediaSession$ControllerCb;->onTrackSelected(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 1520
    return-void
.end method
