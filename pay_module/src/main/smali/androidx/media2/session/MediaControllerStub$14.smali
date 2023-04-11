.class Landroidx/media2/session/MediaControllerStub$14;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onVideoSizeChanged(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$item:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$videoSize:Landroidx/versionedparcelable/ParcelImpl;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 248
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$14;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$14;->val$item:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerStub$14;->val$videoSize:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 251
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$14;->val$item:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    .line 252
    .local v0, "itemObj":Landroidx/media2/common/MediaItem;
    if-nez v0, :cond_0

    .line 253
    const-string v1, "MediaControllerStub"

    const-string v2, "onVideoSizeChanged(): Ignoring null MediaItem"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$14;->val$videoSize:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/VideoSize;

    .line 257
    .local v1, "size":Landroidx/media2/common/VideoSize;
    if-nez v1, :cond_1

    .line 258
    const-string v2, "MediaControllerStub"

    const-string v3, "onVideoSizeChanged(): Ignoring null VideoSize"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroidx/media2/session/MediaControllerImplBase;->notifyVideoSizeChanged(Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    .line 262
    return-void
.end method
