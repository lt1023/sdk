.class Landroidx/media2/session/MediaControllerStub$15;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onSubtitleData(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$data:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$item:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$track:Landroidx/versionedparcelable/ParcelImpl;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 272
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$15;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$15;->val$item:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerStub$15;->val$track:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p4, p0, Landroidx/media2/session/MediaControllerStub$15;->val$data:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 5
    .param p1, "controller"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 275
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$15;->val$item:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    .line 276
    .local v0, "itemObj":Landroidx/media2/common/MediaItem;
    if-nez v0, :cond_0

    .line 277
    const-string v1, "MediaControllerStub"

    const-string v2, "onSubtitleData(): Ignoring null MediaItem"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaControllerStub$15;->val$track:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 281
    .local v1, "trackObj":Landroidx/media2/common/SessionPlayer$TrackInfo;
    if-nez v1, :cond_1

    .line 282
    const-string v2, "MediaControllerStub"

    const-string v3, "onSubtitleData(): Ignoring null TrackInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Landroidx/media2/session/MediaControllerStub$15;->val$data:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/SubtitleData;

    .line 286
    .local v2, "dataObj":Landroidx/media2/common/SubtitleData;
    if-nez v2, :cond_2

    .line 287
    const-string v3, "MediaControllerStub"

    const-string v4, "onSubtitleData(): Ignoring null SubtitleData"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_2
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/session/MediaControllerImplBase;->notifySubtitleData(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    .line 291
    return-void
.end method
