.class Landroidx/media2/session/MediaControllerImplBase$23;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->setMediaItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 617
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$23;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$23;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/IMediaSession;I)V
    .locals 2
    .param p1, "iSession"    # Landroidx/media2/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$23;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$23;->val$mediaId:Ljava/lang/String;

    invoke-interface {p1, v0, p2, v1}, Landroidx/media2/session/IMediaSession;->setMediaItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    .line 621
    return-void
.end method
