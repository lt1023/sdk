.class Landroidx/media2/session/MediaBrowserImplBase$1;
.super Ljava/lang/Object;
.source "MediaBrowserImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaBrowserImplBase;->getLibraryRoot(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaBrowserImplBase;

.field final synthetic val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaBrowserImplBase;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaBrowserImplBase;

    .line 66
    iput-object p1, p0, Landroidx/media2/session/MediaBrowserImplBase$1;->this$0:Landroidx/media2/session/MediaBrowserImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaBrowserImplBase$1;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

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

    .line 69
    iget-object v0, p0, Landroidx/media2/session/MediaBrowserImplBase$1;->this$0:Landroidx/media2/session/MediaBrowserImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaBrowserImplBase;->mControllerStub:Landroidx/media2/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media2/session/MediaBrowserImplBase$1;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 70
    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    .line 69
    invoke-interface {p1, v0, p2, v1}, Landroidx/media2/session/IMediaSession;->getLibraryRoot(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 71
    return-void
.end method
