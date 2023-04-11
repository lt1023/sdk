.class Landroidx/media2/session/MediaControllerImplBase$27;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->replacePlaylistItem(ILjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$index:I

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 672
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$27;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput p2, p0, Landroidx/media2/session/MediaControllerImplBase$27;->val$index:I

    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplBase$27;->val$mediaId:Ljava/lang/String;

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

    .line 675
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$27;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    iget v1, p0, Landroidx/media2/session/MediaControllerImplBase$27;->val$index:I

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$27;->val$mediaId:Ljava/lang/String;

    invoke-interface {p1, v0, p2, v1, v2}, Landroidx/media2/session/IMediaSession;->replacePlaylistItem(Landroidx/media2/session/IMediaController;IILjava/lang/String;)V

    .line 676
    return-void
.end method
