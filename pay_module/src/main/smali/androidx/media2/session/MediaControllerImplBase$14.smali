.class Landroidx/media2/session/MediaControllerImplBase$14;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 422
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$14;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$14;->val$mediaId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplBase$14;->val$extras:Landroid/os/Bundle;

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

    .line 425
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$14;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$14;->val$mediaId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$14;->val$extras:Landroid/os/Bundle;

    invoke-interface {p1, v0, p2, v1, v2}, Landroidx/media2/session/IMediaSession;->prepareFromMediaId(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 426
    return-void
.end method
