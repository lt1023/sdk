.class Landroidx/media2/session/MediaBrowserImplBase$5;
.super Ljava/lang/Object;
.source "MediaBrowserImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaBrowserImplBase;->getItem(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaBrowserImplBase;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplBase;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaBrowserImplBase;

    .line 115
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplBase$5;->this$0:Landroidx/media2/session/MediaBrowserImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaBrowserImplBase$5;->val$mediaId:Ljava/lang/String;

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

    .line 118
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplBase$5;->this$0:Landroidx/media2/session/MediaBrowserImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplBase$5;->val$mediaId:Ljava/lang/String;

    invoke-interface {p1, v0, p2, v1}, Landroidx/media2/session/IMediaSession;->getItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    .line 119
    return-void
.end method
