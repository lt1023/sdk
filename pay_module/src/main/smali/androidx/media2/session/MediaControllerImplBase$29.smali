.class Landroidx/media2/session/MediaControllerImplBase$29;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerImplBase$RemoteSessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->skipToNextItem()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 724
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$29;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/IMediaSession;I)V
    .locals 1
    .param p1, "iSession"    # Landroidx/media2/session/IMediaSession;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$29;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    invoke-interface {p1, v0, p2}, Landroidx/media2/session/IMediaSession;->skipToNextItem(Landroidx/media2/session/IMediaController;I)V

    .line 728
    return-void
.end method
