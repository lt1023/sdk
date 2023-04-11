.class Landroidx/media2/session/MediaControllerStub$2;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$BrowserTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onLibraryResult(ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$libraryResult:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 74
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$2;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$2;->val$libraryResult:Landroidx/versionedparcelable/ParcelImpl;

    iput p3, p0, Landroidx/media2/session/MediaControllerStub$2;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaBrowserImplBase;)V
    .locals 3
    .param p1, "browser"    # Landroidx/media2/session/MediaBrowserImplBase;

    .line 77
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$2;->val$libraryResult:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/LibraryResult;

    .line 78
    .local v0, "result":Landroidx/media2/session/LibraryResult;
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$2;->this$0:Landroidx/media2/session/MediaControllerStub;

    iget-object v1, v1, Landroidx/media2/session/MediaControllerStub;->mSequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    iget v2, p0, Landroidx/media2/session/MediaControllerStub$2;->val$seq:I

    invoke-virtual {v1, v2, v0}, Landroidx/media2/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    .line 82
    return-void
.end method
