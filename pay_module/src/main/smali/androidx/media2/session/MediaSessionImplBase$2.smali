.class Landroidx/media2/session/MediaSessionImplBase$2;
.super Landroidx/media/VolumeProviderCompat;
.source "MediaSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase;->updatePlayer(Landroidx/media2/common/SessionPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;

.field final synthetic val$remotePlayer:Landroidx/media2/session/RemoteSessionPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;IIILandroidx/media2/session/RemoteSessionPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase;
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .line 292
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$2;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    iput-object p5, p0, Landroidx/media2/session/MediaSessionImplBase$2;->val$remotePlayer:Landroidx/media2/session/RemoteSessionPlayer;

    invoke-direct {p0, p2, p3, p4}, Landroidx/media/VolumeProviderCompat;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 300
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$2;->val$remotePlayer:Landroidx/media2/session/RemoteSessionPlayer;

    invoke-virtual {v0, p1}, Landroidx/media2/session/RemoteSessionPlayer;->adjustVolume(I)Ljava/util/concurrent/Future;

    .line 301
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 295
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$2;->val$remotePlayer:Landroidx/media2/session/RemoteSessionPlayer;

    invoke-virtual {v0, p1}, Landroidx/media2/session/RemoteSessionPlayer;->setVolume(I)Ljava/util/concurrent/Future;

    .line 296
    return-void
.end method
