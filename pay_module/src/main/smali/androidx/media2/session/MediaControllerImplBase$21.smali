.class Landroidx/media2/session/MediaControllerImplBase$21;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->sendCustomCommand(Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroidx/media2/session/SessionCommand;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 586
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$21;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$21;->val$command:Landroidx/media2/session/SessionCommand;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplBase$21;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/IMediaSession;I)V
    .locals 3
    .param p1, "iSession"    # Landroidx/media2/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$21;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$21;->val$command:Landroidx/media2/session/SessionCommand;

    .line 590
    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$21;->val$args:Landroid/os/Bundle;

    .line 589
    invoke-interface {p1, v0, p2, v1, v2}, Landroidx/media2/session/IMediaSession;->onCustomCommand(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V

    .line 591
    return-void
.end method
