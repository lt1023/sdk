.class Landroidx/media2/session/MediaControllerStub$23;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$BrowserTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onChildrenChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$itemCount:I

.field final synthetic val$libraryParams:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Ljava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 503
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$23;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$23;->val$parentId:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/session/MediaControllerStub$23;->val$itemCount:I

    iput-object p4, p0, Landroidx/media2/session/MediaControllerStub$23;->val$libraryParams:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaBrowserImplBase;)V
    .locals 3
    .param p1, "browser"    # Landroidx/media2/session/MediaBrowserImplBase;

    .line 506
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$23;->val$parentId:Ljava/lang/String;

    iget v1, p0, Landroidx/media2/session/MediaControllerStub$23;->val$itemCount:I

    iget-object v2, p0, Landroidx/media2/session/MediaControllerStub$23;->val$libraryParams:Landroidx/versionedparcelable/ParcelImpl;

    .line 507
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 506
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/session/MediaBrowserImplBase;->notifyChildrenChanged(Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    .line 508
    return-void
.end method
