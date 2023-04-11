.class Landroidx/media2/session/MediaControllerStub$7;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onPlaylistChanged(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$currentIdx:I

.field final synthetic val$listSlice:Landroidx/media2/common/ParcelImplListSlice;

.field final synthetic val$metadata:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$nextIdx:I

.field final synthetic val$previousIdx:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 151
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$7;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$7;->val$listSlice:Landroidx/media2/common/ParcelImplListSlice;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerStub$7;->val$metadata:Landroidx/versionedparcelable/ParcelImpl;

    iput p4, p0, Landroidx/media2/session/MediaControllerStub$7;->val$currentIdx:I

    iput p5, p0, Landroidx/media2/session/MediaControllerStub$7;->val$previousIdx:I

    iput p6, p0, Landroidx/media2/session/MediaControllerStub$7;->val$nextIdx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 7
    .param p1, "controller"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 154
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$7;->val$listSlice:Landroidx/media2/common/ParcelImplListSlice;

    .line 155
    invoke-static {v0}, Landroidx/media2/session/MediaUtils;->convertParcelImplListSliceToMediaItemList(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$7;->val$metadata:Landroidx/versionedparcelable/ParcelImpl;

    .line 157
    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/media2/common/MediaMetadata;

    iget v4, p0, Landroidx/media2/session/MediaControllerStub$7;->val$currentIdx:I

    iget v5, p0, Landroidx/media2/session/MediaControllerStub$7;->val$previousIdx:I

    iget v6, p0, Landroidx/media2/session/MediaControllerStub$7;->val$nextIdx:I

    .line 156
    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/session/MediaControllerImplBase;->notifyPlaylistChanges(Ljava/util/List;Landroidx/media2/common/MediaMetadata;III)V

    .line 159
    return-void
.end method
